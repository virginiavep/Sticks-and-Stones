/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 00DAFC3F
var l00DAFC3F_0;
l00DAFC3F_0 = keyboard_check(vk_space);
if (l00DAFC3F_0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 55AA93C5
	/// @DnDParent : 00DAFC3F
	instance_destroy();
}