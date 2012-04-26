

<div data-role="content">
	<div class="content-primary">	
		<ul data-role="listview" data-theme="b">
					
			<?php foreach($title as $item): ?>
			   
			   <li>
			   		<a href="http://localhost/~maurice/Sun-Sea-Bar/index.php/menu/<?php echo $item['link']?>"><?php echo $item['title']?></a>
			   </li>
	
	   		<?php endforeach; ?>
		</ul>
	</div>	    
</div>



			