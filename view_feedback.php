<?php
// Step 2: Connect to the campaign_feedback database
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "campaign_feedback";

$conn = new mysqli($servername, $username, $password, $dbname);

// Step 6: Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Step 3: Write SQL query to retrieve all records from the feedback table
$sql = "SELECT * FROM feedback";
$result = $conn->query($sql);
?>





