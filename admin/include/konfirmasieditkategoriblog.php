<?php
    if(isset($_SESSION['id_kategori_blog'])) {
    $id_kategori_blog =  $_SESSION['id_kategori_blog'];
    $kategori_blog = $_POST['kategori_blog'];

        if(empty($kategori_blog)){
            header("Location:index.php?include=edit-kategori-blogdata=".$id_kategori_blog."&notif=editkosong&jenis=kategoriblog");
        }else {
            $sql = "UPDATE `kategori_blog` SET `kategori_blog`='$kategori_blog' WHERE id_kategori_blog='$id_kategori_blog'";

            mysqli_query($koneksi,$sql);
            unset($_SESSION['id_kategori_blog']);
            header("Location:index.php?include=kategori-blog&notif=editberhasil");

        }

    }



?>