<?php 
namespace Pemulihan;
class Suplemen{
    public $no_kidung;
    public $judul;
    public $isi;
    public function __construct(int $no,string $judul, string $lagu){
        $this->judul = $judul;
        $this->no_kidung = $no;
        $this->isi = $lagu;
    }
    public function __destroy()
    {
        $this->judul = null;
        $this->isi = null;
        $this->no_kidung = null;
    }
}

?>