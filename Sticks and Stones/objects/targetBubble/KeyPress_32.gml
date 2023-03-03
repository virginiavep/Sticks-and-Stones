/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 11DB5AC6
/// @DnDArgument : "obj" "targetBubble"
/// @DnDSaveInfo : "obj" "targetBubble"
var l11DB5AC6_0 = false;
l11DB5AC6_0 = instance_exists(targetBubble);
if(l11DB5AC6_0)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 177483C6
	/// @DnDParent : 11DB5AC6
	/// @DnDArgument : "expr" "point_distance(targetBubble.x, targetBubble.y, timingBubble.x, timingBubble.y )<=100"
	if(point_distance(targetBubble.x, targetBubble.y, timingBubble.x, timingBubble.y )<=100)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4E776939
		/// @DnDComment : Player did damage
		/// @DnDApplyTo : {obj_arrow}
		/// @DnDParent : 177483C6
		/// @DnDArgument : "expr" "2"
		/// @DnDArgument : "var" "success"
		with(obj_arrow) {
		success = 2;
		
		}
	
		/// @DnDAction : YoYo Games.Instances.Color_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 255CDCD8
		/// @DnDParent : 177483C6
		/// @DnDArgument : "colour" "$FF00FF04"
		image_blend = $FF00FF04 & $ffffff;
		image_alpha = ($FF00FF04 >> 24) / $ff;
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 1965C878
		/// @DnDParent : 177483C6
		/// @DnDArgument : "xpos" "500"
		/// @DnDArgument : "ypos" "200"
		/// @DnDArgument : "objectid" "obj_successMessage"
		/// @DnDSaveInfo : "objectid" "obj_successMessage"
		instance_create_layer(500, 200, "Instances", obj_successMessage);
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 1B84B7E2
		/// @DnDApplyTo : {targetBubble}
		/// @DnDParent : 177483C6
		with(targetBubble) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 17ACE889
		/// @DnDApplyTo : {timingBubble}
		/// @DnDParent : 177483C6
		with(timingBubble) instance_destroy();
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 327BD4FF
	/// @DnDParent : 11DB5AC6
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1808F737
		/// @DnDComment : Player took damage
		/// @DnDApplyTo : {obj_arrow}
		/// @DnDParent : 327BD4FF
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "success"
		with(obj_arrow) {
		success = 1;
		
		}
	
		/// @DnDAction : YoYo Games.Instances.Color_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 0E551D2F
		/// @DnDParent : 327BD4FF
		/// @DnDArgument : "colour" "$FF00FF04"
		image_blend = $FF00FF04 & $ffffff;
		image_alpha = ($FF00FF04 >> 24) / $ff;
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 6937C001
		/// @DnDParent : 327BD4FF
		/// @DnDArgument : "xpos" "500"
		/// @DnDArgument : "ypos" "200"
		/// @DnDArgument : "objectid" "obj_failureMessage"
		/// @DnDSaveInfo : "objectid" "obj_failureMessage"
		instance_create_layer(500, 200, "Instances", obj_failureMessage);
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 2B0C46AF
		/// @DnDApplyTo : {targetBubble}
		/// @DnDParent : 327BD4FF
		with(targetBubble) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 686863CC
		/// @DnDApplyTo : {timingBubble}
		/// @DnDParent : 327BD4FF
		with(timingBubble) instance_destroy();
	}
}