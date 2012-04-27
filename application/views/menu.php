

<div data-role="content">
	<div class="content-primary">	
		<ul data-role="listview" data-theme="b">
					
			<?php foreach($name as $category): ?>
			   
			   <li>
			   		<a href="http://localhost/~maurice/Sun-Sea-Bar/index.php/menu/<?php echo $category['link']?>"><?php echo $category['name']?></a>
			   </li>
	
	   		<?php endforeach; ?>
		</ul>
	</div>	    
</div>



			