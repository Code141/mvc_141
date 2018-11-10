<?php

class Db_media extends model
{
	function add_media(array $data = null)
	{
		$loggued_id = loggued_id();
		$sql = "
			INSERT INTO media
			VALUES (
				NULL,
				:id_user,
				now()
				)
		";
		$this->pdo_stm = $this->pdo->prepare($sql);
		$this->pdo_stm->bindparam("id_user", $loggued_id, PDO::PARAM_INT);
		$this->execute_pdo();
		$last_id = $this->pdo->lastinsertid();
		return ($last_id);
	}

	function delete_media(array $data = null)
	{
		$loggued_id = loggued_id();
		$sql = "
			DELETE FROM media
			WHERE id = :id_media
		";
		$this->pdo_stm = $this->pdo->prepare($sql);
		$this->pdo_stm->bindparam("id_media", $data['id_media'], PDO::PARAM_INT);
		$this->execute_pdo();
	}

	function get_all_media(array $data = null)
	{
		$loggued_id = loggued_id();
		$sql = "
			SELECT *
			FROM media m
		";
		$this->pdo_stm = $this->pdo->prepare($sql);
		$this->execute_pdo();
		$all_media = $this->pdo_stm->fetchall(PDO::FETCH_ASSOC);
		return ($all_media);
	}

	function get_media_from_to(array $data = null)
	{
		$loggued_id = loggued_id();
		$sql = "
			SELECT m.id, u.id as id_user, u.username, m.date, count(l.grade) AS nb_grades, AVG(l.grade) AS avg_grades
			FROM media m
			LEFT JOIN user u
			ON m.id_user = u.id
			LEFT JOIN likes l
			ON m.id = l.id_media
			GROUP BY m.id
			ORDER BY m.id DESC
			LIMIT :start, :offset
		";
		$this->pdo_stm = $this->pdo->prepare($sql);
		$this->pdo_stm->bindparam("start", $data['start'], PDO::PARAM_INT);
		$this->pdo_stm->bindparam("offset", $data['offset'], PDO::PARAM_INT);
		$this->execute_pdo();
		$all_media = $this->pdo_stm->fetchall(PDO::FETCH_ASSOC);
		return ($all_media);
	}

	function get_media_by_user_id(array $data = null)
	{
		$sql = "
			SELECT m.id, m.date, u.username, u.id as id_user, count(l.grade) AS nb_grades, AVG(l.grade) AS avg_grades
			FROM media m
			LEFT JOIN user u
			ON m.id_user = u.id
			LEFT JOIN likes l
			ON m.id = l.id_media
			WHERE m.id_user = :id_user
			GROUP BY m.id
			ORDER BY id DESC
		";
		$this->pdo_stm = $this->pdo->prepare($sql);
		$this->pdo_stm->bindparam("id_user", $data['id_user'], PDO::PARAM_INT);
		$this->execute_pdo();
		$user_media = $this->pdo_stm->fetchall(PDO::FETCH_ASSOC);
		return ($user_media);
	}

	function count_media(array $data = null)
	{
		$sql = "
			SELECT count(id) as count
			FROM media
		";
		$this->pdo_stm = $this->pdo->prepare($sql);
		$this->execute_pdo();
		$count = $this->pdo_stm->fetch()["count"];
		return ($count);
	}

	function get_media_by_id(array $data = null)
	{
		$sql = "
			SELECT m.id, m.date, u.username, u.id as id_user, count(l.grade) AS nb_grades, AVG(l.grade) AS avg_grades
			FROM media m
			LEFT JOIN user u
			ON m.id_user = u.id
			LEFT JOIN likes l
			ON m.id = l.id_media
			WHERE m.id = :id_media
			GROUP BY m.id
		";
		$this->pdo_stm = $this->pdo->prepare($sql);
		$this->pdo_stm->bindparam("id_media", $data['id_media'], PDO::PARAM_INT);
		$this->execute_pdo();
		$media = $this->pdo_stm->fetchall(PDO::FETCH_ASSOC);
		if (isset($media[0]))
			return ($media[0]);
		return (null);
	}
}

