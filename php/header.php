<header id="header">
    <div id="logo"><a href="index.php">Elite games</a></div>
    <nav id="mainNav">
        <li>
        <li><a class="headerLines" href="index.php">Home</a></li>
        <li class="dropdown">
            <a class="dropLink headerLines" href="games.php">Games</a>
            <div class="dropdownContent">
                <?php
                include "./php/databaseConnection.php";

                $sql = "SELECT * FROM gamecategory";
                $result = $conn->query($sql);
                if ($result->num_rows > 0) {
                    // output data of each row
                    while ($row = $result->fetch_assoc()) {
                        echo "<a  href='games.php?gamePlatform=" . $row["id"] . "'>" . $row["gameCategory"] . "</a>";
                    }
                } else {
                    echo "0 results";
                }
                $conn->close();
                ?>
            </div>
        </li>
        <li><a class="headerLines" href="aboutUs.php">About us</a></li>
        <li><a class="headerLines" href="">Contact</a></li>
        <li><a id="basket" href="basket.php"><img id="basketIcon" src="pictures/shoppingCart.png" alt="Basket"
                                                  style="height: 30px; width: 30px; position: absolute;top: 29px;"> </a>
        </li>
        </ul>
    </nav>
</header>