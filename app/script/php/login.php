<?php

function	login($user)
{
	$_SESSION['user']['id'] = $user['id'];
	$_SESSION['user']['email'] = $user['email'];
	$_SESSION['user']['password_length'] = $user['password_length'];
	$_SESSION['user']['username'] = $user['username'];
	$_SESSION['user']['n_like'] = $user['notif_like'];
	$_SESSION['user']['n_comment'] = $user['notif_comment'];
	$_SESSION['user']['n_message'] = $user['notif_message'];
}

function	check_password($password, $passwordbis)
{
	$password_len = strlen($password);
	if ($password != $passwordbis)
		return ("Password and retyped password doesn't match");
	if ($password_len < 8)
		return ("Password too short");
	if ($password_len > 50)
		return ("Password too long");
	if (!preg_match('/[A-Z]/', $password)
		|| !preg_match('/[a-z]/', $password)
		|| !preg_match('/[0-9]/', $password)
		|| !preg_match('/@|!|\.|,|-|_/', $password))
		return ('Password too easy. It must contain uppercase, lowercase, number, and special charactere like ( @ ! - _ , . )');
	return (TRUE);
}

function	hash_password($password)
{
	$hash = hash('whirlpool', $password);
// password_hash("rasmuslerdorf", PASSWORD_DEFAULT);
// bool password_verify ( string $password , string $hash )
	return ($hash);
}

function	check_email($email)
{
	if (empty($email))
		return ("Empty email");
	if (filter_var($email, FILTER_VALIDATE_EMAIL) === FALSE)
		return ("Invalid email");
	$load = new Loader();
	$data['email'] = $email;
	$nb = $load->model('register', 'count_user_by_email', $data);
	if ($nb !== 0)
		return ('Email taken');
	return (TRUE);
}

function	check_username($username)
{
	if (strlen($username) < 3)
		return ('Username too short');
	if (strlen($username) > 30)
		return ('Username too long');
	if (!preg_match("/^[a-zA-Z0-9_\-\.]+$/", $username))
		return ('Username characters can be min, maj, number, underscore, dash, or dot, noting else');
	$load = new Loader();
	$data['username'] = $username;
	$nb = $load->model('register', 'count_user_by_username', $data);
	if ($nb !== 0)
		return ('Username taken');
	return (TRUE);
}

