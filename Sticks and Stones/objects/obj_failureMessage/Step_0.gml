/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6791B065
/// @DnDArgument : "var" "obj_arrow.y"
/// @DnDArgument : "value" "obj_fightmessage.y"
if(obj_arrow.y == obj_fightmessage.y)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7598665D
	/// @DnDApplyTo : {obj_arrow}
	/// @DnDParent : 6791B065
	/// @DnDArgument : "expr" "obj_runmessage.y"
	/// @DnDArgument : "var" "nextMessage"
	with(obj_arrow) {
	nextMessage = obj_runmessage.y;
	
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6BC330C1
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 01221505
	/// @DnDApplyTo : {obj_arrow}
	/// @DnDParent : 6BC330C1
	/// @DnDArgument : "expr" "obj_fightmessage.y"
	/// @DnDArgument : "var" "nextMessage"
	with(obj_arrow) {
	nextMessage = obj_fightmessage.y;
	
	}
}