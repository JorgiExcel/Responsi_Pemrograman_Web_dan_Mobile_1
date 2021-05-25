<h1 align='center'><font color='white'>DAFTAR MENU</h1>
<style>
        body
        {
            background-image: url('Foto.jpeg');
            background-repeat: no-repeat;
            background-size: cover;
        }
        table
        {
          background-image: url('Menu3.jpg');  
          background-repeat: no-repeat;
          background-size: cover;
        }
</style>
<input type="button" value="Pesan Makanan" onclick="document.location='formtambah.php'">
<table align='center' width="70%" border="2">
<thead>
    <tr>
        
        <th width='80'>Nama Menu</th>
        <th width='80'>Harga</th>
        <th width='80'>Stok Makanan</th>
    </tr>
</thead>

<?php
include "koneksi.php";
$ambildata = mysqli_query($koneksi, "select * from menu");
while ($data = mysqli_fetch_array($ambildata)){
    echo"
    <tr>
        
        <td>$data[Nama_Menu]</td>
        <td>$data[Harga]</td>
        <td>$data[Stok_Tersedia]</td>
    </tr>";
    

}
?>
</table>
<h3></h3>