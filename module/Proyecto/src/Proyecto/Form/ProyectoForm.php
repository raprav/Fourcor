<?php
namespace Proyecto\Form;

use Zend\Form\Form;

class ProyectoForm extends Form
{
    public function __construct($name = null)
    {
        parent::__construct('proyecto');
        $this->setAttribute('method', 'post');
        $this->add(array(
            'name' => 'id',
            'type' => 'Hidden',
        ));
        $this->add(array(
            'name' => 'nombre',
            'type' => 'Text',
            'options' => array(
                'label' => 'Nombre',
            ),
        ));
        $this->add(array(
            'name' => 'descripcion',
            'type' => 'TextArea',
            'options' => array(
                'label' => 'Descripcion',
            ),
        ));
        $this->add(array(
            'name'          => 'estado',
            'type'          => 'Select',
            'options'       => array(
                'label'             => 'Estado',
                'description'       => 'Description.',
                'value_options'     => array(
                    '1'              => 'Abierto',
                    '0'             => 'Terminado',
                ),
            ),
        ));
        $this->add(array(
            'name' => 'submit',
            'type' => 'Submit',
            'attributes' => array(
                'value' => 'Enviar',
                'id' => 'submitbutton',
                'class' => 'btn btn-primary',
            ),
        ));

        $this->add(array(
                       'name'           => 'resetBtn',
                       'attributes'     => array(
                           'type'       => 'reset',
                           'value'      => 'Limpiar',
                       ),
                   ));
    }
}