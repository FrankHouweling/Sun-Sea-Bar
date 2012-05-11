

<div data-role="content">
	<div class="content-primary">	
		<h2 style="margin-bottom: 20px;">Menukaart</h2>
		<ul data-role="listview" data-theme="b">
					
			<?php foreach($name as $category): ?>
			   
			   <li>
			   		<a href="http://localhost/~maurice/Sun-Sea-Bar/index.php/menu/category/<?php echo $category['link']?>"><?php echo $category['name']?></a>
			   </li>
	
	   		<?php endforeach; ?>
		</ul>
	</div>	    
</div>



			