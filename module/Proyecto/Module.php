<?php
namespace Proyecto;
use Proyecto\Model\Proyecto;
use Proyecto\Model\ProyectoTable;
use Zend\Db\ResultSet\ResultSet;
use Zend\Db\TableGateway\TableGateway;

class Module
{
    // Add this method:
    public function getServiceConfig()
    {
        return array(
            'factories' => array(
                'Proyecto\Model\ProyectoTable' =>  function($sm) {
                    $tableGateway = $sm->get('ProyectoTableGateway');
                    $table = new ProyectoTable($tableGateway);
                    return $table;
                },
                'ProyectoTableGateway' => function ($sm) {
                    $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
                    $resultSetPrototype = new ResultSet();
                    $resultSetPrototype->setArrayObjectPrototype(new Proyecto());
                    return new TableGateway('proyecto', $dbAdapter, null, $resultSetPrototype);
                },
            ),
        );
    }

    public function getAutoloaderConfig()
    {
        return array(
            'Zend\Loader\ClassMapAutoloader' => array(
                __DIR__ . '/autoload_classmap.php',
            ),
            'Zend\Loader\StandardAutoloader' => array(
                'namespaces' => array(
                    __NAMESPACE__ => __DIR__ . '/src/' . __NAMESPACE__,
                ),
            ),
        );
    }

    public function getConfig()
    {
        return include __DIR__ . '/config/module.config.php';
    }
}