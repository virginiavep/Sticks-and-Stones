/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 66B2CBAA
/// @DnDArgument : "var" "haveMeat"
/// @DnDArgument : "value" "true"
if(haveMeat == true)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 6F7B5192
	/// @DnDParent : 66B2CBAA
	/// @DnDArgument : "code" "instance_deactivate_object(doorText_obj)$(13_10)moveSpeed = 0; "
	instance_deactivate_object(doorText_obj)
	moveSpeed = 0;

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 038F7CD7
	/// @DnDParent : 66B2CBAA
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "endText_obj"
	/// @DnDArgument : "layer" ""Text""
	/// @DnDSaveInfo : "objectid" "endText_obj"
	instance_create_layer(x + 0, y + 0, "Text", endText_obj);

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 312DD578
	/// @DnDParent : 66B2CBAA
	var l312DD578_0;
	l312DD578_0 = keyboard_check(vk_space);
	if (l312DD578_0)
	{
		/// @DnDAction : YoYo Games.Game.End_Game
		/// @DnDVersion : 1
		/// @DnDHash : 64B1A417
		/// @DnDParent : 312DD578
		game_end();
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 4D965657
	/// @DnDParent : 66B2CBAA
	/// @DnDArgument : "key" "ord("R")"
	var l4D965657_0;
	l4D965657_0 = keyboard_check(ord("R"));
	if (l4D965657_0)
	{
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 15CD6588
		/// @DnDParent : 4D965657
		game_restart();
	}
}