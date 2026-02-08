<?php 


namespace Kidung;

class Kidung{
    public $no_kidung;
    public $judul;
    
    public $isi;

    public function __construct($no,$judul_kidung,$isi_kidung)
    {
        $this->judul = $judul_kidung;
        $this->no_kidung = $no;
        $this->isi = $isi_kidung;

    }
    public function __destruct()
    {
        $this->no_kidung = NULL;
        $this->isi = NULL;
        $this->judul = NULL;
    }
}

?>