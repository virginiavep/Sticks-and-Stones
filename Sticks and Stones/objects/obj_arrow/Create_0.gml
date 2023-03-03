/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3479107C
/// @DnDArgument : "var" "success"
success = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 75BBC59F
/// @DnDArgument : "expr" "obj_fightmessage.y"
/// @DnDArgument : "var" "nextMessage"
nextMessage = obj_fightmessage.y;

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 241BBDCE
/// @DnDArgument : "x" "0"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "nextMessage"
x += 0;
y = nextMessage;

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 5F4865BA
/// @DnDArgument : "xscale" "-2"
/// @DnDArgument : "yscale" "2"
image_xscale = -2;
image_yscale = 2;