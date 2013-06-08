<?php
return array(
    'controllers' => array(
        'invokables' => array(
            'Tipo\Controller\Tipo' => 'Tipo\Controller\TipoController',
        ),
    ),
    // The following section is new and should be added to your file
    'router' => array(
        'routes' => array(
            'tipo' => array(
                'type'    => 'segment',
                'options' => array(
                    'route'    => '/tipo[/][:action][/:id]',
                    'constraints' => array(
                        'action' => '[a-zA-Z][a-zA-Z0-9_-]*',
                        'id'     => '[0-9]+',
                    ),
                    'defaults' => array(
                        'controller' => 'Tipo\Controller\Tipo',
                        'action'     => 'index',
                    ),
                ),
            ),
        ),
    ),
    'view_manager' => array(
        'template_path_stack' => array(
            'tipo' => __DIR__ . '/../view',
        ),
    ),
);