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
$totalPrice = 0;
include "./php/header.php";
session_start();
include "./php/databaseConnection.php";
if (isset($_SESSION["basket"])) {

    ?>
    <div class="wrapper">
        <table id="basketList">
            <tr>
                <th>Image</th>
                <th>Product</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Subtotal</th>
                <th></th>
            </tr>
            <?php
            $getString = implode(",", array_keys($_SESSION["basket"]));
            $sql = "SELECT * FROM games WHERE gameId in(" . $getString . ")";
            $result = $conn->query($sql);
            if ($result->num_rows > 0) {
                // output data of each row
                while ($row = $result->fetch_assoc()) {
                    echo "<tr>";
                    echo "<td><img class='checkoutGameImage' src='pictures/" . $row["gameImage"] . "'></td>";
                    echo "<td>" . $row["gameName"] . "</td>";
                    echo "<td>€" . $row["gamePrice"] . "</td>";
                    echo "<td>1</td>";
                    echo "<td>€" . $row["gamePrice"] . "</td>";
                    echo "</tr>";
                    $totalPrice = $totalPrice + $row["gamePrice"];
                }
                echo "<tr class='tableFooter'>";
                echo "<td>Total</td>";
                echo "<td></td>";
                echo "<td></td>";
                echo "<td></td>";
                echo "<td>€" . $totalPrice . "</td>";
                echo "</tr>";
            } else {
                echo "<h1>  </h1>";
            }
            ?>
        </table>
    </div>
    <?php
    include "footer.html";
} else {
    echo "test";
}
?>
</body>
</html>