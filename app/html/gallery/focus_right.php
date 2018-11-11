<aside id="focus_aside">
	<div id="focus_aside_top">
		<p>
			<span class="username">
				<a href="<?php echo SITE_ROOT . "gallery/user/" . $this->data['media']['username'];?> ">
					<?php echo $this->data['media']['username'];?>
				</a>
			</span>
			<span class="date">
				<?php echo human_date($this->data['media']['date']);?>
			</span>
		</p>
<?php
	$this->load->script('php', 'like_bar');
	$url = SITE_ROOT . "like/add/" . $this->data["media"]["id"] . "/";
	like_bar($this->data["media"]["avg_grades"], $this->data["media"]["nb_grades"], $url);
?>
	</div>

	<div id="comments">
<?php
	foreach ($this->data['db']['comments'] as $comment)
	{
?>
		<div class="comment">
			<span class="username">
				<?php echo $comment['username']; ?>
			</span>
			<span class="date">
				<?php echo human_date($comment['date']); ?>
			</span>
			<span class="msg">
				<?php echo $comment['comment']; ?>
			</span>
<?php
		if ($comment['id_user'] == loggued_id())
		{
?>
			<p class="delete_comment">
			<a href="<?php echo SITE_ROOT . "comment/delete/" . $comment['id'];?>">x</a>
			</p>
<?php
		}
?>
		</div>
<?php
}
?>
	</div>
	<div id="focus_aside_bottom">
		<form action="<?php echo SITE_ROOT; ?>comment/add/<?php echo $this->data['media']['id']; ?>" method="POST" enctype="multipart/form-data">
			<textarea name="comment" cols="40" rows="5" placeholder="Your comment..."></textarea>
			<input type="submit" name="upload_btn" value="Send">
		</form>
	</div>
</aside>
