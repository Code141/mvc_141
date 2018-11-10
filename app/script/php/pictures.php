<?php

function check_file($file)
{
	$max_size = 10000000; // 10 MO
	$authorized_type = array(
		'jpg' => 'image/jpeg',
		'png' => 'image/png',
		'gif' => 'image/gif'
	);
	if (!isset($file['error']) || is_array($file['error']))
		return ('Invalid parameters.');
	switch ($file['error']):
	case UPLOAD_ERR_OK:
		break;
	case UPLOAD_ERR_NO_FILE:
		return ('No file sent.');
	case UPLOAD_ERR_INI_SIZE:
	case UPLOAD_ERR_FORM_SIZE:
		return ('Exceeded filesize limit.');
	default:
		return ('Unknown errors.');
	endswitch;
	if ($file['size'] > $max_size)
		return ('Exceeded filesize limit.');

	$finfo = new finfo(FILEINFO_MIME_TYPE);
	$ext = array_search($finfo->file($file['tmp_name']), $authorized_type, true);
	if ($ext === FALSE)
		return ('Invalid file format.');
	return (TRUE);
}

function resize_and_fusion($dest_path, $src_path)
{

	$dest = imagecreatefromstring(file_get_contents($dest_path));
	$src = imagecreatefromstring(file_get_contents($src_path));

	$dest_size = getimagesize($dest_path);
	$src_size = getimagesize($src_path);

	$dest_w = $dest_size[0];
	$dest_h = $dest_size[1];
	$src_w = $src_size[0];
	$src_h = $src_size[1];
	$src_x = 0;
	$src_y = 0;
	$dest_x = 0;
	$dest_y = 0;

	if (imagecopyresampled (
		$dest, $src,
		$dest_x, $dest_y,
		$src_x, $src_y,
		$dest_w, $dest_h,
		$src_w, $src_h)
	)
		return ($dest);
	return (FALSE);
}

function make_thumb($img, $width_max = 300, $height_max = 300)
{
	$src_w = imagesx($img);
	$src_h = imagesy($img);
	$new_width = $src_w;
	$new_height = $src_h;
	if ($src_w > $width_max || $src_h > $height_max)
		if ($src_h > $src_w)
		{
			$new_height = $height_max;
			$new_width = ($src_w / $src_h) * $height_max;
		}
		else
		{
			$new_width = $width_max;
			$new_height = ($src_h / $src_w) * $width_max;
		}
	$src_x = 0;
	$src_y = 0;
	$dest_x = 0;
	$dest_y = 0;
	$dest = imagecreatetruecolor ($new_width , $new_height);
	if (imagecopyresampled (
		$dest, $img,
		$dest_x, $dest_y,
		$src_x, $src_y,
		$new_width, $new_height,
		$src_w, $src_h
	))
		return ($dest);
	return (FALSE);
}

