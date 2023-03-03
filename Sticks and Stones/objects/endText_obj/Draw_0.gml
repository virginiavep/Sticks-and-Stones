/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 038AE81D
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "startText_spr"
/// @DnDSaveInfo : "sprite" "startText_spr"
draw_sprite(startText_spr, 0, x + 0, y + 0);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2DDD9F26
/// @DnDArgument : "code" "text = "Congratulations! You have your food, THANKS FOR PLAYING.    Space to exit game or R to restart.";$(13_10)$(13_10)draw_text_ext(x,y,text,string_height(text), 250)"
text = "Congratulations! You have your food, THANKS FOR PLAYING.    Space to exit game or R to restart.";

draw_text_ext(x,y,text,string_height(text), 250)