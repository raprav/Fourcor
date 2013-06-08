<?php
namespace Proyecto\Controller;

use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel;
use Proyecto\Model\Proyecto;   
use Proyecto\Form\ProyectoForm;  

class ProyectoController extends AbstractActionController
{
    protected $proyectoTable;

    public function indexAction()
    {
        // grab the paginator from the ProyectoTable
        $paginator = $this->getProyectoTable()->fetchAll(true);
        // set the current page to what has been passed in query string, or to 1 if none set
        $paginator->setCurrentPageNumber((int)$this->params()->fromQuery('page', 1));
        // set the number of items per page to 10
        $paginator->setItemCountPerPage(10);

        return new ViewModel(array(
            'paginator' => $paginator
        ));
    }

    public function addAction()
    {
        $form = new ProyectoForm();
        $form->get('submit')->setValue('Añadir');
        $form->get('estado')->setValueOptions(array("0" => "Cerrado", "1" => "Abierto"));

        $request = $this->getRequest();
        if ($request->isPost()) {
            $proyecto = new Proyecto();
            $form->setInputFilter($proyecto->getInputFilter());
            $form->setData($request->getPost());

            if ($form->isValid()) {
                $proyecto->exchangeArray($form->getData());
                $estado = $form->get('estado')->getValue();
                $proyecto->estado = ((($estado) == '0') ? '0' : '1');
                $this->getProyectoTable()->saveProyecto($proyecto);

                return $this->redirect()->toRoute('proyecto');
            }
        }
        return array('form' => $form);
    }

    public function editAction()
    {
        $id = (int) $this->params()->fromRoute('id', 0);
        if (!$id) {
            return $this->redirect()->toRoute('proyecto', array(
                'action' => 'add'
            ));
        }

        try {
            $proyecto = $this->getProyectoTable()->getProyecto($id);
        }
        catch (\Exception $ex) {
            return $this->redirect()->toRoute('proyecto', array(
                'action' => 'index'
            ));
        }

        $form  = new ProyectoForm();
        $form->bind($proyecto);
        $form->get('submit')->setAttribute('value', 'Editar');

        $request = $this->getRequest();
        if ($request->isPost()) {
            $form->setInputFilter($proyecto->getInputFilter());
            $form->setData($request->getPost());

            if ($form->isValid()) {
                $this->getProyectoTable()->saveProyecto($form->getData());

                return $this->redirect()->toRoute('proyecto');
            }
        }

        return array(
            'id' => $id,
            'form' => $form,
        );
    }

    public function deleteAction()
    {
        $id = $this->params()->fromRoute('id', 0);
        if (!$id) {
            return $this->redirect()->toRoute('proyecto');
        }

        $request = $this->getRequest();
        if ($request->isPost()) {
            $del = $request->getPost('del', 'No');

            if ($del != 'No') {
                $id = (int) $request->getPost('id');
                $this->getProyectoTable()->deleteProyecto($id);
            }

            return $this->redirect()->toRoute('proyecto');
        }

        return array(
            'id'    => $id,
            'proyecto' => $this->getProyectoTable()->getProyecto($id)
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
            'tipos'          => $this->getTipoTable()->fetchAll(),
            'proyecto'      => $this->getProyectoTable()->getProyecto($this->params()->fromRoute('id', 0)),
            'trabajadores'    => $this->getTrabajadorTable()->getTrabajadorDe($this->params()->fromRoute('id', 0)),
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