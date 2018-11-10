<?php

class editor extends controller_restricted
{
	public function main($params = NULL)
	{
		$this->data['id_user'] = $_SESSION['user']['id'];
		$this->data['db']['user_media'] =
			$this->load->model('media', 'get_media_by_user_id', $this->data);
		$masks = scandir(SERVER_ROOT . "app/assets/media/masks");
		$masks = preg_grep("/^([0-9]+.png)$/", $masks);
		$masks = preg_replace("/.png/", "", $masks);
		$this->data['masks'] = $masks;
		$this->data['title'] = 'Editor';
		$this->files['css'][] = 'editor';
		$this->files['js'][] = 'send_picture';
		$this->files['js'][] = 'webcam';
		$this->files['views']['left'] = 'editor/left_side';
		$this->files['views']['center'] = 'editor/editor';
		$this->files['views']['right'] = 'editor/right_side';
		$this->render();
	}
}
