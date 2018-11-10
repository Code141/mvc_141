<?php

class Db_register extends Model
{
	function count_user_by_email($data)
	{
		$sql = "
			SELECT *
			FROM user
			WHERE
			email = :email 
		";
		$this->pdo_stm = $this->pdo->prepare($sql);
		$this->pdo_stm->bindParam("email", $data['email'], PDO::PARAM_STR);
		$this->execute_pdo();
		$nb = count($this->pdo_stm->fetchAll(PDO::FETCH_ASSOC));
		return ($nb);
	}

	function count_user_by_username($data)
	{
		$sql = "
			SELECT *
			FROM user
			WHERE
			username = :username
		";
		$this->pdo_stm = $this->pdo->prepare($sql);
		$this->pdo_stm->bindParam("username", $data['username'], PDO::PARAM_STR);
		$this->execute_pdo();
		$nb = count($this->pdo_stm->fetchAll(PDO::FETCH_ASSOC));
		return ($nb);
	}

	function register($data)
	{
		$sql = "
			INSERT INTO user
			VALUES ( NULL, :email, :password, :username, 1, 1, 1, :token, :reset_pass)
		"; 
		$this->pdo_stm = $this->pdo->prepare($sql);
		$this->pdo_stm->bindParam("email", $data['email'], PDO::PARAM_STR);
		$this->pdo_stm->bindParam("password", $data['password'], PDO::PARAM_STR);
		$this->pdo_stm->bindParam("username", $data['username'], PDO::PARAM_STR);
		$this->pdo_stm->bindParam("token", $data['token'], PDO::PARAM_STR);
		$reset_pass_obstruct = hash('whirlpool', $data['password']);
		$this->pdo_stm->bindParam("reset_pass", $reset_pass_obstruct, PDO::PARAM_STR);
		$this->execute_pdo();
		$last_id = $this->pdo->lastinsertid();
		return ($last_id);
	}

	function get_user_by_mail($data)
	{
		$sql = "
			SELECT *
			FROM user
			WHERE
			email = :email 
		"; 
		$this->pdo_stm = $this->pdo->prepare($sql);
		$this->pdo_stm->bindParam("email", $data['email'], PDO::PARAM_STR);
		$this->execute_pdo();
		$user = $this->pdo_stm->fetchAll(PDO::FETCH_ASSOC);
		if (count($user) != 1)
			return (NULL);
		return ($user[0]);
	}

	function validate_account($data)
	{
		$sql = "
			UPDATE user
			SET validated_account = 'TRUE'
			WHERE id = :id_user
		";
		$this->pdo_stm = $this->pdo->prepare($sql);
		$this->pdo_stm->bindParam("id_user", $data['user']['id'], PDO::PARAM_INT);
		$this->execute_pdo();
	}


}

