<?php
return array(
    'controllers' => array(
        'invokables' => array(
            'Proyecto\Controller\Proyecto' => 'Proyecto\Controller\ProyectoController',
        ),
    ),
    // The following section is new and should be added to your file
    'router' => array(
        'routes' => array(
            'proyecto' => array(
                'type'    => 'segment',
                'options' => array(
                    'route'    => '/proyecto[/][:action][/:id]',
                    'constraints' => array(
                        'action' => '[a-zA-Z][a-zA-Z0-9_-]*',
                        'id'     => '[0-9]+',
                    ),
                    'defaults' => array(
                        'controller' => 'Proyecto\Controller\Proyecto',
                        'action'     => 'index',
                    ),
                ),
            ),
        ),
    ),
    'view_manager' => array(
        'template_path_stack' => array(
            'proyecto' => __DIR__ . '/../view',
        ),
    ),
);