<?php

include_once('db.php');


$pib = $_POST['pib']; $gr = $_POST['gr'];

$sql = "INSERT INTO students (id, pib, group_id) VALUES (NULL, '$pib', '$gr')";

if($mysqli->query($sql)){
    echo "Рядок вставлено успішно";
    }
else
    {
        echo "Error" . $sql . "<br/>" . $mysqli->error;
    }


include_once("showStudents.php");

?>