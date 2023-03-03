/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 318BE01B
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "startText_spr"
/// @DnDSaveInfo : "sprite" "startText_spr"
draw_sprite(startText_spr, 0, x + 0, y + 0);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1A616EB3
/// @DnDArgument : "code" "text = "You found the meat! Now get back to the cave.   Press space to pick up";$(13_10)$(13_10)$(13_10)draw_text_ext(x,y,text,string_height(text), 250)"
text = "You found the meat! Now get back to the cave.   Press space to pick up";


draw_text_ext(x,y,text,string_height(text), 250)