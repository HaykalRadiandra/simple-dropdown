<?php
$conn = mysqli_connect("localhost:3308", "root", "", "dbspeakout");
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

function query($query){
    global $conn;
    $result = mysqli_query($conn, $query);
    $num_rows = mysqli_num_rows($result);
    $rows = [];

    if ($num_rows > 0){
        while ($row = mysqli_fetch_assoc($result)){
            $rows[] = $row;
        }
    }

    return [
        'data' => $rows,
        'num_rows' => $num_rows
    ];
}
?>
