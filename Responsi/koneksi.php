<?php
$koneksi = mysqli_connect("localhost", "root", "", "warungmakan");
if($koneksi) {
    //echo "koneksi berhasil";
} else {
    echo "koneksi gagal";
}
?>