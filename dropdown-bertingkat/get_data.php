<?php
require 'koneksi.php';

$type = $_GET['type'];

if ($type === 'jurusan') {
    $kelas = $_GET['kelas'];
    $result = query("SELECT DISTINCT j.kodejurusan, j.nama 
                     FROM siswa s 
                     JOIN jurusan j ON s.kodejurusan = j.kodejurusan 
                     WHERE s.kelas = '$kelas' AND s.onview AND j.onview");
    echo json_encode($result['data']);
}

if ($type === 'indeks') {
    $kelas = $_GET['kelas'];
    $kodejurusan = $_GET['kodejurusan'];
    $result = query("SELECT DISTINCT indeks 
                     FROM siswa 
                     WHERE kelas = '$kelas' AND kodejurusan = '$kodejurusan' AND onview");
    echo json_encode($result['data']);
}

if ($type === 'nama') {
    $kelas = $_GET['kelas'];
    $kodejurusan = $_GET['kodejurusan'];
    $indeks = $_GET['indeks'];
    $result = query("SELECT nama FROM siswa 
                     WHERE kelas = '$kelas' AND kodejurusan = '$kodejurusan' AND indeks = '$indeks' AND onview
                     ORDER BY nama");
    echo json_encode($result['data']);
}
?>
