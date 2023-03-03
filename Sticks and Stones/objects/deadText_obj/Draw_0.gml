/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 09C2E8C4
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "startText_spr"
/// @DnDSaveInfo : "sprite" "startText_spr"
draw_sprite(startText_spr, 0, x + 0, y + 0);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7B46E875
/// @DnDArgument : "code" "text = "You have died!    Z to exit game or R to restart.";$(13_10)$(13_10)draw_text_ext(x,y,text,string_height(text), 250)"
text = "You have died!    Z to exit game or R to restart.";

draw_text_ext(x,y,text,string_height(text), 250)