if not other.debri{
	instance_destroy()
	with(other){
		asteroidDirection = random_range(0,359)
		for (i = 0; i < 6; i++){
			arr[i] = instance_create_layer(x,y,"Instances",oAsteroid)
		
			arr[i].debri = true
			arr[i].direction = asteroidDirection+60*i+random_range(0,20)
			arr[i].speed = random_range(3,6)
			arr[i].image_xscale = random_range(image_xscale/4,image_xscale/3)
			arr[i].image_yscale = random_range(image_xscale/4,image_xscale/3)
		}
	
		global.currentX = x
		global.currentY = y
		with(oAsteroid){
			if y == global.currentY and x != global.currentX{
				instance_create_layer(x,y,"Instances",oBullet)
				instance_create_layer(x,y-768,"Instances",oAsteroid)
			}
		}
	
		instance_destroy()
	
		
	}
}
