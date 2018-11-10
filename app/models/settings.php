<?php

class Db_settings extends Model
{
	function update_username($data)
	{
		$sql = "
			UPDATE user
			SET username = :new_username
			WHERE id = :user_id
		";
		$this->pdo_stm = $this->pdo->prepare($sql);
		$this->pdo_stm->bindParam("new_username", $data['new_username'], PDO::PARAM_STR);
		$this->pdo_stm->bindParam("user_id", $_SESSION['user']['id'], PDO::PARAM_INT);
		$this->execute_pdo();
	}

	function update_password($data)
	{
		$sql = "
			UPDATE user
			SET password = :new_password
			WHERE id = :user_id
		";
		$this->pdo_stm = $this->pdo->prepare($sql);
		$this->pdo_stm->bindParam("new_password", $data['new_password'], PDO::PARAM_STR);
		$this->pdo_stm->bindParam("user_id", $data['id_user'], PDO::PARAM_INT);
		$this->execute_pdo();
	}

	function update_email($data)
	{
		$sql = "
			UPDATE user
			SET email = :new_email
			WHERE id = :user_id
		";
		$this->pdo_stm = $this->pdo->prepare($sql);
		$this->pdo_stm->bindParam("new_email", $data['new_email'], PDO::PARAM_STR);
		$this->pdo_stm->bindParam("user_id", loggued_id(), PDO::PARAM_INT);
		$this->execute_pdo();
	}

	function update_notif($data)
	{
		$sql = "
			UPDATE user
			SET notif_like = :n_like,
				notif_comment = :n_comm,
				notif_message = :n_msg
			WHERE id = :user_id
		";
		$this->pdo_stm = $this->pdo->prepare($sql);
		$this->pdo_stm->bindParam("n_like", $data['n_like'], PDO::PARAM_INT);
		$this->pdo_stm->bindParam("n_comm", $data['n_comm'], PDO::PARAM_INT);
		$this->pdo_stm->bindParam("n_msg", $data['n_msg'], PDO::PARAM_INT);
		$this->pdo_stm->bindParam("user_id", $_SESSION['user']['id'], PDO::PARAM_INT);
		$this->execute_pdo();
	}

	function delete_password_reset_hash($data)
	{
		$sql = "
			UPDATE user
			SET reset_password = ''
			WHERE id = :user_id
		";
		$this->pdo_stm = $this->pdo->prepare($sql);
		$this->pdo_stm->bindParam("user_id", $data['id_user'], PDO::PARAM_INT);
		$this->execute_pdo();
	}


}

