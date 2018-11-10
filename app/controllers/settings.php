<?php

class settings extends controller_restricted
{
	public function main($params = NULL)
	{
		$this->data['title'] = 'Settings';
		$this->files['css'][] = 'settings';
		$this->files['views']['center'] = 'settings';
		$this->render();
	}

	public function	update_username($params = NULL)
	{
		$this->load->script('php', 'login');
		if (!isset($_POST["username"]))
			$this->fail ("Username is unset", "main");
		$this->data['new_username'] = $_POST['username'];
		if (($err = check_username($this->data['new_username'])) !== TRUE)
			$this->fail("Updating username failed : " . $err, "main");
		$this->load->model('settings', 'update_username', $this->data);
		$_SESSION['user']['username'] = $this->data['new_username'];
		$this->success("Username updated", "main");
	}

	public function	update_email($params = NULL)
	{
		$this->load->script('php', 'login');
		if (!isset($_POST['email']))
			$this->fail ("Email is unset", "main");
		$email = $_POST['email'];
		if (($err = check_email($email)) !== TRUE)
			$this->fail ($err, "main");
		$this->data['new_email'] = $email;
		$this->load->model('settings', 'update_email', $this->data);
		// CONFIRMATION MAIL REQUIRED
		$_SESSION['user']['email'] = $email;
		$this->success("Email updated", "main", "settings");
	}

	public function	update_password($params = NULL)
	{
		$this->load->script('php', 'login');
		if (!isset($_POST["password"]))
			$this->fail("Password is unset", "main");
		if (!isset($_POST["passwordbis"]))
			$this->fail ("Re-typed password is unset", "main");
		$password = $_POST['password'];
		$passwordbis = $_POST['passwordbis'];
		if (($err = check_password($password, $passwordbis)) !== TRUE)
			$this->fail ($err, "main");
		$this->data['new_password'] = hash_password($password);
		$this->load->model('settings', 'update_password', $this->data);
		$_SESSION['user']['password_length'] = strlen($password);
		$this->success("Password updated", "main", "settings");
	}

	public function	update_notifications($params = NULL)
	{
		$this->load->script('php', 'login');
		$this->data["n_like"] = 0;
		$this->data["n_comm"] = 0;
		$this->data["n_msg"] = 0;
		if (isset($_POST["n_like"]) && $_POST["n_like"] == "1")
			$this->data["n_like"] = 1;
		if (isset($_POST["n_comm"]) && $_POST["n_comm"] == "1")
			$this->data["n_comm"] = 1;
		if (isset($_POST["n_msg"]) && $_POST["n_msg"] == "1")
			$this->data["n_msg"] = 1;
		$this->load->model('settings', 'update_notif', $this->data);
		$_SESSION['user']['n_like'] = $this->data["n_like"];
		$_SESSION['user']['n_comm'] = $this->data["n_comm"];
		$_SESSION['user']['n_msg'] = $this->data["n_msg"];
		$this->success("Notifications updated", "main", "settings");
	}
}
