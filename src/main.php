<?php 

include("object.php");
include("database.php");

use Pemulihan\Suplemen;
use Kidung\Kidung;

getData(0,$conn, $connz);

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
        
        modifyData($id, $conn, $listObject, $connz);
    }
    else if($id == 1)
    {
        $listObject = [];

        $query = "SELECT * FROM kidung";

        $hasil = $conn->query($query);

        while($row = $hasil->fetch_assoc())
        {
            $isi = explode('\n', $row['isi'],4);
            
            $listObject[] = new Kidung($isi[0], $isi[2], $isi[1], $isi[3]);

            
        }
    }
    
}
function modifyData($id, $conn, $listObject, $connz) {
    if($id == 0)
    {
        foreach($listObject as $object)
        {
        $stmt = $connz->prepare("INSERT INTO suplemen (no_kidung, judul, isi) VALUES(?, ?,?)");

        $stmt->bind_param(
            "sss",
            $object->no_kidung,
            $object->judul,
            $object->isi);

            $stmt->execute();
            $stmt->close();
        }
    }
    else if($id == 1)
    {
        foreach($listObject as $object)
        {
            $stmt = $connz->prepare("INSERT INTO kidung (no_kidung, chord, judul, isi) VALUES(?, ?,?)");

            $stmt->bind_param(
                "ssss",
                $object->no_kidung,
                $object->chord,
                $object->judul,
                $object->isi);

                $stmt->execute();
                $stmt->close();
            }
    }
}
?>