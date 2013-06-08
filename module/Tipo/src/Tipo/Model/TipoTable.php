<?php
namespace Tipo\Model;

use Zend\Db\TableGateway\TableGateway;

class TipoTable
{
    protected $tableGateway;

    public function __construct(TableGateway $tableGateway)
    {
        $this->tableGateway = $tableGateway;
    }

    public function fetchAll()
    {
        $resultSet = $this->tableGateway->select();
        return $resultSet->buffer();
    }

    public function getTipo($id)
    {
        $id  = $id;
        $rowset = $this->tableGateway->select(array('id' => $id));
        $row = $rowset->current();
        if (!$row) {
            throw new \Exception("Could not find row $id");
        }
        return $row;
    }

    public function saveTipo(Tipo $tipo)
    {
        $data = array(
            'nombre' => $tipo->nombre,
        );

        $id = (int)$tipo->id;
        if ($id == 0) {
            $this->tableGateway->insert($data);
        } else {
            if ($this->getTipo($id)) {
                $this->tableGateway->update($data, array('id' => $id));
            } else {
                throw new \Exception('Form id does not exist');
            }
        }
    }

    public function deleteTipo($id)
    {
        $this->tableGateway->delete(array('id' => $id));
    }
}