<?php

include_once('db.php');



$id = $_POST['id'];
$newId = $_POST['new_id'];

$sql = "UPDATE students SET group_id='$newId' WHERE group_id='$id'";

if($mysqli->query($sql)){
    echo "Рядок змінено успішно";
    }
else
    {
        echo "Error" . $sql . "<br/>" . $mysqli->error;
    }




include_once("showStudents.php");
?>
