<?php
    $nim=$_POST['nim'];
    $nama=$_POST['nama'];
    $email=$_POST['email'];
    $hp=$_POST['hp'];
    $kon=mysqli_connect("localhost","root","", "dbakademik");
    $query=mysqli_query($kon,"insert into tbsiswa_uas values ('$nim','$nama','$email','$hp')");
?>