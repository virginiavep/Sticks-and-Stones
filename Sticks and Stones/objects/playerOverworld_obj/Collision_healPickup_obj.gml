/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 082088AF
/// @DnDArgument : "value" "50"
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "var" "global.playerHealth"
global.playerHealth += 50;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0C4F83C0
/// @DnDArgument : "var" "global.playerHealth"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "100"
if(global.playerHealth >= 100)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 5C894A94
	/// @DnDParent : 0C4F83C0
	/// @DnDArgument : "value" "100"
	/// @DnDArgument : "var" "global.playerHealth"
	global.playerHealth = 100;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 51B27B6E
	/// @DnDApplyTo : other
	/// @DnDParent : 0C4F83C0
	with(other) instance_destroy();
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 389CD253
/// @DnDApplyTo : other
with(other) instance_destroy();