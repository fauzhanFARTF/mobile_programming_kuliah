<?php
    $nim=$_POST['nim'];
    $nama=$_POST['nama'];
    $jurusan=$_POST['jurusan'];
    $kon=mysqli_connect("localhost","root","", "dbakademik");
    $query=mysqli_query($kon,"insert into tbsiswa values ('$nim','$nama','$jurusan')");
?>