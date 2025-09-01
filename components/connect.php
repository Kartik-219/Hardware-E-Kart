<?php
$host = 'localhost';
$db   = 'shop_db';
$user = 'root';
$pass = '';
$port = 3307; // change to 3307 if you’re using a custom port

try {
   $conn = new PDO("mysql:host=$host;port=$port;dbname=$db", $user, $pass);
   $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
   // echo "Connected successfully";
} catch (PDOException $e) {
   die("Connection failed: " . $e->getMessage());
}
?>
