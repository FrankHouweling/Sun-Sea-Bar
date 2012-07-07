

<div data-role="content">
	<div class="content-primary">	
		<ul data-role="listview" data-inset="true" data-theme="b">
			
			<?php foreach($name as $item): ?>
			   <li>
			   		<a href="http://localhost/~maurice/Sun-Sea-Bar/index.php/menu/item/<?php echo $item['link']?>" data-transition="slidefade"><?php echo $item['title']?> &nbsp; <?php $price = $item['price']?><?php if ($price !== 0) ?>
					 &euro; <?php echo number_format($price, 2, ",",","); ?></a>
			   </li>
	
	   		<?php endforeach; ?>
		</ul>
	</div>	    
</div>



			