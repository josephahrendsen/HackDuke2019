if keyboard_check(vk_right){
	image_angle -= 2.5
} else if keyboard_check(vk_left){
	image_angle += 2.5
}

if keyboard_check(vk_space) and (current_time-250 > start_time){
	start_time = current_time
	var inst = instance_create_layer(x,y,"Instances",oBullet)
	inst.direction = image_angle+90
}