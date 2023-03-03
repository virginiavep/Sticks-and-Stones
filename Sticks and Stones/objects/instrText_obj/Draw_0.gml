/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 58C132E5
/// @DnDArgument : "var" "flag"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "true"
if(!(flag == true))
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 4B8ECECD
	/// @DnDParent : 58C132E5
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "sprite" "startText_spr"
	/// @DnDSaveInfo : "sprite" "startText_spr"
	draw_sprite(startText_spr, 0, x + 0, y + 0);

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 19C5BB24
	/// @DnDParent : 58C132E5
	/// @DnDArgument : "code" "text = "Use the arrow keys to walk. In combat, select an option with E and try to press the space key in the circle to attack. Press space to start.";$(13_10)$(13_10)$(13_10)draw_text_ext(x,y,text,string_height(text), 250)"
	text = "Use the arrow keys to walk. In combat, select an option with E and try to press the space key in the circle to attack. Press space to start.";
	
	
	draw_text_ext(x,y,text,string_height(text), 250)
}