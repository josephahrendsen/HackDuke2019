draw_set_colour(c_white)
draw_text(x,y,"value = 0;")
draw_text(x,y+lineBreaks,"For(int i="+string(global.start)+"; i < n; i+=value){")
if function == "%"{
	draw_text(x,y+lineBreaks*2,"    if(i%"+string(checking)+"){")
	draw_text(x,y+lineBreaks*3,"        value = "+string(global.append1)+";")
	draw_text(x,y+lineBreaks*4,"    } else if(i%"+string(checking2)+"){")
	draw_text(x,y+lineBreaks*5,"        value = "+string(global.append2)+";")
	draw_text(x,y+lineBreaks*6,"    } else {")
	draw_text(x,y+lineBreaks*7,"        value = "+string(global.append3)+";")
	draw_text(x,y+lineBreaks*8,"    }")
	draw_text(x,y+lineBreaks*9,"}")
	
}