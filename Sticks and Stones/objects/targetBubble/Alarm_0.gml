/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 312E8517
/// @DnDComment : Player took damage
/// @DnDApplyTo : {obj_arrow}
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "success"
with(obj_arrow) {
success = 1;

}

/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 3A3C6A4A
/// @DnDArgument : "colour" "$FF00FF04"
image_blend = $FF00FF04 & $ffffff;
image_alpha = ($FF00FF04 >> 24) / $ff;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 4E96CD37
/// @DnDArgument : "xpos" "500"
/// @DnDArgument : "ypos" "200"
/// @DnDArgument : "objectid" "obj_failureMessage"
/// @DnDSaveInfo : "objectid" "obj_failureMessage"
instance_create_layer(500, 200, "Instances", obj_failureMessage);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 07CF5A66
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 5ED7B17A
/// @DnDApplyTo : {timingBubble}
with(timingBubble) instance_destroy();