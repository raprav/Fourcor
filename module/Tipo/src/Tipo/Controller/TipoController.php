<?php
namespace Tipo\Controller;

use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel;

class TipoController extends AbstractActionController
{
    protected $tipoTable;

    public function indexAction()
    {
        return new ViewModel(array(
            'tipos' => $this->getTipoTable()->fetchAll(),
        ));
    }

    public function getTipoTable()
    {
        if (!$this->tipoTable) {
            $sm = $this->getServiceLocator();
            $this->tipoTable = $sm->get('Tipo\Model\TipoTable');
        }
        return $this->tipoTable;
    }

}