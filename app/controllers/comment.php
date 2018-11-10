<?php

class comment extends controller_restricted
{
	public function add($params = NULL)
	{
		if (!isset($_POST['comment']))
			$this->fail("Comment empty !");
		$this->data['comment'] = $_POST['comment'];
		if (empty($this->data['comment']))
			$this->fail("Comment empty !");
		if (strlen($this->data['comment']) > 300)
			$this->fail("Comment too large (300 characteres max)");
		$url_regex = "/https?:\/\/(www\.)?[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%\_\+.~#?&\/\/=]*)/";
		if (preg_match($url_regex, $this->data['comment']))
			$this->fail("Comment musn't contain url");
		$this->data["id_media"] = intval($params[0]);
		$media = $this->load->model('media', 'get_media_by_id', $this->data);
		if ($media == NULL)
			$this->fail("Media doesn't exist !");
		$this->load->model('comments', 'comment_media', $this->data);
		$user_to = new entity_user($media["id_user"]);
		if ($user_to === NULL)
			$this->fail("User to mail don't existe.");
		$user_from = new entity_user(loggued_id());
		if ($user_from === NULL)
			$this->fail("User from mail don't existe.");
		$mail = new entity_email($user_to);
		$mail->notif_comment($user_from, $media, $this->data['comment']);
		$this->success("Comment added !");
	}

	public function delete($params = NULL)
	{
		if (!isset($params[0]))
			$this->fail("Comment invalid");
		$this->data['id_comment'] = intval($params[0]);
		$comment = $this->load->model('comments', 'get_comment_by_id', $this->data);
		if ($comment == NULL)
			$this->fail("This comment doesn't existe !");
		if ($comment['id_user'] != loggued_id())
			$this->fail("This comment is not your property !");
		$this->load->model('comments', 'delete_comment_by_id', $this->data);
		$this->success("Comment deleted !");
	}

}
