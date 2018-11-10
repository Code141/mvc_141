<?php

class db_comments extends model
{
	function comment_media(array $data = null)
	{
		$loggued_id = loggued_id();
		$sql = "
			INSERT INTO comments
			VALUES (
				NULL,
				:id_media,
				:id_user,
				:comment,
				now()
				)
		";
		$this->pdo_stm = $this->pdo->prepare($sql);
		$this->pdo_stm->bindparam("id_media", $data['id_media'], PDO::PARAM_INT);
		$this->pdo_stm->bindparam("id_user", $loggued_id, PDO::PARAM_INT);
		$this->pdo_stm->bindparam("comment", $data['comment'], PDO::PARAM_STR);
		$this->execute_pdo();
	}

	function get_comment_by_id(array $data = null)
	{
		$sql = "
			SELECT *
			FROM comments
			WHERE id = :id_comment
		";

		$this->pdo_stm = $this->pdo->prepare($sql);
		$this->pdo_stm->bindparam("id_comment", $data['id_comment'], PDO::PARAM_INT);
		$this->execute_pdo();
		$comments = $this->pdo_stm->fetchall(PDO::FETCH_ASSOC);
		if (!isset($comments[0]))
			return (NULL);
		return ($comments[0]);
	}


	function get_comments_by_media_id(array $data = null)
	{
		$sql = "
			SELECT c.*, u.username, u.id as id_user
			FROM comments c
			LEFT JOIN user u
			ON c.id_user = u.id
			WHERE c.id_media = :id_media
			ORDER BY id DESC
		";

		$this->pdo_stm = $this->pdo->prepare($sql);
		$this->pdo_stm->bindparam("id_media", $data['id_media'], PDO::PARAM_INT);
		$this->execute_pdo();
		$comments = $this->pdo_stm->fetchall(PDO::FETCH_ASSOC);
		return ($comments);
	}

	function delete_comment_by_id(array $data = null)
	{
		$sql = "
			DELETE FROM comments
			WHERE id = :id_comment
		";
		$this->pdo_stm = $this->pdo->prepare($sql);
		$this->pdo_stm->bindparam("id_comment", $data['id_comment'], PDO::PARAM_INT);
		$this->execute_pdo();
	}

	function delete_comments_by_media_id(array $data = null)
	{
		$sql = "
			DELETE FROM comments
			WHERE id_media = :id_media
		";
		$this->pdo_stm = $this->pdo->prepare($sql);
		$this->pdo_stm->bindparam("id_media", $data['id_media'], PDO::PARAM_INT);
		$this->execute_pdo();
	}
}

