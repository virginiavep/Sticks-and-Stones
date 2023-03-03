/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 265729C9
/// @DnDArgument : "code" "image_speed = 0;$(13_10)$(13_10)var l34DC429A_0;$(13_10)l34DC429A_0 = keyboard_check(vk_up);$(13_10)if (l34DC429A_0)$(13_10){$(13_10)	sprite_index = playerWalkUp_spr;$(13_10)	image_index += 0;$(13_10)$(13_10)	image_speed = 1;$(13_10)$(13_10)	x += 0;$(13_10)	y += -moveSpeed;$(13_10)}$(13_10)$(13_10)var l3DE63D3F_0;$(13_10)l3DE63D3F_0 = keyboard_check(vk_down);$(13_10)if (l3DE63D3F_0)$(13_10){$(13_10)	sprite_index = playerWalkDown_spr;$(13_10)	image_index += 0;$(13_10)$(13_10)	image_speed = 1;$(13_10)$(13_10)	x += 0;$(13_10)	y += moveSpeed;$(13_10)}$(13_10)$(13_10)var l16B4453F_0;$(13_10)l16B4453F_0 = keyboard_check(vk_right);$(13_10)if (l16B4453F_0)$(13_10){$(13_10)	image_speed = 1;$(13_10)$(13_10)	sprite_index = playerWalkSide_spr;$(13_10)	image_index += 0;$(13_10)$(13_10)	x += moveSpeed;$(13_10)	y += 0;$(13_10)$(13_10)	image_xscale = 1;$(13_10)}$(13_10)$(13_10)var l3DA9AFD9_0;$(13_10)l3DA9AFD9_0 = keyboard_check(vk_left);$(13_10)if (l3DA9AFD9_0)$(13_10){$(13_10)	image_speed = 1;$(13_10)$(13_10)	sprite_index = playerWalkSide_spr;$(13_10)	image_index += 0;$(13_10)$(13_10)	x += -moveSpeed;$(13_10)	y += 0;$(13_10)$(13_10)	image_xscale = -1;$(13_10)}$(13_10)$(13_10)var bestDistance = enemyScanDistance$(13_10)grabTarget = noone;$(13_10)with enemyOverworld_obj$(13_10){$(13_10)	var thisDistance = point_distance(x,y,other.x,other.y);$(13_10)	$(13_10)	if thisDistance < bestDistance$(13_10)	{$(13_10)		bestDistance = thisDistance$(13_10)		other.grabTarget = id$(13_10)	}$(13_10)$(13_10)}$(13_10)$(13_10)/*if(place_meeting(x,y, enemyOverworld_obj))$(13_10){$(13_10)	//if keyboard_check_pressed(ord("E"))$(13_10)	//{$(13_10)		global.currEnemy = grabTarget$(13_10)		room_goto(Combat)	$(13_10)	//}$(13_10)}*/"
image_speed = 0;

var l34DC429A_0;
l34DC429A_0 = keyboard_check(vk_up);
if (l34DC429A_0)
{
	sprite_index = playerWalkUp_spr;
	image_index += 0;

	image_speed = 1;

	x += 0;
	y += -moveSpeed;
}

var l3DE63D3F_0;
l3DE63D3F_0 = keyboard_check(vk_down);
if (l3DE63D3F_0)
{
	sprite_index = playerWalkDown_spr;
	image_index += 0;

	image_speed = 1;

	x += 0;
	y += moveSpeed;
}

var l16B4453F_0;
l16B4453F_0 = keyboard_check(vk_right);
if (l16B4453F_0)
{
	image_speed = 1;

	sprite_index = playerWalkSide_spr;
	image_index += 0;

	x += moveSpeed;
	y += 0;

	image_xscale = 1;
}

var l3DA9AFD9_0;
l3DA9AFD9_0 = keyboard_check(vk_left);
if (l3DA9AFD9_0)
{
	image_speed = 1;

	sprite_index = playerWalkSide_spr;
	image_index += 0;

	x += -moveSpeed;
	y += 0;

	image_xscale = -1;
}

var bestDistance = enemyScanDistance
grabTarget = noone;
with enemyOverworld_obj
{
	var thisDistance = point_distance(x,y,other.x,other.y);
	
	if thisDistance < bestDistance
	{
		bestDistance = thisDistance
		other.grabTarget = id
	}

}

/*if(place_meeting(x,y, enemyOverworld_obj))
{
	//if keyboard_check_pressed(ord("E"))
	//{
		global.currEnemy = grabTarget
		room_goto(Combat)	
	//}
}*//**/

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 6F282511
/// @DnDArgument : "key" "vk_shift"
var l6F282511_0;
l6F282511_0 = keyboard_check(vk_shift);
if (l6F282511_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6906D41F
	/// @DnDParent : 6F282511
	/// @DnDArgument : "expr" "4"
	/// @DnDArgument : "var" "moveSpeed"
	moveSpeed = 4;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Released
/// @DnDVersion : 1
/// @DnDHash : 33F40E8E
/// @DnDArgument : "key" "vk_shift"
var l33F40E8E_0;
l33F40E8E_0 = keyboard_check_released(vk_shift);
if (l33F40E8E_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0DF35259
	/// @DnDParent : 33F40E8E
	/// @DnDArgument : "expr" "2"
	/// @DnDArgument : "var" "moveSpeed"
	moveSpeed = 2;
}