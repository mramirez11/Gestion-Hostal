<?php
$host="localhost";
$user="root";
$pass="";
$db="hostal";
$con = mysqli_connect($host, $user, $pass,$db);
// Check connection
if (!$con) {
 die("Connection failed: " . mysqli_connect_error());
}
