key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);

var moveH = key_right - key_left; 
var moveV = key_down - key_up;

hsp = moveH * walksp;
vsp = moveV * walksp;

//Horizontal Collision
if (place_meeting(x+hsp, y, oWall)) {
	while (!place_meeting(x+sign(hsp), y, oWall)) {
		x = x + sign(hsp);
	}
	hsp = 0;	
}
x = x + hsp;

//Vertical Collision
if (place_meeting(x, y+vsp, oWall)) {
	while (!place_meeting(x, y+sign(vsp), oWall)) {
		y = y + sign(vsp);
	}
	vsp = 0;	
}
y = y + vsp;


//Vertical Collision with register
if (place_meeting(x, y+vsp, oRegister)) {
	food = get_string("What food do you want", "");
	inst = instance_create_layer(720,140,"Instances", oTextbox);
	inst.image_xscale += 5;
	inst.image_yscale += 2;
}
