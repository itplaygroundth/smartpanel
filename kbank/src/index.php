<?php
require_once("KasikornBank.class.php");

// $account = "016-3-14943-5"; //หมายเลขบัญชี
// $username = "xxxxxxxxxxxxxxx"; // Username
// $password = "xxxxxxxxxxxxxxxxxx"; // Password
$account = "067-3-48660-6"; //หมายเลขบัญชี
$username = "tsk002"; // Username
$password = "116688Za"; // 

 
$kbank = new KasikornBank($username, $password, "./cookie.txt");

if(!$kbank->CheckSession()){
   $kbank->Login();
   }
   
	
// if (!$kbank->CheckSession()) {
	
	
// }
// Get Today's Statement.
echo "<h1>KBANK</h1>";
echo "<pre>";
print_r($kbank->GetTodayStatement($account));
echo "</pre>";

