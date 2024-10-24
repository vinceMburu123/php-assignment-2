<?php
$servername = "localhost"; 
$username = "root";
$password = ""; 
$dbname = "campaign_feedback"; 

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
//echo  //"Connected successfully" 

// Check if form data is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST['name']) && isset($_POST['email']) && isset($_POST['feedback']) && isset($_POST['rating'])) {
        $name = $_POST['name'];
        $email = $_POST['email'];
        $feedback = $_POST['feedback'];
        $rating = $_POST['rating'];

        // Insert data into feedback table
        $sql = "INSERT INTO feedback (name, email, feedback, rating) 
                VALUES ('$name', '$email', '$feedback', '$rating')";

        if ($conn->query($sql) === TRUE) {
            echo "New record created successfully !!";
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    } else {
        echo "Please fill in all required fields.";
    }
}

// Close the connection
$conn->close();
?>
