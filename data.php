<?php

require_once 'classes.php';

$publications = array();


$con = mysqli_connect("localhost", "root", "", "testsite2");
if (mysqli_connect_errno()){
    echo "ошибка подключения к базе данных ".mysqli_connect_error();
}

$result = mysqli_query($con, "SELECT * FROM publication");

while ($row = mysqli_fetch_array($result)){
    $publications[] = new $row['type']($row);
}

