<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "campaign_feedback";

$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Define the number of items per page
$limit = 10;

// Check if the current page is set, default to 1 if not
$page = isset($_GET['page']) ? (int)$_GET['page'] : 1;

// Calculate the starting record for the SQL query
$start = ($page - 1) * $limit;

// Query to fetch feedback records for the current page
$sql = "SELECT * FROM feedback LIMIT $start, $limit";
$result = $conn->query($sql);

// Query to get the total number of records
$total_sql = "SELECT COUNT(*) AS total FROM feedback";
$total_result = $conn->query($total_sql);
$total_records = $total_result->fetch_assoc()['total'];
$total_pages = ceil($total_records / $limit);
?>

<!DOCTYPE html>
<html>
<head>
    <title>Feedback Records</title>
</head>
<body>

<h2>Feedback Records</h2>

<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Feedback</th>
        <th>Rating</th>
    </tr>

    <?php
    // Display feedback records in table rows
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            echo "<tr>";
            echo "<td>" . $row['id'] . "</td>";
            echo "<td>" . $row['name'] . "</td>";
            echo "<td>" . $row['email'] . "</td>";
            echo "<td>" . $row['feedback'] . "</td>";
            echo "<td>" . $row['rating'] . "</td>";
            echo "</tr>";
        }
    } else {
        echo "<tr><td colspan='5'>No feedback found.</td></tr>";
    }
    ?>
</table>

<!-- Pagination Links -->
<div>
    <?php
    // Display previous page link if not on the first page
    if ($page > 1) {
        echo "<a href='?page=" . ($page - 1) . "'>Previous</a> ";
    }

    // Display page number links
    for ($i = 1; $i <= $total_pages; $i++) {
        if ($i == $page) {
            echo "<strong>$i</strong> ";
        } else {
            echo "<a href='?page=$i'>$i</a> ";
        }
    }

    // Display next page link if not on the last page
    if ($page < $total_pages) {
        echo "<a href='?page=" . ($page + 1) . "'>Next</a>";
    }
    ?>
</div>

</body>
</html>

<?php
// Close the database connection
$conn->close();
?>
