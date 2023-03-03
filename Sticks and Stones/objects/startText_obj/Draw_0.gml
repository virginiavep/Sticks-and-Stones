/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 7EDB2445
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "startText_spr"
/// @DnDSaveInfo : "sprite" "startText_spr"
draw_sprite(startText_spr, 0, x + 0, y + 0);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 442D99B5
/// @DnDArgument : "code" "text = "A rival tribe has stolen your meat! Retrieve it and come back home.";$(13_10)$(13_10)draw_text_ext(x,y,text,string_height(text), 250)"
text = "A rival tribe has stolen your meat! Retrieve it and come back home.";

draw_text_ext(x,y,text,string_height(text), 250)

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 30EC8EA1
var l30EC8EA1_0;
l30EC8EA1_0 = keyboard_check(vk_space);
if (l30EC8EA1_0)
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 136A3CE6
	/// @DnDParent : 30EC8EA1
	/// @DnDArgument : "room" "Room1"
	/// @DnDSaveInfo : "room" "Room1"
	room_goto(Room1);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2AA7D710
	/// @DnDParent : 30EC8EA1
	instance_destroy();
}