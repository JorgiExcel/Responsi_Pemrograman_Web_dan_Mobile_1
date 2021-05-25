<?php
include_once("koneksi.php");

$Id_Pesanan = $_POST['Id_Pesanan'];
$Id_Menu = $_POST['Id_Menu'];
$Jumlah_Pesanan = $_POST['Jumlah_Pesanan'];
$Total_Bayar = $_POST['Total_Bayar'];

$query = mysqli_query($koneksi,"INSERT INTO pesanan(Id_Pesanan, Id_Menu, Jumlah_Pesanan, Total_Bayar) 
VALUE ('$Id_Pesanan','$Id_Menu','$Jumlah_Pesanan','$Total_Bayar')");

header("location:index.php");
?>