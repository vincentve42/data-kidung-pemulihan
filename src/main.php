<?php 

include("object.php");
include('object2.php');
include("database.php");

use Pemulihan\Suplemen;
use Kidung\Kidung;

getData(1,$conn, $connz);

// Get All Data
function getData($id, $conn, $connz) {

    if($id == 0)
    {
        $listObject = [];

        $query = "SELECT * from suplemen";

        $result = $conn->query($query); 

        while ($row = $result->fetch_assoc()) {
            $judul_baru = explode("\n", $row["isi"],3);
            $listObject[] = new Suplemen($row['judul'],$judul_baru[0], $judul_baru[2]);
            
        }
        
        
    }
    else if($id == 1)
    {
        $listObject = [];

        $query = "SELECT * FROM kidung";

        $hasil = $conn->query($query);

        while($row = $hasil->fetch_assoc())
        {
            $isi = explode("\n", $row['isi'],3);
            printf("%s", $isi[2]);
            $listObject[] = new Kidung($row["judul"], $isi[0],  $isi[2]);

            
        }

       
    }
    modifyData($id, $conn, $listObject, $connz);
    
}
function modifyData($id, $conn, $listObject, $connz) {
    if($id == 0)
    {
        

        foreach($listObject as $object)
        {
            $stmt = $connz->prepare("INSERT INTO suplemen (no_kidung, judul, isi) VALUES(?, ?,?)");
            $stmt_update = $connz->prepare("UPDATE suplemen SET judul = ?, isi = ? WHERE no_kidung = ?");
            $stmt_check = $connz->prepare("SELECT * from suplemen WHERE no_kidung=?");
            $stmt_check->bind_param("s", $object->no_kidung);
            
            $stmt_check->execute();
            $result = $stmt_check->get_result();
            if($result->num_rows > 0)
             {
                 $stmt_update->bind_param(
                "sss",
                $object->judul,
                $object->isi,
                $object->no_kidung);

                $stmt_update->execute();
                $stmt_update->close();
            }
            else
            {
                $stmt->bind_param(
                "sss",
                $object->no_kidung,
                $object->judul,
                $object->isi);

                $stmt->execute();
                $stmt->close();
            }
        }
       
            
    }
    else if($id == 1)
    {
        

        foreach($listObject as $object)
        {
            $stmt = $connz->prepare("INSERT INTO kidung (no_kidung, judul, isi) VALUES(?, ?,?)");
            $stmt_update = $connz->prepare("UPDATE kidung SET judul = ?, isi = ? WHERE no_kidung = ?");
            $stmt_check = $connz->prepare("SELECT * from kidung WHERE no_kidung=?");
            $stmt_check->bind_param("s", $object->no_kidung);
            
            $stmt_check->execute();
            $result = $stmt_check->get_result();
            if($result->num_rows > 0)
             {
                 $stmt_update->bind_param(
                "sss",
                $object->judul,
                $object->isi,
                $object->no_kidung);

                $stmt_update->execute();
                $stmt_update->close();
            }
            else
            {
                $stmt->bind_param(
                "sss",
                $object->no_kidung,
                $object->judul,
                $object->isi);

                $stmt->execute();
                $stmt->close();
            }
        }
       
            
    }
}

?>