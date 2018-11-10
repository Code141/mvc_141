<?php

class like extends controller_restricted
{
	public function add($params = NULL)
	{
		$this->data["id_media"] = intval($params[0]);
		$this->data["grade"] = intval($params[1]);
		if ($this->data["grade"] < 0 || $this->data["grade"] > 10 )
			$this->fail("Invalide grade !");
		$media = $this->load->model('media', 'get_media_by_id', $this->data);
		if ($media == NULL)
			$this->fail("Media doesn't exist !");
		if ($this->load->model('likes', 'has_already_liked_this', $this->data))
			$this->load->model('likes', 'update_like_on_media_by_id', $this->data);
		else
			$this->load->model('likes', 'add_like_on_media_by_id', $this->data);
		$user_to = new entity_user($media["id_user"]);
		if ($user_to === NULL)
			$this->fail("User to mail don't existe.");
		$user_from = new entity_user(loggued_id());
		if ($user_from === NULL)
			$this->fail("User from mail don't existe.");
		$mail = new entity_email($user_to);
		$mail->notif_like($user_from, $media, $this->data['grade']);
		$this->success("You liked it");
	}
}
