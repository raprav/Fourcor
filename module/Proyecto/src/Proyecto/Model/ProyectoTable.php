<?php
namespace Proyecto\Model;

use Zend\Db\ResultSet\ResultSet;
use Zend\Db\TableGateway\TableGateway;
use Zend\Db\Sql\Select;
use Zend\Paginator\Adapter\DbSelect;
use Zend\Paginator\Paginator;

class ProyectoTable
{
    protected $tableGateway;

    public function __construct(TableGateway $tableGateway)
    {
        $this->tableGateway = $tableGateway;
    }

    public function fetchAll($paginated=false)
    {
        if($paginated) {
            // create a new Select object for the table proyecto
            $select = new Select('proyecto');
            // create a new result set based on the Proyecto entity
            $resultSetPrototype = new ResultSet();
            $resultSetPrototype->setArrayObjectPrototype(new Proyecto());
            // create a new pagination adapter object
            $paginatorAdapter = new DbSelect(
                // our configured select object
                $select,
                // the adapter to run it against
                $this->tableGateway->getAdapter(),
                // the result set to hydrate
                $resultSetPrototype
            );
            $paginator = new Paginator($paginatorAdapter);
            return $paginator;
        }
        $resultSet = $this->tableGateway->select();
        return $resultSet;
    }

    public function getProyecto($id)
    {
        $id  = (int) $id;
        $rowset = $this->tableGateway->select(array('id' => $id));
        $row = $rowset->current();
        if (!$row) {
            throw new \Exception("Could not find row $id");
        }
        return $row;
    }

    public function getProyectoDe($dni)
    {
        $select = new \Zend\Db\Sql\Select ; 
        $select->from('proyecto'); 
        $select->join('trabaja_en', "proyecto.id = trabaja_en.idProyecto", array());
        $select->join('trabajador', "trabaja_en.dni = trabajador.dni", array());
        $select->where(array('trabajador.dni' => $dni));

        $resultSet = $this->tableGateway->selectWith($select); 
        
        return $resultSet->buffer();
    }

    public function saveProyecto(Proyecto $proyecto)
    {
        $data = array(
            'nombre'        => $proyecto->nombre,
            'descripcion'   => $proyecto->descripcion,
            'estado'        => $proyecto->estado,
        );

        $id = (int)$proyecto->id;
        if ($id == 0) {
            $this->tableGateway->insert($data);
        } else {
            if ($this->getProyecto($id)) {
                $this->tableGateway->update($data, array('id' => $id));
            } else {
                throw new \Exception('Form id does not exist');
            }
        }
    }

    public function deleteProyecto($id)
    {
        $this->tableGateway->delete(array('id' => $id));
    }

}