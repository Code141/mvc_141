<?php
function	like_bar($grade, $nb_grades, $link)
{
	echo '<div id="like_box">';
	liker_recur(5, $grade, $link);

	if ($grade !== NULL)
		echo '<p class="avg_grades">' . round(floatval($grade), 1) . "/10</p>";
	echo '<p class="nb_grades">';
	if ($nb_grades > 1)
		echo '[' .  $nb_grades . ' votes]';
	else
		echo '[' .  $nb_grades . ' vote]';
	echo '<p>';

	echo '</div>';
}
?>

<?php
function	liker_recur($nb_star, $global, $link, $step = 0)
{
?>
			<div class="liker">
			<a href="<?php echo $link . ($step + 1);?>" class="glyph_star_left<?php if ($step < $global) echo " star_liked";?>">
				</a>
				<div class="liker">
					<a href="<?php echo $link . ($step + 2);?>" class="glyph_star_right<?php if ($step + 1< $global) echo " star_liked";?>">
					</a>
<?php
	if ($step + 2 < $nb_star * 2)
		liker_recur($nb_star, $global, $link, $step + 2);
?>
				</div>
			</div>
<?php
}
