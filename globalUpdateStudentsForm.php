<html>
<head>
    <meta charset="utf-8">
    <meta name="keywords" content="Лабораторна робота, MySQL, з'єднання з базою даних">
    <meta name="description" content="Лабораторна робота. З'єднання з базою даних">
    <title>Заміна групи</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

    <?php
        include_once("showStudents.php");    
    ?>

<form action="globalUpdateStudents.php" method="post">
        <label>ID групи яку змінюємо</label><input name="id" type="text"><br>
        <label>Нове значення ID групи</label><input name="new_id" type="text"><br>
        <input type="submit" value="Змінити">
</form>

</body>
</html>