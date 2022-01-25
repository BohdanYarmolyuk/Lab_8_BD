<?php

include_once('db.php');



$id = $_POST['id'];

$sql = "DELETE FROM students WHERE group_id='$id'";

if($mysqli->query($sql)){
    echo "Рядок змінено успішно";
    }
else
    {
        echo "Error" . $sql . "<br/>" . $mysqli->error;
    }


include_once("showStudents.php");
?>