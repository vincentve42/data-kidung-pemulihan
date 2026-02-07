<?php 


namespace Kidung;

class Kidung{
    public $no_kidung;
    public $judul;
    public $chord;
    public $isi;

    public function __construct($no,$judul_kidung,$chord_kidung,$isi_kidung)
    {
        $this->judul = $judul_kidung;
        $this->no_kidung = $no;
        $this->chord = $chord_kidung;
        $this->isi = $isi_kidung;

    }
    public function __destruct()
    {
        $this->no_kidung = NULL;
        $this->chord = NULL;
        $this->isi = NULL;
        $this->judul = NULL;
    }
}

?>