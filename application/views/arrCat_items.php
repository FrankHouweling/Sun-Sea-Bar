

<div data-role="content">
	<div class="content-primary">	
		<ul data-role="listview" data-inset="true" data-theme="b">
			
			<?php foreach($name as $item): ?>
			   <li>
			   		<a href="http://localhost/~maurice/Sun-Sea-Bar/index.php/arrangementen/item/<?php echo $item['link']?>" data-transition="slidefade"><?php echo $item['title']?></a>
			   </li>
	
	   		<?php endforeach; ?>
		</ul>
	</div>	    
</div>



			