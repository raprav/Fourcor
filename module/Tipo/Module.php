<?php
namespace Tipo;

// Add these import statements:
use Tipo\Model\Tipo;
use Tipo\Model\TipoTable;
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

    public function getConfig()
    {
        return include __DIR__ . '/config/module.config.php';
    }

    // Add this method:
    public function getServiceConfig()
    {
        return array(
            'factories' => array(
                'Tipo\Model\TipoTable' =>  function($sm) {
                    $tableGateway = $sm->get('TipoTableGateway');
                    $table = new TipoTable($tableGateway);
                    return $table;
                },
                'TipoTableGateway' => function ($sm) {
                    $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
                    $resultSetPrototype = new ResultSet();
                    $resultSetPrototype->setArrayObjectPrototype(new Tipo());
                    return new TableGateway('tipo', $dbAdapter, null, $resultSetPrototype);
                },
            ),
        );
    }
}