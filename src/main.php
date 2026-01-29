<?php 

include("object.php");
include("database.php");

use Pemulihan\Suplemen;

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
    
}
function modifyData($id, $conn, $listObject, $connz) {
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
?>