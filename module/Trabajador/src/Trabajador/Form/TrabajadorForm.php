<?php
namespace Trabajador\Form;

use Zend\Form\Form;

class TrabajadorForm extends Form
{
    public function __construct($name = null)
    {
        // we want to ignore the name passed
        parent::__construct('trabajador');
        
        $this->setAttribute('method', 'post');
        $this->add(array(
            'name' => 'dni',
            'type' => 'Text',
            'options' => array(
                'label' => 'DNI',
            ),
        ));
        $this->add(array(
            'name' => 'nombre',
            'type' => 'Text',
            'options' => array(
                'label' => 'Nombre',
            ),
        ));
        $this->add(array(
            'name' => 'apellidos',
            'type' => 'Text',
            'options' => array(
                'label' => 'Apellidos',
            ),
        ));
        $this->add(array(
            'name'          => 'tipo',
            'type'          => 'Zend\Form\Element\Select',
            'options'       => array(
                'label'             => 'Tipo',
                'value_options'     => array(
                    '1'                 => 'Arquitecto',
                    '2'                 => 'Arquitecto técnico',
                    '3'                 => 'Ingeniero',
                ),
            ),
        ));
        $this->add(array(
            'name' => 'submit',
            'type' => 'Submit',
            'attributes' => array(
                'value' => 'Go',
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