<?php 
// connect ke database 
$servername = "localhost:3308";
$username = "root";
$password = "";
$dbname = "dbspeakout";

$conn = mysqli_connect($servername, $username, $password, $dbname);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$sql = "SELECT kodejurusan,nama FROM jurusan WHERE onview != 0";
$result = mysqli_query($conn, $sql);
$num_rows = mysqli_num_rows($result);
$rows = [];

if ($num_rows > 0) {
    while ($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
    }
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./library/css/bootstrap.min.css">
    <link rel="stylesheet" href="./library/css/select2.min.css" />
	<link rel="stylesheet" href="./library/css/select2-bootstrap-5-theme.min.css" />
    <title>Simple Dropdown</title>
</head>
<body>
    <div class="container-fluid bg-body-secondary vh-100">
        <div class="container bg-body-tertiary w-100 vh-100 d-flex justify-content-center align-items-start">
            <div class="row w-75 p-3 shadow mt-5 rounded">
                <div class="W-100 text-center mb-4">
                    <h1>Simple Dropdown</h1>
                </div>
                <div class="header-filter d-flex w-100 gap-3">
                    <div class="col p-0">
                        <div class="dropdown">
                            <button class="btn btn-primary d-flex align-items-center justify-content-around dropdown-toggle w-100" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                <p class="d-inline-block mb-0">Pilih jurusan</p>
                            </button>
                            <ul class="dropdown-menu w-100">
                            <?php foreach ($rows as $row) { ?>
                                <li><a class="dropdown-item" href="#"><?= $row['nama'] ?></a></li> 
                            <?php } ?>
                            </ul>
                        </div>
                    </div>
                    <div class="col-4 p-0">
                        <select class="form-select select2" aria-label="Default select example">
                            <option selected>Pilih Jurusan</option>
                        <?php foreach ($rows as $row) { ?>
                            <option value="<?= $row['kodejurusan'] ?>"><?= $row['nama'] ?></option>
                        <?php } ?>
                        </select>
                    </div>
                    <div class="col-4 p-0">
                        <select class="form-select" aria-label="Default select example">
                            <option selected>Pilih Jurusan</option>
                        <?php foreach ($rows as $row) { ?>
                            <option value="<?= $row['kodejurusan'] ?>"><?= $row['nama'] ?></option>
                        <?php } ?>
                        </select>
                    </div>
                </div>
                <div class="tampildata"></div>
            </div>
        </div>
    </div>
</body>
<script src="./library/js/jquery.min_v3.js"></script>
<script src="./library/js/bootstrap.bundle.min.js"></script>
<script src="./library/js/select2.min.js"></script>
<script>
    $(document).ready(function() {
        $('.select2').select2({
            theme: 'bootstrap-5'
        });
    });
</script>
</html>