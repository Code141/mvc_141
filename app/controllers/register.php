<?php

class register extends controller_public_only
{
	public function main($params = NULL)
	{
		$this->data['title'] = 'Register';
		$this->files['css'][] = 'register';
		$this->files['views']['center'] = 'register/register';
		$this->render();
	}

	public function register_success($params = NULL)
	{
		if (isset($params[0]) && !empty($params[0]))
			$this->data['email'] = $params[0];
		else
			$this->data['email'] = "your email";
		$this->data['title'] = 'Register success';
		$this->files['css'][] = 'register';
		$this->files['views']['center'] = 'register/success';
		$this->render();
	}

	public function checksingup($params = NULL)
	{
		$this->load->script('php', 'login');
		$register_fields = array( "email", "password", "passwordbis", "username");
		foreach ($register_fields as $field)
			if (!isset($_POST[$field]) || empty($_POST[$field]))
				$this->fail($field . " field is unset", "main", "register");
			else
				$this->data['register'][$field] = $_POST[$field];
		$err = check_password($this->data['register']['password'], $this->data['register']['passwordbis']);
		if ($err !== TRUE)
			$this->fail($err, "main", "register");
		$this->data['register']['password'] = hash_password($this->data['register']['password']);
		if (($err = check_email($this->data['register']['email'])) !== TRUE)
			$this->fail($err, "main", "register");
		if (($err = check_username($this->data['register']['username'])) !== TRUE)
			$this->fail($err, "main", "register");
		$this->data['register']['token'] = hash('whirlpool', uniqid());
		$id_user = $this->load->model('register', 'register', $this->data['register']);
		$user_to = new entity_user($id_user);
		if ($user_to === NULL)
			$this->fail("Probleme encountered while creating user");
		$mail = new entity_email($user_to);
		$mail->sing_up($this->data['register']['token']);
		$this->success("You succesfully registered", "register_success", "register");
	}

	public function validate_email($params = NULL)
	{
		if (empty($params[0]) || empty($params[1]))
			$this->fail("Can't validate mail", "main", "home");
		$this->data['email'] = $params[0];
		$this->data['token'] = $params[1];
		$this->data['user'] = $this->load->model('register', 'get_user_by_mail', $this->data);
		if ($this->data['user'] === NULL)
			$this->fail("Unknow mail", "main", "home");
		if ($this->data['user']['validated_account'] == "TRUE")
			$this->success("Account already valided", "main", "login");
		if ($this->data['user']['validated_account'] !== $this->data['token'])
			$this->fail("Bad token", "main", "home");
		$this->load->model('register', 'validate_account', $this->data);
		$this->success("Mail validated, you can log now", "main", "login");
	}
}

