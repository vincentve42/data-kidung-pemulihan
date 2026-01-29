<?php 
namespace Pemulihan;
class Suplemen{
    public $no_kidung;
    public $judul;
    public $isi;
    public function __construct(string $nomor, string $lagu){
        $this->no_kidung = $nomor;
        $this->isi = $lagu;
    }
    public function __destroy()
    {
        $this->no_kidung = null;
        $this->isi = null;
    }
}

?>