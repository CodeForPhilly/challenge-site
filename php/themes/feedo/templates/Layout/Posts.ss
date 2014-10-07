<?php $item = $feed->get_item(0); ?>
	<div class="post">
			<h4><?php if ($item->get_permalink()) echo $item->get_title(); ?></h4>
			<small><?php echo $item->get_date('j M Y, g:i a'); ?></small>
		<p class="pull-right"><a <?php echo 'href="' . $item->get_permalink() . '"'; ?> <span class="glyphicon glyphicon-log-out"></span></a></p>
    </div>

<?php $item = $feed->get_item(1); ?>
	<div class="post">
			<h4><?php if ($item->get_permalink()) echo $item->get_title(); ?></h4>
			<small><?php echo $item->get_date('j M Y, g:i a'); ?></small>
		<p class="pull-right"><a <?php echo 'href="' . $item->get_permalink() . '"'; ?> <span class="glyphicon glyphicon-log-out"></span></a></p>
    </div>
    

<?php $item = $feed->get_item(2); ?>
	<div class="post">
			<h4><?php if ($item->get_permalink()) echo $item->get_title(); ?></h4>
			<small><?php echo $item->get_date('j M Y, g:i a'); ?></small>
		<p class="pull-right"><a <?php echo 'href="' . $item->get_permalink() . '"'; ?> <span class="glyphicon glyphicon-log-out"></span></a></p>
    </div>

<?php $item = $feed->get_item(3); ?>
	<div class="post">
			<h4><?php if ($item->get_permalink()) echo $item->get_title(); ?></h4>
			<small><?php echo $item->get_date('j M Y, g:i a'); ?></small>
		<p class="pull-right"><a <?php echo 'href="' . $item->get_permalink() . '"'; ?> <span class="glyphicon glyphicon-log-out"></span></a></p>
    </div>

	<div class="post centered">
		<img src="assets/img/ui-pic.jpg" class="img-circle" width="90">
		<h6>Curated By</h6>
		<h5>Paul Neville</h5>
	</div>