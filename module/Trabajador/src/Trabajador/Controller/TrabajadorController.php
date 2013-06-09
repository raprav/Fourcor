<?php
namespace Trabajador\Controller;

use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel;
use Application\modules\Tipo;
use Trabajador\Model\Trabajador;          // <-- Add this import
use Trabajador\Form\TrabajadorForm;       // <-- Add this import
use Tipo\Model\TipoTable;

class TrabajadorController extends AbstractActionController
{

    protected $trabajadorTable;
    protected $tipoTable;

    public function indexAction()
    {
        $paginator = $this->getTrabajadorTable()->fetchAll(true);
        $paginator->setCurrentPageNumber((int)$this->params()->fromQuery('page', 1));
        $paginator->setItemCountPerPage(10);

        return new ViewModel(array(
            'paginator' => $paginator,
            'tipos'         => $this->getTipoTable()->fetchAll(),
        ));
    }

    public function addAction()
    {
        $form = new TrabajadorForm();
        $form->get('submit')->setValue('Añadir');

        $request = $this->getRequest();
        if ($request->isPost()) {
            $trabajador = new Trabajador();
            $form->setInputFilter($trabajador->getInputFilter());
            $form->setData($request->getPost());

            if ($form->isValid()) {
                $trabajador->exchangeArray($form->getData());
                $this->getTrabajadorTable()->saveNewTrabajador($trabajador);

                return $this->redirect()->toRoute('trabajador');
            }
        }
        return array('form' => $form);
    }

    public function editAction()
    {
        $dni = $this->params()->fromRoute('dni', 0);
        if (!$dni) {
            return $this->redirect()->toRoute('trabajador', array(
                'action' => 'add'
            ));
        }

        try {
            $trabajador = $this->getTrabajadorTable()->getTrabajador($dni);
        }
        catch (\Exception $ex) {
            return $this->redirect()->toRoute('trabajador', array(
                'action' => 'index'
            ));
        }

        $form  = new TrabajadorForm();
        $form->bind($trabajador);
        $form->get('submit')->setAttribute('value', 'Editar');

        $request = $this->getRequest();
        if ($request->isPost()) {
            $form->setInputFilter($trabajador->getInputFilter());
            $form->setData($request->getPost());

            if ($form->isValid()) {
                $this->getTrabajadorTable()->saveTrabajador($form->getData());

                return $this->redirect()->toRoute('trabajador');
            }
        }

        return array(
            'dni' => $dni,
            'form' => $form,
        );
    }

    public function deleteAction()
    {
        $dni = $this->params()->fromRoute('dni', 0);
        if (!$dni) {
            return $this->redirect()->toRoute('trabajador');
        }

        $request = $this->getRequest();
        if ($request->isPost()) {
            $del = $request->getPost('del', 'No');

            if ($del != 'No') {
                $dni = $request->getPost('dni');
                $this->getTrabajadorTable()->deleteTrabajador($dni);
            }

            return $this->redirect()->toRoute('trabajador');
        }

        return array(
            'dni'    => $dni,
            'trabajador' => $this->getTrabajadorTable()->getTrabajador($dni)
        );
    }

    public function detalleAction()
    {
        $tipos = $this->getTipoTable()->fetchAll();
        $i = 0;
        foreach ($tipos as $tipo) :
            $array[$i] = $tipo->nombre;
            $i = $i+1;
        endforeach;    
        return new ViewModel(array(
            'trabajador'    => $this->getTrabajadorTable()->getTrabajador($this->params()->fromRoute('dni', 0)),
            'tipo'          => $array[$this->getTrabajadorTable()->getTrabajador($this->params()->fromRoute('dni', 0))->tipo],
            'proyectos'     => $this->getProyectoTable()->getProyectoDe($this->params()->fromRoute('dni', 0)),
        ));
    }

    //UTILIZAR REFERENCIAS EXTERNAS, CORREGIR SI HAY TIEMPO
    public function getTrabajadorTable()
    {
        if (!$this->trabajadorTable) {
            $sm = $this->getServiceLocator();
            $this->trabajadorTable = $sm->get('Trabajador\Model\TrabajadorTable');
        }
        return $this->trabajadorTable;
    }

    public function getTipoTable()
    {
        if (!$this->tipoTable) {
            $sm = $this->getServiceLocator();
            $this->tipoTable = $sm->get('Tipo\Model\TipoTable');
        }
        return $this->tipoTable;
    }

    public function getProyectoTable()
    {
        if (!$this->proyectoTable) {
            $sm = $this->getServiceLocator();
            $this->proyectoTable = $sm->get('Proyecto\Model\ProyectoTable');
        }
        return $this->proyectoTable;
    }

}