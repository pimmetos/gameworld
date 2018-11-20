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
include "header.html";
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "gameworld";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM games";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while ($row = $result->fetch_assoc()) {
        echo "<div class='gameContainer'>";
        echo "<div class='gameName'>";
        echo $row["gameName"] . "<br>";
        echo "</div>";
        echo "<div class='gamePrice'>";
        echo $row["gamePrice"] . "<br>";
        echo "</div>";
        echo "<img class='gameImage' src='pictures/". $row["gameImage"] ."'>". "<br>";
        echo "</div>";
    }
} else {
    echo "0 results";
}
$conn->close();
?>
<?php
include "footer.html";
?>
</body>
</html>
