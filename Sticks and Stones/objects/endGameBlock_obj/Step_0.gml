if(place_meeting(x,y, playerOverworld_obj)){
	if(textBox == noone){
		textBox = instance_create_layer(x,y, "Text", doorText_obj)
	}
	
	
} else if(textBox != noone){
	instance_destroy(textBox);
	textBox = noone;
}