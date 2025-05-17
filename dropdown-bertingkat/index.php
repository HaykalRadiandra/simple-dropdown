<?php require 'koneksi.php'; ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Dropdown Bertingkat</title>
    <link rel="stylesheet" href="./library/css/bootstrap.min.css">
    <link rel="stylesheet" href="./library/css/select2.min.css" />
    <link rel="stylesheet" href="./library/css/select2-bootstrap-5-theme.min.css" />
</head>
<body>
    <div class="container mt-5">
        <h3 class="mb-4 text-center">Cascading Dropdown: Kelas → Jurusan → Indeks → Nama</h3>
        <div class="row g-3 shadow p-3 mt-1">
            <div class="col-md-3 m-0 p-0">
                <select id="kelas" class="form-select">
                    <option selected disabled>Pilih Kelas</option>
                    <?php 
                    $kelas = query("SELECT DISTINCT kelas FROM siswa WHERE onview")['data'];
                    foreach ($kelas as $k) {
                        echo "<option value='{$k['kelas']}'>{$k['kelas']}</option>";
                    }
                    ?>
                </select>
            </div>
            <div class="col-md-3 m-0 p-0">
                <select id="jurusan" class="form-select select2">
                    <option selected disabled>Pilih Jurusan</option>
                </select>
            </div>
            <div class="col-md-3 m-0 p-0">
                <select id="indeks" class="form-select">
                    <option selected disabled>Pilih Indeks</option>
                </select>
            </div>
            <div class="col-md-3 m-0 p-0">
                <select id="nama" class="form-select select2">
                    <option selected disabled>Pilih Nama</option>
                </select>
            </div>
        </div>
    </div>

<script src="./library/js/jquery.min_v3.js"></script>
<script src="./library/js/bootstrap.bundle.min.js"></script>
<script src="./library/js/select2.min.js"></script>
<script>
$(document).ready(function() {
    $('.select2').select2({ theme: 'bootstrap-5' });

    $('#kelas').on('change', function() {
        const kelas = $(this).val();
        $.getJSON('get_data.php', { type: 'jurusan', kelas }, function(data) {
            let options = '<option selected disabled>Pilih Jurusan</option>';
            data.forEach(d => options += `<option value="${d.kodejurusan}">${d.nama}</option>`);
            $('#jurusan').html(options).trigger('change');
            $('#indeks').html('<option selected disabled>Pilih Indeks</option>');
            $('#nama').html('<option selected disabled>Pilih Nama</option>');
        });
    });

    $('#jurusan').on('change', function() {
        const kelas = $('#kelas').val();
        const kodejurusan = $(this).val();
        $.getJSON('get_data.php', { type: 'indeks', kelas, kodejurusan }, function(data) {
            let options = '<option selected disabled>Pilih Indeks</option>';
            data.forEach(d => options += `<option value="${d.indeks}">${d.indeks}</option>`);
            $('#indeks').html(options);
            $('#nama').html('<option selected disabled>Pilih Nama</option>');
        });
    });

    $('#indeks').on('change', function() {
        const kelas = $('#kelas').val();
        const kodejurusan = $('#jurusan').val();
        const indeks = $(this).val();
        $.getJSON('get_data.php', { type: 'nama', kelas, kodejurusan, indeks }, function(data) {
            let options = '<option selected disabled>Pilih Nama</option>';
            data.forEach(d => options += `<option value="${d.nama}">${d.nama}</option>`);
            $('#nama').html(options);
        });
    });
});
</script>
</body>
</html>
