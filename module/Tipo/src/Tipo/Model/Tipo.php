<?php
namespace Tipo\Model;

class Tipo
{
    public $id;
    public $nombre;

    public function exchangeArray($data)
    {
        $this->id     = (!empty($data['id'])) ? $data['id'] : null;
        $this->nombre = (!empty($data['nombre'])) ? $data['nombre'] : null;
    }
}