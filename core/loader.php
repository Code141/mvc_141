<?php

class Loader
{
	public function controller($controller)
	{
		if (is_readable(APP_PATH.'controllers/' . $controller . '.php'))
			require_once(APP_PATH.'controllers/' . $controller . '.php');
		else
			$controller = "controller";

		if (!class_exists($controller))
			$controller = "controller";
		return (new $controller());
	}

	public function model($model_file, $model, $params = NULL)
	{
		require_once(APP_PATH . 'models/' . $model_file . '.php');
		$calledmodel = 'Db_' . $model_file;
		$pdo = new $calledmodel();
		return($pdo->$model($params));
	}

	public function entity($entity)
	{
		require_once(APP_PATH . 'entity/' . $entity . '.php');
	}

	public function script($type, $file, array $data = NULL)
	{
		require_once(APP_PATH . 'script/' . $type . '/' . $file . '.' . $type);
		return ($data);
	}

}

