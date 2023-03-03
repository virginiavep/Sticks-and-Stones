var rn = room_get_name(room)

if rn == "Room1"
	global.rname = Room1;
else if rn == "Room2"
	global.rname = Room2;
else if rn == "Room3"
	global.rname = Room3;

//Only do in overworld rooms not in the combat room
if rn == "Room1" or rn == "Room2" or rn == "Room3"
{
	global.playerOverworldX = playerOverworld_obj.x
	global.playerOverworldY = playerOverworld_obj.y
}



