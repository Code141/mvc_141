<?php

class Db_login extends Model
{
	function get_user_by_username($data)
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
		$user = $this->pdo_stm->fetchAll(PDO::FETCH_ASSOC);
		if (count($user) != 1)
			return (NULL);
		return ($user[0]);
	}
}

