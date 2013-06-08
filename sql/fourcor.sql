-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 05-06-2013 a las 14:20:52
-- Versión del servidor: 5.5.25
-- Versión de PHP: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de datos: `fourcor`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto`
--

CREATE TABLE `proyecto` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `descripcion` text,
  `estado` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcado de datos para la tabla `tipo`
--

INSERT INTO `proyecto` (`id`, `nombre`, `descripcion`, `estado`) VALUES
(   '0', 'Reforma de aparcamiento UAL'
  , 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque dui dolor, facilisis et odio at, scelerisque porttitor ante. Integer imperdiet non ligula non placerat. Ut nec purus justo. Nulla nec nisi a lacus scelerisque tempor. Praesent sit amet nulla in nisl semper feugiat id in felis. Sed at erat quis diam bibendum congue. Cras sodales posuere lacus eu gravida. Fusce ut hendrerit sapien. Nunc nunc leo, aliquet at laoreet at, cursus et odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut interdum magna sit amet lacus elementum, eu ultrices urna sollicitudin. In ac ullamcorper felis, ac posuere elit. Vivamus vulputate magna massa, quis sagittis mi cursus vel. Quisque sed tellus nec ligula porta cursus. Nulla facilisi. Nulla diam ipsum, lacinia et massa vel, posuere laoreet lorem. Pellentesque elit nibh, faucibus vel sollicitudin id, scelerisque quis sapien. Quisque condimentum eu mauris eu sagittis. Integer semper ante metus, non semper nulla interdum et. Phasellus vitae tempus diam. Nulla ac metus non odio malesuada lacinia. Morbi vitae consequat risus, et gravida erat. Nullam vel lorem id dolor pellentesque consequat ac nec arcu. Morbi tempus volutpat risus ac varius. Aliquam vel iaculis est. Aliquam vitae metus quis velit auctor porta id eu urna. Ut enim elit, venenatis vitae turpis eget, pretium condimentum neque. Integer arcu eros, accumsan eget turpis non, sagittis porttitor lorem. Vestibulum et ante ac felis rutrum condimentum. Vivamus lacinia diam id pretium lacinia. Vestibulum lobortis, lorem eget convallis pretium, mauris est congue elit, in ultricies sem lectus at mi. Etiam eu pellentesque sem. Duis ornare tortor mauris. Nunc velit ipsum, iaculis non rhoncus ac, congue in quam. Aliquam feugiat tellus a arcu auctor tempus. Donec sit amet luctus dui. Quisque nulla tortor, lobortis mollis blandit ullamcorper, varius cursus nulla. Sed eget pretium diam. Etiam ut turpis scelerisque, adipiscing nisl ac, mollis nibh. Aliquam gravida enim eget laoreet elementum. Integer faucibus quis libero ut tincidunt. Nunc in lectus at nulla bibendum mattis a ut sem. Aenean molestie lobortis mollis.'
  , '1'),

(
    '1', 'Puente hacia Nueva Almería'
  , 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque dui dolor, facilisis et odio at, scelerisque porttitor ante. Integer imperdiet non ligula non placerat. Ut nec purus justo. Nulla nec nisi a lacus scelerisque tempor. Praesent sit amet nulla in nisl semper feugiat id in felis. Sed at erat quis diam bibendum congue. Cras sodales posuere lacus eu gravida. Fusce ut hendrerit sapien. Nunc nunc leo, aliquet at laoreet at, cursus et odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut interdum magna sit amet lacus elementum, eu ultrices urna sollicitudin. In ac ullamcorper felis, ac posuere elit. Vivamus vulputate magna massa, quis sagittis mi cursus vel. Quisque sed tellus nec ligula porta cursus. Nulla facilisi. Nulla diam ipsum, lacinia et massa vel, posuere laoreet lorem. Pellentesque elit nibh, faucibus vel sollicitudin id, scelerisque quis sapien. Quisque condimentum eu mauris eu sagittis. Integer semper ante metus, non semper nulla interdum et. Phasellus vitae tempus diam. Nulla ac metus non odio malesuada lacinia. Morbi vitae consequat risus, et gravida erat. Nullam vel lorem id dolor pellentesque consequat ac nec arcu. Morbi tempus volutpat risus ac varius. Aliquam vel iaculis est. Aliquam vitae metus quis velit auctor porta id eu urna. Ut enim elit, venenatis vitae turpis eget, pretium condimentum neque. Integer arcu eros, accumsan eget turpis non, sagittis porttitor lorem. Vestibulum et ante ac felis rutrum condimentum. Vivamus lacinia diam id pretium lacinia. Vestibulum lobortis, lorem eget convallis pretium, mauris est congue elit, in ultricies sem lectus at mi. Etiam eu pellentesque sem. Duis ornare tortor mauris. Nunc velit ipsum, iaculis non rhoncus ac, congue in quam. Aliquam feugiat tellus a arcu auctor tempus. Donec sit amet luctus dui. Quisque nulla tortor, lobortis mollis blandit ullamcorper, varius cursus nulla. Sed eget pretium diam. Etiam ut turpis scelerisque, adipiscing nisl ac, mollis nibh. Aliquam gravida enim eget laoreet elementum. Integer faucibus quis libero ut tincidunt. Nunc in lectus at nulla bibendum mattis a ut sem. Aenean molestie lobortis mollis.'
  , '0'),

(   '2'
  , 'Bloque residencial Las Palomicas'
  , 'obra nueva'
  , '1'),

(   '3'
  , 'Demolición Escuela Politécnica'
  , 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque dui dolor, facilisis et odio at, scelerisque porttitor ante. Integer imperdiet non ligula non placerat. Ut nec purus justo. Nulla nec nisi a lacus scelerisque tempor. Praesent sit amet nulla in nisl semper feugiat id in felis. Sed at erat quis diam bibendum congue. Cras sodales posuere lacus eu gravida. Fusce ut hendrerit sapien. Nunc nunc leo, aliquet at laoreet at, cursus et odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut interdum magna sit amet lacus elementum, eu ultrices urna sollicitudin. In ac ullamcorper felis, ac posuere elit. Vivamus vulputate magna massa, quis sagittis mi cursus vel. Quisque sed tellus nec ligula porta cursus. Nulla facilisi. Nulla diam ipsum, lacinia et massa vel, posuere laoreet lorem. Pellentesque elit nibh, faucibus vel sollicitudin id, scelerisque quis sapien. Quisque condimentum eu mauris eu sagittis. Integer semper ante metus, non semper nulla interdum et. Phasellus vitae tempus diam. Nulla ac metus non odio malesuada lacinia. Morbi vitae consequat risus, et gravida erat. Nullam vel lorem id dolor pellentesque consequat ac nec arcu. Morbi tempus volutpat risus ac varius. Aliquam vel iaculis est. Aliquam vitae metus quis velit auctor porta id eu urna. Ut enim elit, venenatis vitae turpis eget, pretium condimentum neque. Integer arcu eros, accumsan eget turpis non, sagittis porttitor lorem. Vestibulum et ante ac felis rutrum condimentum. Vivamus lacinia diam id pretium lacinia. Vestibulum lobortis, lorem eget convallis pretium, mauris est congue elit, in ultricies sem lectus at mi. Etiam eu pellentesque sem. Duis ornare tortor mauris. Nunc velit ipsum, iaculis non rhoncus ac, congue in quam. Aliquam feugiat tellus a arcu auctor tempus. Donec sit amet luctus dui. Quisque nulla tortor, lobortis mollis blandit ullamcorper, varius cursus nulla. Sed eget pretium diam. Etiam ut turpis scelerisque, adipiscing nisl ac, mollis nibh. Aliquam gravida enim eget laoreet elementum. Integer faucibus quis libero ut tincidunt. Nunc in lectus at nulla bibendum mattis a ut sem. Aenean molestie lobortis mollis.'
  , '1'),

( '4'
  , 'Bloque de pisos Cristobal Colón'
  , 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque dui dolor, facilisis et odio at, scelerisque porttitor ante. Integer imperdiet non ligula non placerat. Ut nec purus justo. Nulla nec nisi a lacus scelerisque tempor. Praesent sit amet nulla in nisl semper feugiat id in felis. Sed at erat quis diam bibendum congue. Cras sodales posuere lacus eu gravida. Fusce ut hendrerit sapien. Nunc nunc leo, aliquet at laoreet at, cursus et odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut interdum magna sit amet lacus elementum, eu ultrices urna sollicitudin. In ac ullamcorper felis, ac posuere elit. Vivamus vulputate magna massa, quis sagittis mi cursus vel. Quisque sed tellus nec ligula porta cursus. Nulla facilisi. Nulla diam ipsum, lacinia et massa vel, posuere laoreet lorem. Pellentesque elit nibh, faucibus vel sollicitudin id, scelerisque quis sapien. Quisque condimentum eu mauris eu sagittis. Integer semper ante metus, non semper nulla interdum et. Phasellus vitae tempus diam. Nulla ac metus non odio malesuada lacinia. Morbi vitae consequat risus, et gravida erat. Nullam vel lorem id dolor pellentesque consequat ac nec arcu. Morbi tempus volutpat risus ac varius. Aliquam vel iaculis est. Aliquam vitae metus quis velit auctor porta id eu urna. Ut enim elit, venenatis vitae turpis eget, pretium condimentum neque. Integer arcu eros, accumsan eget turpis non, sagittis porttitor lorem. Vestibulum et ante ac felis rutrum condimentum. Vivamus lacinia diam id pretium lacinia. Vestibulum lobortis, lorem eget convallis pretium, mauris est congue elit, in ultricies sem lectus at mi. Etiam eu pellentesque sem. Duis ornare tortor mauris. Nunc velit ipsum, iaculis non rhoncus ac, congue in quam. Aliquam feugiat tellus a arcu auctor tempus. Donec sit amet luctus dui. Quisque nulla tortor, lobortis mollis blandit ullamcorper, varius cursus nulla. Sed eget pretium diam. Etiam ut turpis scelerisque, adipiscing nisl ac, mollis nibh. Aliquam gravida enim eget laoreet elementum. Integer faucibus quis libero ut tincidunt. Nunc in lectus at nulla bibendum mattis a ut sem. Aenean molestie lobortis mollis.'
  , '0'),

( '5'
  , 'Biblioteca municipal de Springfield'
  , 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque dui dolor, facilisis et odio at, scelerisque porttitor ante. Integer imperdiet non ligula non placerat. Ut nec purus justo. Nulla nec nisi a lacus scelerisque tempor. Praesent sit amet nulla in nisl semper feugiat id in felis. Sed at erat quis diam bibendum congue. Cras sodales posuere lacus eu gravida. Fusce ut hendrerit sapien. Nunc nunc leo, aliquet at laoreet at, cursus et odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut interdum magna sit amet lacus elementum, eu ultrices urna sollicitudin. In ac ullamcorper felis, ac posuere elit. Vivamus vulputate magna massa, quis sagittis mi cursus vel. Quisque sed tellus nec ligula porta cursus. Nulla facilisi. Nulla diam ipsum, lacinia et massa vel, posuere laoreet lorem. Pellentesque elit nibh, faucibus vel sollicitudin id, scelerisque quis sapien. Quisque condimentum eu mauris eu sagittis. Integer semper ante metus, non semper nulla interdum et. Phasellus vitae tempus diam. Nulla ac metus non odio malesuada lacinia. Morbi vitae consequat risus, et gravida erat. Nullam vel lorem id dolor pellentesque consequat ac nec arcu. Morbi tempus volutpat risus ac varius. Aliquam vel iaculis est. Aliquam vitae metus quis velit auctor porta id eu urna. Ut enim elit, venenatis vitae turpis eget, pretium condimentum neque. Integer arcu eros, accumsan eget turpis non, sagittis porttitor lorem. Vestibulum et ante ac felis rutrum condimentum. Vivamus lacinia diam id pretium lacinia. Vestibulum lobortis, lorem eget convallis pretium, mauris est congue elit, in ultricies sem lectus at mi. Etiam eu pellentesque sem. Duis ornare tortor mauris. Nunc velit ipsum, iaculis non rhoncus ac, congue in quam. Aliquam feugiat tellus a arcu auctor tempus. Donec sit amet luctus dui. Quisque nulla tortor, lobortis mollis blandit ullamcorper, varius cursus nulla. Sed eget pretium diam. Etiam ut turpis scelerisque, adipiscing nisl ac, mollis nibh. Aliquam gravida enim eget laoreet elementum. Integer faucibus quis libero ut tincidunt. Nunc in lectus at nulla bibendum mattis a ut sem. Aenean molestie lobortis mollis.'
  , '1'),

( '6'
  , 'Pisito acogedor Luis Bárcenas'
  , 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque dui dolor, facilisis et odio at, scelerisque porttitor ante. Integer imperdiet non ligula non placerat. Ut nec purus justo. Nulla nec nisi a lacus scelerisque tempor. Praesent sit amet nulla in nisl semper feugiat id in felis. Sed at erat quis diam bibendum congue. Cras sodales posuere lacus eu gravida. Fusce ut hendrerit sapien. Nunc nunc leo, aliquet at laoreet at, cursus et odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut interdum magna sit amet lacus elementum, eu ultrices urna sollicitudin. In ac ullamcorper felis, ac posuere elit. Vivamus vulputate magna massa, quis sagittis mi cursus vel. Quisque sed tellus nec ligula porta cursus. Nulla facilisi. Nulla diam ipsum, lacinia et massa vel, posuere laoreet lorem. Pellentesque elit nibh, faucibus vel sollicitudin id, scelerisque quis sapien. Quisque condimentum eu mauris eu sagittis. Integer semper ante metus, non semper nulla interdum et. Phasellus vitae tempus diam. Nulla ac metus non odio malesuada lacinia. Morbi vitae consequat risus, et gravida erat. Nullam vel lorem id dolor pellentesque consequat ac nec arcu. Morbi tempus volutpat risus ac varius. Aliquam vel iaculis est. Aliquam vitae metus quis velit auctor porta id eu urna. Ut enim elit, venenatis vitae turpis eget, pretium condimentum neque. Integer arcu eros, accumsan eget turpis non, sagittis porttitor lorem. Vestibulum et ante ac felis rutrum condimentum. Vivamus lacinia diam id pretium lacinia. Vestibulum lobortis, lorem eget convallis pretium, mauris est congue elit, in ultricies sem lectus at mi. Etiam eu pellentesque sem. Duis ornare tortor mauris. Nunc velit ipsum, iaculis non rhoncus ac, congue in quam. Aliquam feugiat tellus a arcu auctor tempus. Donec sit amet luctus dui. Quisque nulla tortor, lobortis mollis blandit ullamcorper, varius cursus nulla. Sed eget pretium diam. Etiam ut turpis scelerisque, adipiscing nisl ac, mollis nibh. Aliquam gravida enim eget laoreet elementum. Integer faucibus quis libero ut tincidunt. Nunc in lectus at nulla bibendum mattis a ut sem. Aenean molestie lobortis mollis.'
  , '0'),

( '7'
  , 'Cortijo en Abrucena'
  , 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque dui dolor, facilisis et odio at, scelerisque porttitor ante. Integer imperdiet non ligula non placerat. Ut nec purus justo. Nulla nec nisi a lacus scelerisque tempor. Praesent sit amet nulla in nisl semper feugiat id in felis. Sed at erat quis diam bibendum congue. Cras sodales posuere lacus eu gravida. Fusce ut hendrerit sapien. Nunc nunc leo, aliquet at laoreet at, cursus et odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut interdum magna sit amet lacus elementum, eu ultrices urna sollicitudin. In ac ullamcorper felis, ac posuere elit. Vivamus vulputate magna massa, quis sagittis mi cursus vel. Quisque sed tellus nec ligula porta cursus. Nulla facilisi. Nulla diam ipsum, lacinia et massa vel, posuere laoreet lorem. Pellentesque elit nibh, faucibus vel sollicitudin id, scelerisque quis sapien. Quisque condimentum eu mauris eu sagittis. Integer semper ante metus, non semper nulla interdum et. Phasellus vitae tempus diam. Nulla ac metus non odio malesuada lacinia. Morbi vitae consequat risus, et gravida erat. Nullam vel lorem id dolor pellentesque consequat ac nec arcu. Morbi tempus volutpat risus ac varius. Aliquam vel iaculis est. Aliquam vitae metus quis velit auctor porta id eu urna. Ut enim elit, venenatis vitae turpis eget, pretium condimentum neque. Integer arcu eros, accumsan eget turpis non, sagittis porttitor lorem. Vestibulum et ante ac felis rutrum condimentum. Vivamus lacinia diam id pretium lacinia. Vestibulum lobortis, lorem eget convallis pretium, mauris est congue elit, in ultricies sem lectus at mi. Etiam eu pellentesque sem. Duis ornare tortor mauris. Nunc velit ipsum, iaculis non rhoncus ac, congue in quam. Aliquam feugiat tellus a arcu auctor tempus. Donec sit amet luctus dui. Quisque nulla tortor, lobortis mollis blandit ullamcorper, varius cursus nulla. Sed eget pretium diam. Etiam ut turpis scelerisque, adipiscing nisl ac, mollis nibh. Aliquam gravida enim eget laoreet elementum. Integer faucibus quis libero ut tincidunt. Nunc in lectus at nulla bibendum mattis a ut sem. Aenean molestie lobortis mollis.'
  , '1'),

( '8'
  , 'Urbanización Las Lomas'
  , 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque dui dolor, facilisis et odio at, scelerisque porttitor ante. Integer imperdiet non ligula non placerat. Ut nec purus justo. Nulla nec nisi a lacus scelerisque tempor. Praesent sit amet nulla in nisl semper feugiat id in felis. Sed at erat quis diam bibendum congue. Cras sodales posuere lacus eu gravida. Fusce ut hendrerit sapien. Nunc nunc leo, aliquet at laoreet at, cursus et odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut interdum magna sit amet lacus elementum, eu ultrices urna sollicitudin. In ac ullamcorper felis, ac posuere elit. Vivamus vulputate magna massa, quis sagittis mi cursus vel. Quisque sed tellus nec ligula porta cursus. Nulla facilisi. Nulla diam ipsum, lacinia et massa vel, posuere laoreet lorem. Pellentesque elit nibh, faucibus vel sollicitudin id, scelerisque quis sapien. Quisque condimentum eu mauris eu sagittis. Integer semper ante metus, non semper nulla interdum et. Phasellus vitae tempus diam. Nulla ac metus non odio malesuada lacinia. Morbi vitae consequat risus, et gravida erat. Nullam vel lorem id dolor pellentesque consequat ac nec arcu. Morbi tempus volutpat risus ac varius. Aliquam vel iaculis est. Aliquam vitae metus quis velit auctor porta id eu urna. Ut enim elit, venenatis vitae turpis eget, pretium condimentum neque. Integer arcu eros, accumsan eget turpis non, sagittis porttitor lorem. Vestibulum et ante ac felis rutrum condimentum. Vivamus lacinia diam id pretium lacinia. Vestibulum lobortis, lorem eget convallis pretium, mauris est congue elit, in ultricies sem lectus at mi. Etiam eu pellentesque sem. Duis ornare tortor mauris. Nunc velit ipsum, iaculis non rhoncus ac, congue in quam. Aliquam feugiat tellus a arcu auctor tempus. Donec sit amet luctus dui. Quisque nulla tortor, lobortis mollis blandit ullamcorper, varius cursus nulla. Sed eget pretium diam. Etiam ut turpis scelerisque, adipiscing nisl ac, mollis nibh. Aliquam gravida enim eget laoreet elementum. Integer faucibus quis libero ut tincidunt. Nunc in lectus at nulla bibendum mattis a ut sem. Aenean molestie lobortis mollis.'
  , '1'),

( '9'
  , 'Ayuntamiento de Carboneras'
  , 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque dui dolor, facilisis et odio at, scelerisque porttitor ante. Integer imperdiet non ligula non placerat. Ut nec purus justo. Nulla nec nisi a lacus scelerisque tempor. Praesent sit amet nulla in nisl semper feugiat id in felis. Sed at erat quis diam bibendum congue. Cras sodales posuere lacus eu gravida. Fusce ut hendrerit sapien. Nunc nunc leo, aliquet at laoreet at, cursus et odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut interdum magna sit amet lacus elementum, eu ultrices urna sollicitudin. In ac ullamcorper felis, ac posuere elit. Vivamus vulputate magna massa, quis sagittis mi cursus vel. Quisque sed tellus nec ligula porta cursus. Nulla facilisi. Nulla diam ipsum, lacinia et massa vel, posuere laoreet lorem. Pellentesque elit nibh, faucibus vel sollicitudin id, scelerisque quis sapien. Quisque condimentum eu mauris eu sagittis. Integer semper ante metus, non semper nulla interdum et. Phasellus vitae tempus diam. Nulla ac metus non odio malesuada lacinia. Morbi vitae consequat risus, et gravida erat. Nullam vel lorem id dolor pellentesque consequat ac nec arcu. Morbi tempus volutpat risus ac varius. Aliquam vel iaculis est. Aliquam vitae metus quis velit auctor porta id eu urna. Ut enim elit, venenatis vitae turpis eget, pretium condimentum neque. Integer arcu eros, accumsan eget turpis non, sagittis porttitor lorem. Vestibulum et ante ac felis rutrum condimentum. Vivamus lacinia diam id pretium lacinia. Vestibulum lobortis, lorem eget convallis pretium, mauris est congue elit, in ultricies sem lectus at mi. Etiam eu pellentesque sem. Duis ornare tortor mauris. Nunc velit ipsum, iaculis non rhoncus ac, congue in quam. Aliquam feugiat tellus a arcu auctor tempus. Donec sit amet luctus dui. Quisque nulla tortor, lobortis mollis blandit ullamcorper, varius cursus nulla. Sed eget pretium diam. Etiam ut turpis scelerisque, adipiscing nisl ac, mollis nibh. Aliquam gravida enim eget laoreet elementum. Integer faucibus quis libero ut tincidunt. Nunc in lectus at nulla bibendum mattis a ut sem. Aenean molestie lobortis mollis.'
  , '1'),

( '10'
  , 'Reforma fachada Edificio Hez'
  , 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque dui dolor, facilisis et odio at, scelerisque porttitor ante. Integer imperdiet non ligula non placerat. Ut nec purus justo. Nulla nec nisi a lacus scelerisque tempor. Praesent sit amet nulla in nisl semper feugiat id in felis. Sed at erat quis diam bibendum congue. Cras sodales posuere lacus eu gravida. Fusce ut hendrerit sapien. Nunc nunc leo, aliquet at laoreet at, cursus et odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut interdum magna sit amet lacus elementum, eu ultrices urna sollicitudin. In ac ullamcorper felis, ac posuere elit. Vivamus vulputate magna massa, quis sagittis mi cursus vel. Quisque sed tellus nec ligula porta cursus. Nulla facilisi. Nulla diam ipsum, lacinia et massa vel, posuere laoreet lorem. Pellentesque elit nibh, faucibus vel sollicitudin id, scelerisque quis sapien. Quisque condimentum eu mauris eu sagittis. Integer semper ante metus, non semper nulla interdum et. Phasellus vitae tempus diam. Nulla ac metus non odio malesuada lacinia. Morbi vitae consequat risus, et gravida erat. Nullam vel lorem id dolor pellentesque consequat ac nec arcu. Morbi tempus volutpat risus ac varius. Aliquam vel iaculis est. Aliquam vitae metus quis velit auctor porta id eu urna. Ut enim elit, venenatis vitae turpis eget, pretium condimentum neque. Integer arcu eros, accumsan eget turpis non, sagittis porttitor lorem. Vestibulum et ante ac felis rutrum condimentum. Vivamus lacinia diam id pretium lacinia. Vestibulum lobortis, lorem eget convallis pretium, mauris est congue elit, in ultricies sem lectus at mi. Etiam eu pellentesque sem. Duis ornare tortor mauris. Nunc velit ipsum, iaculis non rhoncus ac, congue in quam. Aliquam feugiat tellus a arcu auctor tempus. Donec sit amet luctus dui. Quisque nulla tortor, lobortis mollis blandit ullamcorper, varius cursus nulla. Sed eget pretium diam. Etiam ut turpis scelerisque, adipiscing nisl ac, mollis nibh. Aliquam gravida enim eget laoreet elementum. Integer faucibus quis libero ut tincidunt. Nunc in lectus at nulla bibendum mattis a ut sem. Aenean molestie lobortis mollis.'
  , '1'),

( '11'
  , 'Restauración Biblioteca Nicolás Salmerón'
  , 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque dui dolor, facilisis et odio at, scelerisque porttitor ante. Integer imperdiet non ligula non placerat. Ut nec purus justo. Nulla nec nisi a lacus scelerisque tempor. Praesent sit amet nulla in nisl semper feugiat id in felis. Sed at erat quis diam bibendum congue. Cras sodales posuere lacus eu gravida. Fusce ut hendrerit sapien. Nunc nunc leo, aliquet at laoreet at, cursus et odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut interdum magna sit amet lacus elementum, eu ultrices urna sollicitudin. In ac ullamcorper felis, ac posuere elit. Vivamus vulputate magna massa, quis sagittis mi cursus vel. Quisque sed tellus nec ligula porta cursus. Nulla facilisi. Nulla diam ipsum, lacinia et massa vel, posuere laoreet lorem. Pellentesque elit nibh, faucibus vel sollicitudin id, scelerisque quis sapien. Quisque condimentum eu mauris eu sagittis. Integer semper ante metus, non semper nulla interdum et. Phasellus vitae tempus diam. Nulla ac metus non odio malesuada lacinia. Morbi vitae consequat risus, et gravida erat. Nullam vel lorem id dolor pellentesque consequat ac nec arcu. Morbi tempus volutpat risus ac varius. Aliquam vel iaculis est. Aliquam vitae metus quis velit auctor porta id eu urna. Ut enim elit, venenatis vitae turpis eget, pretium condimentum neque. Integer arcu eros, accumsan eget turpis non, sagittis porttitor lorem. Vestibulum et ante ac felis rutrum condimentum. Vivamus lacinia diam id pretium lacinia. Vestibulum lobortis, lorem eget convallis pretium, mauris est congue elit, in ultricies sem lectus at mi. Etiam eu pellentesque sem. Duis ornare tortor mauris. Nunc velit ipsum, iaculis non rhoncus ac, congue in quam. Aliquam feugiat tellus a arcu auctor tempus. Donec sit amet luctus dui. Quisque nulla tortor, lobortis mollis blandit ullamcorper, varius cursus nulla. Sed eget pretium diam. Etiam ut turpis scelerisque, adipiscing nisl ac, mollis nibh. Aliquam gravida enim eget laoreet elementum. Integer faucibus quis libero ut tincidunt. Nunc in lectus at nulla bibendum mattis a ut sem. Aenean molestie lobortis mollis.'
  , '1'),

( '12'
  , 'Restaurante Las Chinas'
  , 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque dui dolor, facilisis et odio at, scelerisque porttitor ante. Integer imperdiet non ligula non placerat. Ut nec purus justo. Nulla nec nisi a lacus scelerisque tempor. Praesent sit amet nulla in nisl semper feugiat id in felis. Sed at erat quis diam bibendum congue. Cras sodales posuere lacus eu gravida. Fusce ut hendrerit sapien. Nunc nunc leo, aliquet at laoreet at, cursus et odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut interdum magna sit amet lacus elementum, eu ultrices urna sollicitudin. In ac ullamcorper felis, ac posuere elit. Vivamus vulputate magna massa, quis sagittis mi cursus vel. Quisque sed tellus nec ligula porta cursus. Nulla facilisi. Nulla diam ipsum, lacinia et massa vel, posuere laoreet lorem. Pellentesque elit nibh, faucibus vel sollicitudin id, scelerisque quis sapien. Quisque condimentum eu mauris eu sagittis. Integer semper ante metus, non semper nulla interdum et. Phasellus vitae tempus diam. Nulla ac metus non odio malesuada lacinia. Morbi vitae consequat risus, et gravida erat. Nullam vel lorem id dolor pellentesque consequat ac nec arcu. Morbi tempus volutpat risus ac varius. Aliquam vel iaculis est. Aliquam vitae metus quis velit auctor porta id eu urna. Ut enim elit, venenatis vitae turpis eget, pretium condimentum neque. Integer arcu eros, accumsan eget turpis non, sagittis porttitor lorem. Vestibulum et ante ac felis rutrum condimentum. Vivamus lacinia diam id pretium lacinia. Vestibulum lobortis, lorem eget convallis pretium, mauris est congue elit, in ultricies sem lectus at mi. Etiam eu pellentesque sem. Duis ornare tortor mauris. Nunc velit ipsum, iaculis non rhoncus ac, congue in quam. Aliquam feugiat tellus a arcu auctor tempus. Donec sit amet luctus dui. Quisque nulla tortor, lobortis mollis blandit ullamcorper, varius cursus nulla. Sed eget pretium diam. Etiam ut turpis scelerisque, adipiscing nisl ac, mollis nibh. Aliquam gravida enim eget laoreet elementum. Integer faucibus quis libero ut tincidunt. Nunc in lectus at nulla bibendum mattis a ut sem. Aenean molestie lobortis mollis.'
  , '1'),

( '13'
  , 'Bloque de edificios Condemore'
  , 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque dui dolor, facilisis et odio at, scelerisque porttitor ante. Integer imperdiet non ligula non placerat. Ut nec purus justo. Nulla nec nisi a lacus scelerisque tempor. Praesent sit amet nulla in nisl semper feugiat id in felis. Sed at erat quis diam bibendum congue. Cras sodales posuere lacus eu gravida. Fusce ut hendrerit sapien. Nunc nunc leo, aliquet at laoreet at, cursus et odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut interdum magna sit amet lacus elementum, eu ultrices urna sollicitudin. In ac ullamcorper felis, ac posuere elit. Vivamus vulputate magna massa, quis sagittis mi cursus vel. Quisque sed tellus nec ligula porta cursus. Nulla facilisi. Nulla diam ipsum, lacinia et massa vel, posuere laoreet lorem. Pellentesque elit nibh, faucibus vel sollicitudin id, scelerisque quis sapien. Quisque condimentum eu mauris eu sagittis. Integer semper ante metus, non semper nulla interdum et. Phasellus vitae tempus diam. Nulla ac metus non odio malesuada lacinia. Morbi vitae consequat risus, et gravida erat. Nullam vel lorem id dolor pellentesque consequat ac nec arcu. Morbi tempus volutpat risus ac varius. Aliquam vel iaculis est. Aliquam vitae metus quis velit auctor porta id eu urna. Ut enim elit, venenatis vitae turpis eget, pretium condimentum neque. Integer arcu eros, accumsan eget turpis non, sagittis porttitor lorem. Vestibulum et ante ac felis rutrum condimentum. Vivamus lacinia diam id pretium lacinia. Vestibulum lobortis, lorem eget convallis pretium, mauris est congue elit, in ultricies sem lectus at mi. Etiam eu pellentesque sem. Duis ornare tortor mauris. Nunc velit ipsum, iaculis non rhoncus ac, congue in quam. Aliquam feugiat tellus a arcu auctor tempus. Donec sit amet luctus dui. Quisque nulla tortor, lobortis mollis blandit ullamcorper, varius cursus nulla. Sed eget pretium diam. Etiam ut turpis scelerisque, adipiscing nisl ac, mollis nibh. Aliquam gravida enim eget laoreet elementum. Integer faucibus quis libero ut tincidunt. Nunc in lectus at nulla bibendum mattis a ut sem. Aenean molestie lobortis mollis.'
  , '1'),

( '14'
  , 'Casas rurales Las paratas del Faz'
  , 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque dui dolor, facilisis et odio at, scelerisque porttitor ante. Integer imperdiet non ligula non placerat. Ut nec purus justo. Nulla nec nisi a lacus scelerisque tempor. Praesent sit amet nulla in nisl semper feugiat id in felis. Sed at erat quis diam bibendum congue. Cras sodales posuere lacus eu gravida. Fusce ut hendrerit sapien. Nunc nunc leo, aliquet at laoreet at, cursus et odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut interdum magna sit amet lacus elementum, eu ultrices urna sollicitudin. In ac ullamcorper felis, ac posuere elit. Vivamus vulputate magna massa, quis sagittis mi cursus vel. Quisque sed tellus nec ligula porta cursus. Nulla facilisi. Nulla diam ipsum, lacinia et massa vel, posuere laoreet lorem. Pellentesque elit nibh, faucibus vel sollicitudin id, scelerisque quis sapien. Quisque condimentum eu mauris eu sagittis. Integer semper ante metus, non semper nulla interdum et. Phasellus vitae tempus diam. Nulla ac metus non odio malesuada lacinia. Morbi vitae consequat risus, et gravida erat. Nullam vel lorem id dolor pellentesque consequat ac nec arcu. Morbi tempus volutpat risus ac varius. Aliquam vel iaculis est. Aliquam vitae metus quis velit auctor porta id eu urna. Ut enim elit, venenatis vitae turpis eget, pretium condimentum neque. Integer arcu eros, accumsan eget turpis non, sagittis porttitor lorem. Vestibulum et ante ac felis rutrum condimentum. Vivamus lacinia diam id pretium lacinia. Vestibulum lobortis, lorem eget convallis pretium, mauris est congue elit, in ultricies sem lectus at mi. Etiam eu pellentesque sem. Duis ornare tortor mauris. Nunc velit ipsum, iaculis non rhoncus ac, congue in quam. Aliquam feugiat tellus a arcu auctor tempus. Donec sit amet luctus dui. Quisque nulla tortor, lobortis mollis blandit ullamcorper, varius cursus nulla. Sed eget pretium diam. Etiam ut turpis scelerisque, adipiscing nisl ac, mollis nibh. Aliquam gravida enim eget laoreet elementum. Integer faucibus quis libero ut tincidunt. Nunc in lectus at nulla bibendum mattis a ut sem. Aenean molestie lobortis mollis.'
  , '1'),

( '15'
  , 'Derribo Estación Vieja de Fiñana'
  , 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque dui dolor, facilisis et odio at, scelerisque porttitor ante. Integer imperdiet non ligula non placerat. Ut nec purus justo. Nulla nec nisi a lacus scelerisque tempor. Praesent sit amet nulla in nisl semper feugiat id in felis. Sed at erat quis diam bibendum congue. Cras sodales posuere lacus eu gravida. Fusce ut hendrerit sapien. Nunc nunc leo, aliquet at laoreet at, cursus et odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut interdum magna sit amet lacus elementum, eu ultrices urna sollicitudin. In ac ullamcorper felis, ac posuere elit. Vivamus vulputate magna massa, quis sagittis mi cursus vel. Quisque sed tellus nec ligula porta cursus. Nulla facilisi. Nulla diam ipsum, lacinia et massa vel, posuere laoreet lorem. Pellentesque elit nibh, faucibus vel sollicitudin id, scelerisque quis sapien. Quisque condimentum eu mauris eu sagittis. Integer semper ante metus, non semper nulla interdum et. Phasellus vitae tempus diam. Nulla ac metus non odio malesuada lacinia. Morbi vitae consequat risus, et gravida erat. Nullam vel lorem id dolor pellentesque consequat ac nec arcu. Morbi tempus volutpat risus ac varius. Aliquam vel iaculis est. Aliquam vitae metus quis velit auctor porta id eu urna. Ut enim elit, venenatis vitae turpis eget, pretium condimentum neque. Integer arcu eros, accumsan eget turpis non, sagittis porttitor lorem. Vestibulum et ante ac felis rutrum condimentum. Vivamus lacinia diam id pretium lacinia. Vestibulum lobortis, lorem eget convallis pretium, mauris est congue elit, in ultricies sem lectus at mi. Etiam eu pellentesque sem. Duis ornare tortor mauris. Nunc velit ipsum, iaculis non rhoncus ac, congue in quam. Aliquam feugiat tellus a arcu auctor tempus. Donec sit amet luctus dui. Quisque nulla tortor, lobortis mollis blandit ullamcorper, varius cursus nulla. Sed eget pretium diam. Etiam ut turpis scelerisque, adipiscing nisl ac, mollis nibh. Aliquam gravida enim eget laoreet elementum. Integer faucibus quis libero ut tincidunt. Nunc in lectus at nulla bibendum mattis a ut sem. Aenean molestie lobortis mollis.'
  , '1'),

( '16'
  , 'Reforma trastienda Bar de Moe'
  , 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque dui dolor, facilisis et odio at, scelerisque porttitor ante. Integer imperdiet non ligula non placerat. Ut nec purus justo. Nulla nec nisi a lacus scelerisque tempor. Praesent sit amet nulla in nisl semper feugiat id in felis. Sed at erat quis diam bibendum congue. Cras sodales posuere lacus eu gravida. Fusce ut hendrerit sapien. Nunc nunc leo, aliquet at laoreet at, cursus et odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut interdum magna sit amet lacus elementum, eu ultrices urna sollicitudin. In ac ullamcorper felis, ac posuere elit. Vivamus vulputate magna massa, quis sagittis mi cursus vel. Quisque sed tellus nec ligula porta cursus. Nulla facilisi. Nulla diam ipsum, lacinia et massa vel, posuere laoreet lorem. Pellentesque elit nibh, faucibus vel sollicitudin id, scelerisque quis sapien. Quisque condimentum eu mauris eu sagittis. Integer semper ante metus, non semper nulla interdum et. Phasellus vitae tempus diam. Nulla ac metus non odio malesuada lacinia. Morbi vitae consequat risus, et gravida erat. Nullam vel lorem id dolor pellentesque consequat ac nec arcu. Morbi tempus volutpat risus ac varius. Aliquam vel iaculis est. Aliquam vitae metus quis velit auctor porta id eu urna. Ut enim elit, venenatis vitae turpis eget, pretium condimentum neque. Integer arcu eros, accumsan eget turpis non, sagittis porttitor lorem. Vestibulum et ante ac felis rutrum condimentum. Vivamus lacinia diam id pretium lacinia. Vestibulum lobortis, lorem eget convallis pretium, mauris est congue elit, in ultricies sem lectus at mi. Etiam eu pellentesque sem. Duis ornare tortor mauris. Nunc velit ipsum, iaculis non rhoncus ac, congue in quam. Aliquam feugiat tellus a arcu auctor tempus. Donec sit amet luctus dui. Quisque nulla tortor, lobortis mollis blandit ullamcorper, varius cursus nulla. Sed eget pretium diam. Etiam ut turpis scelerisque, adipiscing nisl ac, mollis nibh. Aliquam gravida enim eget laoreet elementum. Integer faucibus quis libero ut tincidunt. Nunc in lectus at nulla bibendum mattis a ut sem. Aenean molestie lobortis mollis.'
  , '1'),

( '17'
  , 'Pisos La Chata'
  , 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque dui dolor, facilisis et odio at, scelerisque porttitor ante. Integer imperdiet non ligula non placerat. Ut nec purus justo. Nulla nec nisi a lacus scelerisque tempor. Praesent sit amet nulla in nisl semper feugiat id in felis. Sed at erat quis diam bibendum congue. Cras sodales posuere lacus eu gravida. Fusce ut hendrerit sapien. Nunc nunc leo, aliquet at laoreet at, cursus et odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut interdum magna sit amet lacus elementum, eu ultrices urna sollicitudin. In ac ullamcorper felis, ac posuere elit. Vivamus vulputate magna massa, quis sagittis mi cursus vel. Quisque sed tellus nec ligula porta cursus. Nulla facilisi. Nulla diam ipsum, lacinia et massa vel, posuere laoreet lorem. Pellentesque elit nibh, faucibus vel sollicitudin id, scelerisque quis sapien. Quisque condimentum eu mauris eu sagittis. Integer semper ante metus, non semper nulla interdum et. Phasellus vitae tempus diam. Nulla ac metus non odio malesuada lacinia. Morbi vitae consequat risus, et gravida erat. Nullam vel lorem id dolor pellentesque consequat ac nec arcu. Morbi tempus volutpat risus ac varius. Aliquam vel iaculis est. Aliquam vitae metus quis velit auctor porta id eu urna. Ut enim elit, venenatis vitae turpis eget, pretium condimentum neque. Integer arcu eros, accumsan eget turpis non, sagittis porttitor lorem. Vestibulum et ante ac felis rutrum condimentum. Vivamus lacinia diam id pretium lacinia. Vestibulum lobortis, lorem eget convallis pretium, mauris est congue elit, in ultricies sem lectus at mi. Etiam eu pellentesque sem. Duis ornare tortor mauris. Nunc velit ipsum, iaculis non rhoncus ac, congue in quam. Aliquam feugiat tellus a arcu auctor tempus. Donec sit amet luctus dui. Quisque nulla tortor, lobortis mollis blandit ullamcorper, varius cursus nulla. Sed eget pretium diam. Etiam ut turpis scelerisque, adipiscing nisl ac, mollis nibh. Aliquam gravida enim eget laoreet elementum. Integer faucibus quis libero ut tincidunt. Nunc in lectus at nulla bibendum mattis a ut sem. Aenean molestie lobortis mollis.'
  , '1'),

( '18'
  , 'Cortijo Los Bonicos'
  , 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque dui dolor, facilisis et odio at, scelerisque porttitor ante. Integer imperdiet non ligula non placerat. Ut nec purus justo. Nulla nec nisi a lacus scelerisque tempor. Praesent sit amet nulla in nisl semper feugiat id in felis. Sed at erat quis diam bibendum congue. Cras sodales posuere lacus eu gravida. Fusce ut hendrerit sapien. Nunc nunc leo, aliquet at laoreet at, cursus et odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut interdum magna sit amet lacus elementum, eu ultrices urna sollicitudin. In ac ullamcorper felis, ac posuere elit. Vivamus vulputate magna massa, quis sagittis mi cursus vel. Quisque sed tellus nec ligula porta cursus. Nulla facilisi. Nulla diam ipsum, lacinia et massa vel, posuere laoreet lorem. Pellentesque elit nibh, faucibus vel sollicitudin id, scelerisque quis sapien. Quisque condimentum eu mauris eu sagittis. Integer semper ante metus, non semper nulla interdum et. Phasellus vitae tempus diam. Nulla ac metus non odio malesuada lacinia. Morbi vitae consequat risus, et gravida erat. Nullam vel lorem id dolor pellentesque consequat ac nec arcu. Morbi tempus volutpat risus ac varius. Aliquam vel iaculis est. Aliquam vitae metus quis velit auctor porta id eu urna. Ut enim elit, venenatis vitae turpis eget, pretium condimentum neque. Integer arcu eros, accumsan eget turpis non, sagittis porttitor lorem. Vestibulum et ante ac felis rutrum condimentum. Vivamus lacinia diam id pretium lacinia. Vestibulum lobortis, lorem eget convallis pretium, mauris est congue elit, in ultricies sem lectus at mi. Etiam eu pellentesque sem. Duis ornare tortor mauris. Nunc velit ipsum, iaculis non rhoncus ac, congue in quam. Aliquam feugiat tellus a arcu auctor tempus. Donec sit amet luctus dui. Quisque nulla tortor, lobortis mollis blandit ullamcorper, varius cursus nulla. Sed eget pretium diam. Etiam ut turpis scelerisque, adipiscing nisl ac, mollis nibh. Aliquam gravida enim eget laoreet elementum. Integer faucibus quis libero ut tincidunt. Nunc in lectus at nulla bibendum mattis a ut sem. Aenean molestie lobortis mollis.'
  , '1'),

( '19'
  , 'Urbanización Playasol'
  , 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque dui dolor, facilisis et odio at, scelerisque porttitor ante. Integer imperdiet non ligula non placerat. Ut nec purus justo. Nulla nec nisi a lacus scelerisque tempor. Praesent sit amet nulla in nisl semper feugiat id in felis. Sed at erat quis diam bibendum congue. Cras sodales posuere lacus eu gravida. Fusce ut hendrerit sapien. Nunc nunc leo, aliquet at laoreet at, cursus et odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut interdum magna sit amet lacus elementum, eu ultrices urna sollicitudin. In ac ullamcorper felis, ac posuere elit. Vivamus vulputate magna massa, quis sagittis mi cursus vel. Quisque sed tellus nec ligula porta cursus. Nulla facilisi. Nulla diam ipsum, lacinia et massa vel, posuere laoreet lorem. Pellentesque elit nibh, faucibus vel sollicitudin id, scelerisque quis sapien. Quisque condimentum eu mauris eu sagittis. Integer semper ante metus, non semper nulla interdum et. Phasellus vitae tempus diam. Nulla ac metus non odio malesuada lacinia. Morbi vitae consequat risus, et gravida erat. Nullam vel lorem id dolor pellentesque consequat ac nec arcu. Morbi tempus volutpat risus ac varius. Aliquam vel iaculis est. Aliquam vitae metus quis velit auctor porta id eu urna. Ut enim elit, venenatis vitae turpis eget, pretium condimentum neque. Integer arcu eros, accumsan eget turpis non, sagittis porttitor lorem. Vestibulum et ante ac felis rutrum condimentum. Vivamus lacinia diam id pretium lacinia. Vestibulum lobortis, lorem eget convallis pretium, mauris est congue elit, in ultricies sem lectus at mi. Etiam eu pellentesque sem. Duis ornare tortor mauris. Nunc velit ipsum, iaculis non rhoncus ac, congue in quam. Aliquam feugiat tellus a arcu auctor tempus. Donec sit amet luctus dui. Quisque nulla tortor, lobortis mollis blandit ullamcorper, varius cursus nulla. Sed eget pretium diam. Etiam ut turpis scelerisque, adipiscing nisl ac, mollis nibh. Aliquam gravida enim eget laoreet elementum. Integer faucibus quis libero ut tincidunt. Nunc in lectus at nulla bibendum mattis a ut sem. Aenean molestie lobortis mollis.'
  , '1'),

( '20'
  , 'Edificio La Plata'
  , 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque dui dolor, facilisis et odio at, scelerisque porttitor ante. Integer imperdiet non ligula non placerat. Ut nec purus justo. Nulla nec nisi a lacus scelerisque tempor. Praesent sit amet nulla in nisl semper feugiat id in felis. Sed at erat quis diam bibendum congue. Cras sodales posuere lacus eu gravida. Fusce ut hendrerit sapien. Nunc nunc leo, aliquet at laoreet at, cursus et odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut interdum magna sit amet lacus elementum, eu ultrices urna sollicitudin. In ac ullamcorper felis, ac posuere elit. Vivamus vulputate magna massa, quis sagittis mi cursus vel. Quisque sed tellus nec ligula porta cursus. Nulla facilisi. Nulla diam ipsum, lacinia et massa vel, posuere laoreet lorem. Pellentesque elit nibh, faucibus vel sollicitudin id, scelerisque quis sapien. Quisque condimentum eu mauris eu sagittis. Integer semper ante metus, non semper nulla interdum et. Phasellus vitae tempus diam. Nulla ac metus non odio malesuada lacinia. Morbi vitae consequat risus, et gravida erat. Nullam vel lorem id dolor pellentesque consequat ac nec arcu. Morbi tempus volutpat risus ac varius. Aliquam vel iaculis est. Aliquam vitae metus quis velit auctor porta id eu urna. Ut enim elit, venenatis vitae turpis eget, pretium condimentum neque. Integer arcu eros, accumsan eget turpis non, sagittis porttitor lorem. Vestibulum et ante ac felis rutrum condimentum. Vivamus lacinia diam id pretium lacinia. Vestibulum lobortis, lorem eget convallis pretium, mauris est congue elit, in ultricies sem lectus at mi. Etiam eu pellentesque sem. Duis ornare tortor mauris. Nunc velit ipsum, iaculis non rhoncus ac, congue in quam. Aliquam feugiat tellus a arcu auctor tempus. Donec sit amet luctus dui. Quisque nulla tortor, lobortis mollis blandit ullamcorper, varius cursus nulla. Sed eget pretium diam. Etiam ut turpis scelerisque, adipiscing nisl ac, mollis nibh. Aliquam gravida enim eget laoreet elementum. Integer faucibus quis libero ut tincidunt. Nunc in lectus at nulla bibendum mattis a ut sem. Aenean molestie lobortis mollis.'
  , '1')
;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

CREATE TABLE `tipo` (
  `id` tinyint(1) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo`
