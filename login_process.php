<?php
 session_start();
 //open connection to mysql db
    $connection = mysqli_connect("localhost","fanclwpc_admin","taf1793one","fanclwpc_pickem") or die("Error " . mysqli_error($connection));

 if(isset($_POST['btn-login']))
 {
 //variables
 $uName = $_POST['user_name'];
$pWord = $_POST['password'];

$qry = "SELECT * FROM USERS WHERE NAME ='$uName' AND PASSWORD ='$pWord'";
$result = mysqli_query($connection, $qry) or die("Error in Selecting " . mysqli_error($connection));

$res = mysqli_query($connection, $qry) or die("Error in Selecting " . mysqli_error($connection));
$num_row = mysqli_num_rows($res);
$row=mysqli_fetch_assoc($res);


if( $num_row > 0 ) {
	echo 'ok';
	$_SESSION['uName'] = $uName;
}
else{
    
    echo "Username or password is incorrect"; // wrong details
   }
    
  }
  //close the db connection
    mysqli_close($connection);

?>