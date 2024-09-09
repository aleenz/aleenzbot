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

$str = str_replace('"','\"', $_POST["fact"]) ;


$sql = "INSERT INTO bird_fact (fact)
VALUES ('". $str ."')";

if ($conn->query($sql) === TRUE) {
    $conn->close();
  echo "<script>alert('New record created successfully')
  window.location.href='/birdfact'</script>";

   
 

   
} else {
    $conn->close();
  echo "<script>alert('Error: " . $sql . "<br>" . $conn->error . "')
  window.location.href='/birdfact'</script>";
 



}


?> 