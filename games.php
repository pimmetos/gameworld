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
include "./php/databaseConnection.php";
$sql = "SELECT * FROM games";
if (isset($_GET["gamePlatform"])) {
    $sql = "SELECT * FROM games WHERE gamePlatform = " . $_GET["gamePlatform"];
}
$result = $conn->query($sql);
echo "<div class='gameListContainer'>";
if ($result->num_rows > 0) {
    // output data of each row
    while ($row = $result->fetch_assoc()) {
        echo "<div class='gameContainer'>";
        echo "<img class='gameImage' src='pictures/" . $row["gameImage"] . "'>";
        echo "<div class='gameNamePriceContainer'>";
        echo "<div class='gameName'>";
        echo $row["gameName"];
        echo "</div>";
        echo "<div class='gamePrice'>";
        echo "€" . $row["gamePrice"];
        echo "</div>";
//        echo "<div class='orderButton orderCategoryColor" . $row["gamePlatform"] . "'>";
        echo "<a class='orderButtonLink' href='php/addToBasket.php?gameId=" . $row["gameId"] . "'><div class='orderButton orderCategoryColor" . $row["gamePlatform"] . "'>Order</div></a>";
//        echo "</div>";
        echo "</div>";
        echo "</div>";
    }
} else {
    echo "0 results";
}
echo "</div>";
$conn->close();
?>
<?php
include "footer.html";
?>
</body>
</html>
