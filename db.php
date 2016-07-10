<?php

$dsn = 'mysql:host='.gethostbyname('mysql');
$usr = 'root';
$pwd = 'toor';

try {
    $dbh = new PDO($dsn, $usr, $pwd);
} catch (PDOException $e) {
    die('Connection has failed: ' . $e->getMessage());
}

echo 'Congrats! MYSQL connected successfully.';

