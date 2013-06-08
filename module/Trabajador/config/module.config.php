<?php
return array(
    'controllers' => array(
        'invokables' => array(
            'Trabajador\Controller\Trabajador' => 'Trabajador\Controller\TrabajadorController',
        ),
    ),
     // The following section is new and should be added to your file
    'router' => array(
        'routes' => array(
            'trabajador' => array(
                'type'    => 'segment',
                'options' => array(
                    'route'    => '/trabajador[/][:action][/:dni]',
                    'constraints' => array(
                        'action' => '[a-zA-Z][a-zA-Z0-9_-]*',
                        //'dni'     => '[0-9]+',
                        'dni'   => '[a-zA-Z]*[0-9]*[a-zA-Z]*',
                    ),
                    'defaults' => array(
                        'controller' => 'Trabajador\Controller\Trabajador',
                        'action'     => 'index',
                    ),
                ),
            ),
        ),
    ),
    'view_manager' => array(
        'template_path_stack' => array(
            'trabajador' => __DIR__ . '/../view',
        ),
    ),
);