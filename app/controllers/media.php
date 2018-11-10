<?php

class media extends controller_restricted
{
	private function remake_all_thumbs($params = NULL)
	{
		$this->load->script('php', 'pictures');
		$all_media = $this->load->model('media', 'get_all_media', $this->data);
		foreach ($all_media as $media)
		{
			$filename = $media['id'] . ".png";
			$filepath = "app/assets/media/user_media/";
			if (!is_dir($filepath))
				mkdir($filepath);
			$target = $filepath . $filename;
			$target_thumb = $filepath . "thumbs/" . $filename;
			$pic = imagecreatefromstring(file_get_contents($target));
			$thumb = make_thumb($pic, 300, 300);
			if ($thumb === NULL)
				$this->fail("Can't create thumb " . $media['id']);
			imagepng($thumb, $target_thumb);
		}
		$this->success("All thumbs regenerated !");
	}

	public function add($params = NULL)
	{
		$this->load->script('php', 'pictures');
		if (isset($_POST['masks']))
			$mask_id = intval($_POST['masks']);
		else
			$mask_id = 1;
		$mask = "app/assets/media/masks/" . $mask_id . ".png";
		if (!is_readable($mask))
			$this->fail("Incorrect mask");
		if (!isset($_FILES['img']) || empty($_FILES['img']))
			$this->fail("No file sent");
		$file = $_FILES['img'];
		if (($err = check_file($file)) !== TRUE)
			$this->fail($err);
		$image = $file['tmp_name'];
		$new_pic = resize_and_fusion($image, $mask);
		if ($new_pic === NULL)
			$this->fail("Can't make fusion image");
		$thumb = make_thumb($new_pic, 300, 300);
		if ($thumb === NULL)
			$this->fail("Can't create thumb");
		$id = $this->load->model('media', 'add_media');
		$filename = $id . ".png";
		$filepath = "app/assets/media/user_media/";
		$target = $filepath . $filename;
		$target_thumb = $filepath . "thumbs/" . $filename;
		if (!is_dir($filepath))
			mkdir($filepath);
		if (!is_dir($filepath . "thumbs/"))
			mkdir($filepath. "thumbs/");
		imagepng($new_pic, $target);
		imagepng($thumb, $target_thumb);
		$this->success("Image correctly treated");
	}

	public function delete($params = NULL)
	{
		if (!isset($params[0]))
			$this->fail("Media invalid");
		$this->data['id_media'] = intval($params[0]);
		$media = $this->load->model('media', 'get_media_by_id', $this->data);
		if (!isset($media))
			$this->fail("Media doesn't exist !");
		if ($media['id_user'] != loggued_id())
			$this->fail("This media is not your property !");
		$media = $this->load->model('media', 'delete_media', $this->data);
		$filename = $this->data['id_media'] . ".png";
		$filepath = "app/assets/media/user_media/";
		if (is_readable($filepath . $filename))
			unlink($filepath . $filename);
		if (is_readable($filepath ."thumbs/". $filename))
			unlink($filepath . "thumbs/" . $filename);
		$this->load->model('likes', 'delete_likes_by_media_id', $this->data);
		$this->load->model('comments', 'delete_comments_by_media_id', $this->data);
		$this->success("Media deleted");
	}
}
