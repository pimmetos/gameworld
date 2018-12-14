<!doctype html>

<html lang="en">
<head>
    <meta charset="utf-8">
    <title>games</title>
    <meta name="description" content="Games">
    <meta name="author" content="games">
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<?php
include "./php/header.php";
?>
<div class="wrapper">
    <div class="containerContactForm">
        <form method="POST">
            <label for="name">Name</label>
            <input type="text" id="name" placeholder="Your name" name="name">


            <label for="email">E-mail</label>
            <input type="text" id="email" placeholder="Your E-mail" name="email">


            <label for="subject">Subject</label>
            <input type="text" id="subject" name="subject">

            <label for="message">Message</label>
            <textarea id="message" name="message" style="height: 200px"> </textarea>

            <input type="submit" value="Submit">
        </form>
    </div>
</div>
<?php
include "footer.html";
$toMailAddress = "skinniks@hotmail.com";
$subjectMail = $_POST["subject"];
$messageMail = $_POST["message"];
$headerMail = "no-reply@pimvanberlo.nl";
mail($toMailAddress, $subjectMail,$messageMail, $headerMail)
?>
</body>
</html>
