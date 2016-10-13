<?php
    //open connection to mysql db
    $connection = mysqli_connect("localhost","fanclwpc_admin","taf1793one","fanclwpc_pickem") or die("Error " . mysqli_error($connection));

    //fetch table rows from mysql db
    $sql = "select * from GAMES where WEEK = 7 ORDER BY GAME_TIME ASC";
    $result = mysqli_query($connection, $sql) or die("Error in Selecting " . mysqli_error($connection));

    //create an array
    $emparray = array();
    while($row =mysqli_fetch_assoc($result))
    {
        $emparray[] = $row;
    }
    echo json_encode($emparray);

    //close the db connection
    mysqli_close($connection);
?>