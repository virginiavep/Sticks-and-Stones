/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 31DE6C1F
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "startText_spr"
/// @DnDSaveInfo : "sprite" "startText_spr"
draw_sprite(startText_spr, 0, x + 0, y + 0);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 72CBD90A
/// @DnDArgument : "code" "text = "You still need the meat!!";$(13_10)$(13_10)draw_text_ext(x,y,text,string_height(text), 250)"
text = "You still need the meat!!";

draw_text_ext(x,y,text,string_height(text), 250)