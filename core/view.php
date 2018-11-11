<?php

class v_view
{
	public $html_files = array();
	public $css_files = array();
	public $js_files = array();

	public $data = array();

	public $prompter = array(
		"success" => "",
		"fail" => "");

	public function __construct()
	{
		$this->load = new loader();
		$this->load->entity('user');
		$this->load->entity('email');
	}

	private function protect_html_injection(array $data)
	{
		foreach ($data as $key => $value)
			if (is_string($value))
				$data[$key] = htmlspecialchars($value);
			else if (is_array($value))
				$data[$key] = $this->protect_html_injection($value);
			else
				$data[$key] = $value;
		return ($data);
	}

	protected function	render()
	{
		$this->data = $this->protect_html_injection($this->data);
		if (is_ajax_query())
			$this->ajax_render();
		else
			$this->regular_render();
	}
	
	protected function	linear_render()
	{
		foreach($this->html_files as $key => $filename)
		{
			$this->load->html($filename);
		}
	
	}
	private function ajax_render()
	{
		foreach($this->files['views'] as $key => $filename)
		{
			ob_start();
			$this->load->html($filename);
			$html_file =  ob_get_contents();
			$html_file = str_replace(array("\t", "\r", "\n"), "", $html_file);
			$html[$key] = $html_file;
			ob_clean();
		}
		$data = array(
			"prompter" => $this->prompter,
			"html" => $html
		);
		$json_response = json_encode($data);
		header("Content-Type: application/json");
		echo ($json_response);
	}

	private function regular_render()
	{
		$basic_css[] = 'reset';
		$basic_css[] = 'style';
		$basic_css[] = 'input';
		$basic_css[] = 'glyphicons';
		$this->css_files = array_merge($basic_css, $this->css_files);

		if (!isset($this->view_files['header']))
			$this->view_files['header'] = 'header';

		if (!isset($this->view_files['center']))
			$this->view_files['center'] = 'msg';

		if (!isset($this->view_files['footer']))
			$this->view_files['footer'] = 'footer';

		$this->load->html("default_layout");
	}

	public function __destruct()
	{
	}
}
