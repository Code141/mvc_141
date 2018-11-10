<?php

define('DEV_MODE', TRUE);

if (DEV_MODE)
{
	error_reporting(E_ALL | E_STRICT);
	ini_set('display_errors', 'on');
}

define('APP_NAME', 'camagru');
define('SITE_ROOT', '/mvc_141/');
define('DEFAULT_CONTROLLER', 'home');
define('DEFAUT_ACTION', 'main');

define('SERVER_ROOT', $_SERVER['DOCUMENT_ROOT'] . SITE_ROOT);
define('SITE_ABSOLUTE', $_SERVER['HTTP_HOST'] . SITE_ROOT);
define('CORE_PATH', SERVER_ROOT.'core/');
define('CONFIG_PATH', SERVER_ROOT.'config/');
define('APP_PATH', SERVER_ROOT.'app/');
define('CSS_PATH', SITE_ROOT . 'app/assets/css/');
define('IMG_PATH', SITE_ROOT . 'app/assets/img/');
define('MEDIA_PATH', SITE_ROOT . 'app/assets/media/');
define('JS_PATH', SITE_ROOT . 'app/script/js/');

