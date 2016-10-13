<?php
    session_start();
    //open connection to mysql db
    $connection = mysqli_connect("localhost","fanclwpc_admin","taf1793one","fanclwpc_pickem") or die("Error " . mysqli_error($connection));
    $user = $_SESSION['uName'];

    //get logged in user ID
    $user_id = mysqli_query($connection, "SELECT ID FROM USERS WHERE NAME = '$user'")->fetch_object()->ID;
    $user_name = mysqli_query($connection, "SELECT ID FROM USERS WHERE NAME = '$user'")->fetch_object()->NAME;
    //echo "USER: " . $user_id;
    if (!$user_id) {
            die('Invalid query: ' . mysqli_error($connection));
        }

    $current_day = date("l");
    /*//TODO: select on PICKS where there's a record for a User_id and Game Id, if so, update, if not, insert
    //use prepare statement for insert query
    $st = mysqli_prepare($connection, 'INSERT INTO PICKS(GAMES, USER, PICKED_TEAM) VALUES(?, ?, ?)');

    //bind variables to insert query params
    mysqli_stmt_bind_param($st, 'iis', $game_Id, $user_id, $picked_Team);*/

    //decode json data from call
    $json = $_POST['my_json_data'];

    //remove added slashes as the quotes were escaped in the string
    $json_array = (stripslashes($json));

    //finally decode into a php associative array
    $json_decode = json_decode($json_array, true);
    $myArray = array();

    //loop array
    if(is_array($json_decode)){
            foreach($json_decode as $row){
                //get game picks details
                $game_Id = $row['ID'];
                $picked_Team = $row['Pick'];
                //insert key value pair into array for traversing later
                $myArray[$game_Id]=$picked_Team;
            }
    }
    else{
            echo 'Not an array';
        }
    $mailedFlag = true;
    $beforeNoon = false;
    if(strtotime(time()) < strtotime("noon")){
            $beforeNoon = true;
            //echo "It's before noon!";
        }
    foreach($myArray as $key => $value){
    //echo "KEY: " . $key, " VALUE: " . $value;
        $user_picks_before = mysqli_query($connection, "SELECT * FROM PICKS WHERE USER = '$user_id'");
        $row_cnt = mysqli_num_rows($user_picks_before);
        //echo $row_cnt;
        $result = mysqli_query($connection, "SELECT * FROM PICKS WHERE USER = '$user_id' AND GAMES = '$key'");
                    if($user_id == 5){
                        mysqli_query($connection, "UPDATE GAMES SET WINNING_TEAM = '$value' WHERE ID = '$key'");
                        for($x = 0; $x <=8; $x++){
                            mysqli_query($connection, "CALL calculateTotalCorrect('$x')");
                        }
                    }
                    elseif(mysqli_num_rows($result) > 0){
                        if($value){
                            if($current_day == "Saturday" && $beforeNoon == false){ //12p EST is cutoff on day of games
                                die("Picks have to be made before 12p EST!");
                            }
                            elseif($current_day == "Sunday"){
                                die("Picks are closed for the weekend!");
                            }
                            else{
                                mysqli_query($connection, "UPDATE PICKS SET PICKED_TEAM = '$value' WHERE USER = '$user_id' AND GAMES = '$key'");
                            }
                        }
                    }
                    else{
                        if($value){
                            if($current_day == "Saturday" && $beforeNoon == false){
                                die("Picks have to be made before 12p EST!");
                            }
                            elseif($current_day == "Sunday"){
                                die("Picks are closed for the weekend!");
                            }
                            else{
                                if(!$user_id){
                                    header("location: http://fancytechno.com/pickem");
                                }
                                else{
                                    mysqli_query($connection, "INSERT INTO PICKS (GAMES, USER, PICKED_TEAM) VALUES ('$key', '$user_id', '$value')");
                                    $user_picks_after = mysqli_query($connection, "SELECT * FROM PICKS WHERE USER = '$user_id'");
                                    $row_cnt_after = mysqli_num_rows($user_picks_after);
                                    if($row_cnt_after <= $row_cnt){
                                        die ("Your picks weren't submitted for user " . $user_id);
                                    }
                                }
                            }
                        }
                    }
    }

    if($user_id == 5){
        if($mailedFlag){
            echo "MAIL FLAG: " . $mailedFlag;
            $mailedFlag = false;
            mailResults($connection);

        }
    }

    function mailResults($connection){
        $to = "bowmanvmi@gmail.com, thfunderburk@gmail.com, acollins811@gmail.com, jagozep@gmail.com, priya.kolli87@gmail.com, jesscollins811@gmail.com, awgordy@gmail.com";
        $subject = "Pick'Em Weekly Results";

        // Always set content-type when sending HTML email
        $headers = "MIME-Version: 1.0" . "\r\n";
        $headers .= "Content-type:text/html;charset=UTF-8";

        $tbo_correct = mysqli_query($connection, "SELECT TOTAL_CORRECT FROM USERS WHERE ID = 1")->fetch_object()->TOTAL_CORRECT;
        $thom_correct = mysqli_query($connection, "SELECT TOTAL_CORRECT FROM USERS WHERE ID = 2")->fetch_object()->TOTAL_CORRECT;
        $andy_correct = mysqli_query($connection, "SELECT TOTAL_CORRECT FROM USERS WHERE ID = 3")->fetch_object()->TOTAL_CORRECT;
        $gordy_correct = mysqli_query($connection, "SELECT TOTAL_CORRECT FROM USERS WHERE ID = 4")->fetch_object()->TOTAL_CORRECT;
        $admin_correct = mysqli_query($connection, "SELECT TOTAL_CORRECT FROM USERS WHERE ID = 5")->fetch_object()->TOTAL_CORRECT;
        $priya_correct = mysqli_query($connection, "SELECT TOTAL_CORRECT FROM USERS WHERE ID = 6")->fetch_object()->TOTAL_CORRECT;
        $jessica_correct = mysqli_query($connection, "SELECT TOTAL_CORRECT FROM USERS WHERE ID = 7")->fetch_object()->TOTAL_CORRECT;
        $ashley_correct = mysqli_query($connection, "SELECT TOTAL_CORRECT FROM USERS WHERE ID = 8")->fetch_object()->TOTAL_CORRECT;

        $message = "
        <html>
        <body>
        <h2>Weekly Results</h2>
        /*<table>
        <tr>
        <th>Visiting Team</th>
        <th>Home Team</th>
        <th>Winning Team</th>
        </tr>
        foreach*/
        <table>
        <tr>
        <th>Player</th>
        <th>Total Correct</th>
        </tr>
        <tr>
            <td>andy</td>
            <td align='right'>$andy_correct</td>
        </tr>
        <tr>
            <td>gordy</td>
            <td align='right'>$gordy_correct</td>
        </tr>
        <tr>
            <td>thom</td>
            <td align='right'>$thom_correct</td>
        </tr>
        <tr>
            <td>tbo</td>
            <td align='right'>$tbo_correct</td>
        </tr>
        <tr>
            <td>priya</td>
            <td align='right'>$priya_correct</td>
        </tr>
        <tr>
            <td>jessica</td>
            <td align='right'>$jessica_correct</td>
        </tr>
        <tr>
            <td>ashley</td>
            <td align='right'>$ashley_correct</td>
        </tr>
        </table>
        </body>
        </html>
        ";

        mail($to,$subject,$message,$headers);
    }

    print_r($myArray);

    mysqli_close($connection);

?>