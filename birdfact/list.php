<?php
$servername = "localhost";
$username = "vangata";
$password = "3EiEvGyjF2obrYd1";
$dbname = "aleenzbot";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}



$sql = "SELECT * FROM bird_fact";





$result = $conn->query($sql);
$str = "<h2>List of Bird facts</h2>";
if ($result->num_rows > 0) {
    // output data of each row

    $str.= "<table border=1><tr><td>#</td><td>Fact</td></tr>";
    while($row = $result->fetch_assoc()) {
      $str.= '<tr><td>'.$row["id"].'</td><td>'.$row["fact"].'</td></tr>';
    }
    $str.="</table>";
  } else {
    $str .= "0 results";
  }
  $conn->close();


  echo $str;
?> 
