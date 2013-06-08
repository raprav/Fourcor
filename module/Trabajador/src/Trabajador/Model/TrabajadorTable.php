<?php
namespace Trabajador\Model;

use Zend\Db\ResultSet\ResultSet;
use Zend\Db\TableGateway\TableGateway;
use Zend\Db\Sql\Select;
use Zend\Paginator\Adapter\DbSelect;
use Zend\Paginator\Paginator;

class TrabajadorTable
{
    protected $tableGateway;

    public function __construct(TableGateway $tableGateway)
    {
        $this->tableGateway = $tableGateway;
    }

    public function fetchAll($paginated=false)
    {
        if($paginated) {
            $select = new Select('trabajador');

            $resultSetPrototype = new ResultSet();
            $resultSetPrototype->setArrayObjectPrototype(new Trabajador());

            $paginatorAdapter = new DbSelect(
                $select,
                $this->tableGateway->getAdapter(),
                $resultSetPrototype
            );
            $paginator = new Paginator($paginatorAdapter);
            return $paginator;
        }
        $resultSet = $this->tableGateway->select();
        return $resultSet;
    }

    public function getTrabajador($id)
    {
        $id  = $id;
        $rowset = $this->tableGateway->select(array('dni' => $id));
        $row = $rowset->current();
        if (!$row) {
            throw new \Exception("Could not find row $id");
        }
        return $row;
    }

   public function getTrabajadorDe($idProyecto)
    {
        $select = new \Zend\Db\Sql\Select ; 
        $select->from('trabajador'); 
        $select->join('trabaja_en', "trabajador.dni = trabaja_en.dni", array());
        $select->join('proyecto', "trabaja_en.idProyecto = proyecto.id", array());
        $select->where(array('proyecto.id' => $idProyecto));

        $resultSet = $this->tableGateway->selectWith($select); 
        
        return $resultSet->buffer();
    }

    public function saveNewTrabajador(Trabajador $trabajador)
    {
        $data = array(
            'dni' => $trabajador->dni,
            'nombre'  => $trabajador->nombre,
            'apellidos'  => $trabajador->apellidos,
            'tipo'  => $trabajador->tipo,
        );
        
        $this->tableGateway->insert($data);
    }

    public function saveTrabajador(Trabajador $trabajador)
    {
        $data = array(
            'dni' => $trabajador->dni,
            'nombre'  => $trabajador->nombre,
            'apellidos'  => $trabajador->apellidos,
            'tipo'  => $trabajador->tipo,
        );

        $dni = $trabajador->dni;
        
        if ($dni == 0) {
            $this->tableGateway->insert($data);
        } else {
            if ($this->getTrabajador($dni)) {
                $this->tableGateway->update($data, array('dni' => $dni));
            } else {
                throw new \Exception('Form dni does not exist');
            }
        }
    }

    public function deleteTrabajador($dni)
    {
        $this->tableGateway->delete(array('dni' => $dni));
    }
}