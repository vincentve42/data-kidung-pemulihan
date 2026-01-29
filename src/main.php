<?php 

include("object.php");
include("database.php");

use Pemulihan\Suplemen;

getData(0,$conn);

// Get All Data
function getData($id, $conn) {

    if($id == 0)
    {
        $listObject = [];

        $query = "SELECT * from suplemen";

        $result = $conn->query($query); 

        while ($row = $result->fetch_assoc()) {
            $judul_baru = explode("\n", $row["isi"],3);
            $listObject[] = new Suplemen($judul_baru[0], $judul_baru[2]);
            printf("%s\n",$judul_baru[0]);
        }
        
        modifyData($id, $conn, $listObject);
    }
    
}
function modifyData($id, $conn, $listObject) {
    foreach($listObject as $object)
    {
       
    }

}
?>