<?php

class v_home extends v_view
{
	public function main($params = NULL)
	{
		echo 'v_home';
		$this->html_files[] = 'home';
		$this->linear_render();
	}
}
