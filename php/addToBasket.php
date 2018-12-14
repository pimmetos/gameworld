<?php
session_start();
if (isset($_GET["gameId"])) {
    if (isset($_SESSION["basket"])) {
        if (isset($_SESSION["basket"][$_GET["gameId"]])) {
            $_SESSION["basket"][$_GET["gameId"]] = ["amount" => $_SESSION["basket"][$_GET["gameId"]]["amount"] + 1];
        } else {
            $_SESSION["basket"][$_GET["gameId"]] = ["amount" => 1];
        }
    } else {
        //Maak basket
        $_SESSION["basket"] = [];
        $_SESSION["basket"][$_GET["gameId"]] = ["amount" => 1];
    }
}
var_dump($_SESSION["basket"]);
header("Location: ../basket.php");