/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1BB8DA41
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "haveMeat"
haveMeat = true;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 5485FFA4
/// @DnDArgument : "xpos" "1050"
/// @DnDArgument : "ypos" "350"
/// @DnDArgument : "objectid" "meatText_obj"
/// @DnDArgument : "layer" ""Text""
/// @DnDSaveInfo : "objectid" "meatText_obj"
instance_create_layer(1050, 350, "Text", meatText_obj);

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 3E75AFFB
var l3E75AFFB_0;
l3E75AFFB_0 = keyboard_check(vk_space);
if (l3E75AFFB_0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5DA28E5E
	/// @DnDApplyTo : {meatText_obj}
	/// @DnDParent : 3E75AFFB
	with(meatText_obj) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7D507800
	/// @DnDApplyTo : other
	/// @DnDParent : 3E75AFFB
	with(other) instance_destroy();
}