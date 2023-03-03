/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 199D1905
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "global.sleep"
global.sleep += 1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0E296196
/// @DnDArgument : "var" "id"
/// @DnDArgument : "value" "global.currEnemy"
if(id == global.currEnemy)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6625E5A5
	/// @DnDParent : 0E296196
	/// @DnDArgument : "var" "global.enemyHealth"
	/// @DnDArgument : "op" "3"
	if(global.enemyHealth <= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 43F6B667
		/// @DnDParent : 6625E5A5
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
	/// @DnDAction : YoYo Games.Paths.Stop_Path
	/// @DnDVersion : 1
	/// @DnDHash : 5561E042
	/// @DnDParent : 463D940D
	path_end();

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 55770168
	/// @DnDParent : 463D940D
	speed = 0;

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 5845D022
	/// @DnDParent : 463D940D
	/// @DnDArgument : "sprite" "enemyWalkDown_spr"
	/// @DnDSaveInfo : "sprite" "enemyWalkDown_spr"
	draw_sprite(enemyWalkDown_spr, 0, 0, 0);

	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 563411C1
	/// @DnDParent : 463D940D
	/// @DnDArgument : "speed" "0"
	image_speed = 0;

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 3691A42B
	/// @DnDParent : 463D940D
	/// @DnDArgument : "code" "mask_index = empty_spr;"
	mask_index = empty_spr;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1BD3F8E7
	/// @DnDParent : 463D940D
	/// @DnDArgument : "var" "global.sleep"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "300"
	if(global.sleep >= 300)
	{
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 49E36F9E
		/// @DnDParent : 1BD3F8E7
		/// @DnDArgument : "code" "mask_index = enemyOverworld_obj;"
		mask_index = enemyOverworld_obj;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 6763B6F6
		/// @DnDParent : 1BD3F8E7
		image_speed = 1;
	
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 76F3BE48
		/// @DnDParent : 1BD3F8E7
		/// @DnDArgument : "x" "playerOverworld_obj.x"
		/// @DnDArgument : "y" "playerOverworld_obj.y"
		direction = point_direction(x, y, playerOverworld_obj.x, playerOverworld_obj.y);
	
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 264E6443
		/// @DnDParent : 1BD3F8E7
		/// @DnDArgument : "speed" "2"
		speed = 2;
	
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 46BEA2A9
		/// @DnDParent : 1BD3F8E7
		/// @DnDArgument : "code" "dir = point_direction(x, y, playerOverworld_obj.x, playerOverworld_obj.y)$(13_10)$(13_10)$(13_10)if(dir >= 0 && dir < 45){$(13_10)	sprite_index = enemyWalkSideRight_spr;$(13_10)} else if(dir >= 45 && dir < 135){$(13_10)	sprite_index = enemyWalkUp_spr;$(13_10)}else if(dir >= 135 && dir < 225){$(13_10)	sprite_index = enemyWalkSideLeft_spr;$(13_10)}else if(dir >= 225 && dir < 315){$(13_10)	sprite_index = enemyWalkDown_spr;$(13_10)}else if(dir >= 315 && dir < 360){$(13_10)	sprite_index = enemyWalkSideRight_spr;$(13_10)}$(13_10)"
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
}