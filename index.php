<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="description" content="Elite games. - Enjoy The Greatest Games">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <title>Game World</title>
</head>
<body>
<?php
include "./php/header.php";
?>
<div class="wrapper">
    <div class="homePageBanner">
        <img class="homePagePicture" src="pictures/eliteGames.jpg">
        <div class="title">
            <h1>Welcome to elite games!</h1>
            <h2>For all the elite buyers.</h2>
        </div>
    </div>
    <?php
    include "./php/databaseConnection.php";

    $sql = "SELECT * FROM gamecategory";
    $result = $conn->query($sql);
    echo "<div class='gameCategoriesContainer'>";
    if ($result->num_rows > 0) {
        // output data of each row
        while ($row = $result->fetch_assoc()) {
            echo "<div class='gameCategory'>";
            echo "<a href='games.php?gamePlatform=" . $row["id"] . "'>";
            echo "<img class='categoryImage' src='pictures/" . $row["categoryImage"] . "'>" . "<br>";
            echo "</a>";
            echo "</div>";
        }
    } else {
        echo "0 results";
    }
    echo "</div>";
    $conn->close();

    echo "</div>";
    include "footer.html"
    ?>

</body>
</html>