--

INSERT INTO `tipo` (`id`, `nombre`) VALUES
('0', 'No asignado'),
('1', 'Arquitecto'),
('2', 'Arquitecto técnico'),
('3', 'Ingeniero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajador`
--

CREATE TABLE `trabajador` (
  `dni` varchar(10) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `fechaNacimiento` DATE,
  `telefono` varchar(9) ,
  `tipo` tinyint(1) NOT NULL,
  PRIMARY KEY (`dni`),
  KEY `tipo` (`tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `trabajador`
--

INSERT INTO `trabajador` (`dni`, `nombre`, `apellidos`, `fechaNacimiento`, `telefono`, `tipo`) VALUES
('11111111A', 'Rafael', 'Prats Vieira', '1989-11-02', '666666661', '3'),
('22222222A', 'Pepe', 'Martínez López', '1963-03-07', '666666662', '2'),
('33333333A', 'Luis', 'Gutierrez Hernández', '1982-05-03', '666666663', '3'),
('44444444A', 'Manuel', 'Otroapellidez Acabadoenez', '1970-02-05', '666666664', '1'),
('55555555A', 'Pablo', 'Fernández Fernández', '1974-02-05', '666666665', '1'),
('66666666A', 'José', 'Gonzalez López', '1980-02-24', '666666666', '2'),
('77777777A', 'Amparo', 'Blasco Pera', '1982-10-05', '666666667', '1'),
('88888888A', 'Josefa', 'Cruces Martos', '1960-08-30', '666666668', '1'),
('99999999A', 'Ambrosio', 'García Moreno', '1968-04-15', '666666669', '2'),
('11111111B', 'Mario', 'Martínez Ruiz', '1977-11-05', '666666610', '1'),
('22222222B', 'Álvaro', 'Mesa Canillas', '1980-06-10', '666666611', '3'),
('33333333B', 'Ana', 'Moreno Walls', '1970-03-18', '666666612', '3'),
('44444444B', 'Cándido', 'Vargas Mota', '1984-01-12', '666666613', '2'),
('66666666B', 'Agustín', 'Méndez García', '1960-08-27', '666666614', '1'),
('55555555B', 'Miguel', 'Botín Borrego', '1964-07-25', '666666615', '2'),
('77777777B', 'Pedro', 'Capazo Martín', '1976-05-29', '666666616', '1'),
('88888888B', 'Noelia', 'Martínez Olea', '1990-08-12', '666666617', '2'),
('99999999B', 'Lorenzo', 'Piezo Varón', '1960-09-15', '666666618', '3'),
('11111111C', 'Jesús', 'Cristóbal Col', '1975-02-13', '666666619', '3'),
('22222222C', 'Bienvenido', 'Gutiérrez Merino', '1969-04-07', '666666620', '1'),
('33333333C', 'Laura', 'Copón Chico', '1988-09-01', '666666621', '2'),
('44444444C', 'Roberto', 'Camino Ruiz', '1982-03-12', '666666622', '1'),
('66666666C', 'Antonio', 'Martínez Sota', '1968-10-27', '666666623', '1'),
('55555555C', 'José', 'Zubirí Rotas', '1979-12-05', '666666624', '3'),
('77777777C', 'Pedro', 'Granito Pérez', '1988-01-01', '666666625', '2'),
('88888888C', 'Marta', 'Simón Jimenez', '1979-02-19', '666666626', '3'),
('99999999C', 'Lorena', 'Juárez Soto', '1960-11-02', '666666627', '1'),
('11111111D', 'Antonio', 'Sánchez Ramón', '1970-10-10', '666666628', '2'),
('22222222D', 'Marcos', 'Granados Vallejo', '1977-12-14', '666666629', '2'),
('33333333D', 'Andrés', 'Serón Rodriguez', '1966-02-10', '666666630', '1'),
('44444444D', 'Carlos', 'Sanchez Rosa', '1971-08-19', '666666631', '3'),
('66666666D', 'Angustias', 'Colmenero Aguijón', '1987-02-22', '666666632', '1'),
('55555555D', 'Manuel', 'López Gázquez', '1962-09-05', '666666633', '1'),
('77777777D', 'Pepelu', 'García Molina', '1975-05-11', '666666634', '2'),
('88888888D', 'Pablo', 'Vázquez Martín', '1985-07-26', '666666635', '2'),
('99999999D', 'Phillip', 'J. Fry', '1960-03-06', '666666636', '3')
;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabaja_en`
--

CREATE TABLE `trabaja_en` (
  `dni` varchar(10) NOT NULL,
  `idProyecto` int(10) unsigned NOT NULL,
  PRIMARY KEY (`dni`,`idProyecto`),
  KEY `idProyecto` (`idProyecto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `trabajador`
--

INSERT INTO `trabaja_en`  VALUES
('11111111A', '1'),
('11111111A', '2'),
('11111111A', '5'),
('11111111A', '7'),
('22222222A', '2'),
('22222222A', '17'),
('22222222A', '9'),
('33333333A', '12'),
('33333333A', '7'),
('44444444A', '6'),
('44444444A', '18'),
('44444444A', '11'),
('44444444A', '12'),
('55555555A', '10'),
('55555555A', '1'),
('55555555A', '9'),
('66666666A', '5'),
('66666666A', '19'),
('77777777A', '9'),
('77777777A', '16'),
('77777777A', '19'),
('77777777A', '4'),
('88888888A', '12'),
('88888888A', '20'),
('88888888A', '1'),
('99999999A', '13'),
('99999999A', '1'),
('11111111B', '1'),
('11111111B', '2'),
('11111111B', '5'),
('11111111B', '7'),
('22222222B', '2'),
('22222222B', '17'),
('22222222B', '9'),
('33333333B', '12'),
('33333333B', '7'),
('44444444B', '6'),
('44444444B', '18'),
('44444444B', '11'),
('44444444B', '12'),
('55555555B', '10'),
('55555555B', '1'),
('55555555B', '9'),
('66666666B', '5'),
('66666666B', '19'),
('77777777B', '9'),
('77777777B', '16'),
('77777777B', '19'),
('77777777B', '4'),
('88888888B', '12'),
('88888888B', '20'),
('88888888B', '1'),
('99999999B', '13'),
('99999999B', '1'),
('11111111C', '1'),
('11111111C', '2'),
('11111111C', '5'),
('11111111C', '7'),
('22222222C', '2'),
('22222222C', '17'),
('22222222C', '9'),
('33333333C', '12'),
('33333333C', '7'),
('44444444C', '6'),
('44444444C', '18'),
('44444444C', '11'),
('44444444C', '12'),
('55555555C', '10'),
('55555555C', '1'),
('55555555C', '9'),
('66666666C', '5'),
('66666666C', '19'),
('77777777C', '9'),
('77777777C', '16'),
('77777777C', '19'),
('77777777C', '4'),
('88888888C', '12'),
('88888888C', '20'),
('88888888C', '1'),
('99999999C', '13'),
('99999999C', '1')
;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `trabajador`
--
ALTER TABLE `trabajador`
  ADD CONSTRAINT `trabajador_ibfk_1` FOREIGN KEY (`tipo`) REFERENCES `tipo` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `trabaja_en`
--
ALTER TABLE `trabaja_en`
  ADD CONSTRAINT `trabaja_en_ibfk_1` FOREIGN KEY (`dni`) REFERENCES `trabajador` (`dni`) ON DELETE CASCADE,
  ADD CONSTRAINT `trabaja_en_ibfk_2` FOREIGN KEY (`idProyecto`) REFERENCES `proyecto` (`id`) ON DELETE CASCADE;
