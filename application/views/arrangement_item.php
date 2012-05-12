

<div>				
		
		<div class="title">
			   		<h2><?php echo $name["title"] ?></h2>
		</div>	 
			   		<br />
		<div class="content">	   		
			   		<?php echo $name[nl2br("content")] ?>
		</div>	   		
			   		<br />
		<div class="price">
					<?php $price = $name["price"] ?>
			   		<?php if ($price !== 0) ?>
					 &euro; <?php echo number_format($price, 2, ",",","); ?>
		</div>	   	
			   			  
			  		 
</div>



			