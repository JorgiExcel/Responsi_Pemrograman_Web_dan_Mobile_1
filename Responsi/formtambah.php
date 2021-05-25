<!DOCTYPE html>
<html lang="en">
<head>
<style>
        body
        {
            background-image: url('Foto.jpeg');
            background-repeat: no-repeat;
            background-size: cover;
        }
</style>  
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Jumlah Pesanan</title>
</head>
<body>
    <h1 align='center'><font color='white'>Silahkan Masukan Jumlah Pesanan Anda</h1>
    <p>
        <form method="POST" action="simpandata.php">
            <table>
                <tr>
                    <td>Id Menu</td>
                    <td>
                        <input type="text" name="Id_Menu" size="20" required>
                    </td>
                </tr>
                <tr>
                    <td>Jumlah Pesanan</td>
                    <td>
                        <input type="number" name="Jumlah_Pesanan" size="20" required>
                    </td>
                </tr>
                <tr>
                    <td>Total Bayar Pesanan</td>
                    <td>
                        <input type="number" name="Total_Bayar" size="20" required>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Konfirmasi Pesanan"></td>
                </tr>
            </table>
        </form>
    </p>
</body>
</html>