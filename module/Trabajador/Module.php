<?php
namespace Trabajador;

// Add these import statements:
use Trabajador\Model\Trabajador;
use Trabajador\Model\TrabajadorTable;
use Zend\Db\ResultSet\ResultSet;
use Zend\Db\TableGateway\TableGateway;

class Module
{
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

    // Add this method:
    public function getServiceConfig()
    {
        return array(
            'factories' => array(
                'Trabajador\Model\TrabajadorTable' =>  function($sm) {
                    $tableGateway = $sm->get('TrabajadorTableGateway');
                    $table = new TrabajadorTable($tableGateway);
                    return $table;
                },
                'TrabajadorTableGateway' => function ($sm) {
                    $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
                    $resultSetPrototype = new ResultSet();
                    $resultSetPrototype->setArrayObjectPrototype(new Trabajador());
                    return new TableGateway('trabajador', $dbAdapter, null, $resultSetPrototype);
                },
            ),
        );
    }
    public function getConfig()
    {
        return include __DIR__ . '/config/module.config.php';
    }
}