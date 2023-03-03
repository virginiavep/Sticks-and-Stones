/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6852D56A
/// @DnDArgument : "var" "id"
/// @DnDArgument : "value" "global.currEnemy"
if(id == global.currEnemy)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4C98768A
	/// @DnDParent : 6852D56A
	/// @DnDArgument : "var" "global.enemyHealth"
	/// @DnDArgument : "op" "3"
	if(global.enemyHealth <= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 04B5D528
		/// @DnDParent : 4C98768A
		instance_destroy();
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 463D940D
/// @DnDArgument : "var" "distance_to_object(playerOverworld_obj)"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "aggro_range"
if(distance_to_object(playerOverworld_obj) < aggro_range)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 563411C1
	/// @DnDParent : 463D940D
	image_speed = 1;

	/// @DnDAction : YoYo Games.Paths.Stop_Path
	/// @DnDVersion : 1
	/// @DnDHash : 5561E042
	/// @DnDParent : 463D940D
	path_end();

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 76F3BE48
	/// @DnDParent : 463D940D
	/// @DnDArgument : "x" "playerOverworld_obj.x"
	/// @DnDArgument : "y" "playerOverworld_obj.y"
	direction = point_direction(x, y, playerOverworld_obj.x, playerOverworld_obj.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 264E6443
	/// @DnDParent : 463D940D
	/// @DnDArgument : "speed" "2"
	speed = 2;

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 46BEA2A9
	/// @DnDParent : 463D940D
	/// @DnDArgument : "code" "dir = point_direction(x, y, playerOverworld_obj.x, playerOverworld_obj.y)$(13_10)$(13_10)$(13_10)if(dir >= 0 && dir < 45){$(13_10)	sprite_index = enemyWalkSideRight_spr;$(13_10)} else if(dir >= 45 && dir < 135){$(13_10)	sprite_index = enemyWalkUp_spr;$(13_10)}else if(dir >= 135 && dir < 225){$(13_10)	sprite_index = enemyWalkSideLeft_spr;$(13_10)}else if(dir >= 225 && dir < 315){$(13_10)	sprite_index = enemyWalkDown_spr;$(13_10)}else if(dir >= 315 && dir < 360){$(13_10)	sprite_index = enemyWalkSideRight_spr;$(13_10)}"
	dir = point_direction(x, y, playerOverworld_obj.x, playerOverworld_obj.y)
	
	
	if(dir >= 0 && dir < 45){
		sprite_index = enemyWalkSideRight_spr;
	} else if(dir >= 45 && dir < 135){
		sprite_index = enemyWalkUp_spr;
	}else if(dir >= 135 && dir < 225){
		sprite_index = enemyWalkSideLeft_spr;
	}else if(dir >= 225 && dir < 315){
		sprite_index = enemyWalkDown_spr;
	}else if(dir >= 315 && dir < 360){
		sprite_index = enemyWalkSideRight_spr;
	}
}