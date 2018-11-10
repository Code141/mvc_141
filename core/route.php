<?php

function	parse_uri($uri)
{
	$pattern = "~^" . SITE_ROOT . "~";
	$uri = preg_replace($pattern, "", $uri);
	$uri = preg_replace('/[\x00-\x1F\x7F-\xFF]/', '', $uri);
	$uri = strtok($uri, '?');
	$uri = trim($uri, '/');
	$exploded_uri = explode('/', $uri);
	$request['controller'] = ($exploded_uri[0] != '') ? $exploded_uri[0] : DEFAULT_CONTROLLER;
	$request['action'] = (isset($exploded_uri[1])) ? $exploded_uri[1] : DEFAUT_ACTION;
	$request['params'] = (isset($exploded_uri[2])) ? array_slice($exploded_uri, 2) : NULL;
	return ($request);
}

$request = parse_uri($_SERVER['REQUEST_URI']);

$ctrl = $request['controller'];
if ($ctrl !== "login"
	&& $ctrl !== "logout"
	&& $ctrl !== "register"
	&& $ctrl !== "media"
	&& $ctrl !== "like"
	&& $ctrl !== "comment")
{
	$_SESSION['last_url']['controller'] = $request['controller'];
	$_SESSION['last_url']['action'] = $request['action'];
	$_SESSION['last_url']['params'] = $request['params'];
}

if (!isset($_SESSION['last_url']))
{
	$_SESSION['last_url']['controller'] = DEFAULT_CONTROLLER;
	$_SESSION['last_url']['action'] = DEFAUT_ACTION;
}

if (!isset($_SESSION['last_url']['controller']))
{
	$_SESSION['last_url']['controller'] = DEFAULT_CONTROLLER;
	$_SESSION['last_url']['action'] = DEFAUT_ACTION;
}

if (empty($_SESSION['last_url']['action']))
	$_SESSION['last_url']['action'] = DEFAUT_ACTION;

if (empty($_SESSION['last_url']['params']))
	$_SESSION['last_url']['params'] = NULL;
