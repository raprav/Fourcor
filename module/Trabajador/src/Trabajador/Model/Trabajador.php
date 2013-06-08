<?php
namespace Trabajador\Model;

use Zend\InputFilter\Factory as InputFactory;
use Zend\InputFilter\InputFilter;
use Zend\InputFilter\InputFilterAwareInterface;
use Zend\InputFilter\InputFilterInterface;

class Trabajador 
{
    public $dni;
    public $nombre;
    public $apellidos;
    public $fechaNacimiento;
	public $tipo;
    public $correo;

    public function exchangeArray($data)
    {
        $this->dni     = (!empty($data['dni'])) ? $data['dni'] : null;
        $this->nombre = (!empty($data['nombre'])) ? $data['nombre'] : null;
        $this->apellidos  = (!empty($data['apellidos'])) ? $data['apellidos'] : null;
        $this->fechaNacimiento  = (!empty($data['fechaNacimiento'])) ? $data['fechaNacimiento'] : null;
        $this->tipo  = (!empty($data['tipo'])) ? $data['tipo'] : null;
        $this->correo = str_replace(' ','',$this->nombre.$this->apellidos.'@fourcor.com');
        $this->telefono  = (!empty($data['telefono'])) ? $data['telefono'] : null;
    }

    public function getArrayCopy()
    {
        return get_object_vars($this);
    }
    
    public function setInputFilter(InputFilterInterface $inputFilter)
    {
        throw new \Exception("Not used");
    }

    public function getInputFilter()
    {
        if (!$this->inputFilter) {
            $inputFilter = new InputFilter();
            $factory     = new InputFactory();

            $inputFilter->add($factory->createInput(array(
                'name'     => 'dni',
                'required' => true,
                'validators' => array(
                    array(
                        'name'    => 'StringLength',
                        'options' => array(
                            'encoding' => 'UTF-8',
                            'min'      => 9,
                            'max'      => 9,
                        ),
                    ),
                ),
            )));

            $inputFilter->add($factory->createInput(array(
                'name'     => 'nombre',
                'required' => true,
                'filters'  => array(
                    array('name' => 'StripTags'),
                    array('name' => 'StringTrim'),
                ),
                'validators' => array(
                    array(
                        'name'    => 'StringLength',
                        'options' => array(
                            'encoding' => 'UTF-8',
                            'min'      => 1,
                            'max'      => 100,
                        ),
                    ),
                ),
            )));

            $inputFilter->add($factory->createInput(array(
                'name'     => 'apellidos',
                'required' => true,
                'filters'  => array(
                    array('name' => 'StripTags'),
                    array('name' => 'StringTrim'),
                ),
                'validators' => array(
                    array(
                        'name'    => 'StringLength',
                        'options' => array(
                            'encoding' => 'UTF-8',
                            'min'      => 1,
                            'max'      => 100,
                        ),
                    ),
                ),
            )));

            $this->inputFilter = $inputFilter;
        }

        return $this->inputFilter;
    }
}