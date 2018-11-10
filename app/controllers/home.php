<?php

class home extends controller
{
	public function main($params = NULL)
	{
		$this->data['title'] = "Home";
		$this->files['css'][] = 'home';
		$this->files['views']['center'] = 'home';
		$this->render();
	}
}
