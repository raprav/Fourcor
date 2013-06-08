Fourcor
=======

Gestión de proyectos de edificación.

Ingeniería del software
-----------------------

En /ingenieria se adjunta
* *ER.png* como modelo E-R de la base de datos.
* *DCL-BD.png* como diagrama de clases UML para la base de datos.
* *DCL-GUI/BSS* como diagramde clases UML para la parte de negocio e interfaz de usuario.
* *DCL-BD+GUI/BSS* diagrama conjunto con ambas partes.
* Proyecto en Visual Paradigm con el modelado UML.

Base de datos
-------------

MySQL. Se incluye el script de creación de tablas y rellenado de las mismas en /sql/fourcor.sql.

Back-end
--------

Construido sobre Zend Framework 2, más concretamente sobre la aplicación básica ZF2 Zend Skeleton Application.

Front-end
---------

Implementa Twitter Bootstrap Framework. Utilizado en los módulos Trabajador y Proyecto, más concretamente en
TrabajadorForm y ProyectoForm (inserción y edición), así como en las Actions.

Para la integración con la plataforma ofrecida por Zend, se utiliza el módulo DluTwBootstrap, por David Lukas.
