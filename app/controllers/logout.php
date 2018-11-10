<?php

class logout extends controller
{
	public function main($params = NULL)
	{
		$_SESSION['user'] = NULL;
		$_SESSION = array();
		session_destroy();
		$this->success("You correctly loggued out", "main", "home");
	}
}
