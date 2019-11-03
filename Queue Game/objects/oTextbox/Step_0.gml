
if (current_time - 1000 > startTime and newNum < num+1) {
	newNum+=1;
	text = "Order number " + string(newNum) + " is ready";
	startTime = current_time;
}
if (newNum == num+1) {
	x = oPlayer.x + 200;
	y = oPlayer.y;
	text = "Hey that's me!";
	
}
	
	