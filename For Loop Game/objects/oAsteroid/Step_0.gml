image_angle += 1

if y > 630 and not debri{
	with(oPlayer){
		instance_destroy()
	}
	with(oAsteroid){
		instance_destroy()
	}
	
	for(i = 0; i < 50; i++){
		var inst = instance_create_layer(random_range(522,1014),random_range(10,760),"Instances",oAsteroid)
		inst.direction = random_range(0,359)
		inst.debri = true
		inst.speed = 6
		inst.image_xscale = random_range(image_xscale/4,image_xscale/3)
		inst.image_yscale = random_range(image_yscale/4,image_yscale/3)
	}
}

if x > 1030 or x < 502 or y < -830 or y > 778{
	instance_destroy()
}