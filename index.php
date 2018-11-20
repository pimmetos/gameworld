<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="description" content="Elite games. - Enjoy The Greatest Hits">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <title>Radio Gaga</title>
</head>
<body>
<?php
include "header.html";
?>
<div class="wrapper">
    <div class="homePageBanner">
        <img class="homePagePicture" src="pictures/eliteGames.jpg">
        <div class="title">
            <h1>Welcome to elite games!</h1>
            <h2>For all the elite buyers.</h2>
        </div>
    </div>
    <div class="gameCategoriesContainer">
        <div class="gameCategory" id="steam">
            <a href="index.php">
                <img src="pictures/logoSteam.png" alt="HTML tutorial"
                     style="width:200px;height:200px;border:0;border-radius:100%">
            </a>
        </div>
        <div class="gameCategory" id="playstation">
            <a href="index.php">
                <img src="pictures/logoPlaystation.png" alt="HTML tutorial"
                     style="width:200px;height:200px;border:0;border-radius:100%">
            </a>
        </div>
        <div class="gameCategory" id="xBox">
            <a href="index.php">
                <img src="pictures/logoXBox.svg" alt="HTML tutorial"
                     style="width:200px;height:200px;border:0;border-radius:100%;">
            </a>
        </div>
    </div>
</div>
<?php
include "footer.html"
?>
</body>
</html>
