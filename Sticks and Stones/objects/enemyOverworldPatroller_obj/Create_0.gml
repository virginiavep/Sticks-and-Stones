/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3863F127
/// @DnDArgument : "code" "start_x = x;$(13_10)start_y = y"
start_x = x;
start_y = y

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7292FC92
/// @DnDArgument : "var" "id"
/// @DnDArgument : "value" "global.currEnemy"
if(id == global.currEnemy)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3B7B3C1F
	/// @DnDParent : 7292FC92
	instance_destroy();
}

/// @DnDAction : YoYo Games.Paths.Start_Path
/// @DnDVersion : 1.1
/// @DnDHash : 2CCDAED2
/// @DnDArgument : "path" "Path1"
/// @DnDArgument : "atend" "path_action_restart"
/// @DnDArgument : "relative" "true"
/// @DnDSaveInfo : "path" "Path1"
path_start(Path1, 1, path_action_restart, true);