/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 600E0700
/// @DnDArgument : "var" "obj_arrow.y"
/// @DnDArgument : "value" "obj_fightmessage.y"
if(obj_arrow.y == obj_fightmessage.y)
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 7552C25F
	/// @DnDParent : 600E0700
	/// @DnDArgument : "obj" "timingBubble"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "obj" "timingBubble"
	var l7552C25F_0 = false;
	l7552C25F_0 = instance_exists(timingBubble);
	if(!l7552C25F_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 07792FB0
		/// @DnDParent : 7552C25F
		/// @DnDArgument : "var" "success"
		success = 0;
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 7C8C321F
		/// @DnDParent : 7552C25F
		/// @DnDArgument : "xpos" "700"
		/// @DnDArgument : "ypos" "300"
		/// @DnDArgument : "objectid" "timingBubble"
		/// @DnDSaveInfo : "objectid" "timingBubble"
		instance_create_layer(700, 300, "Instances", timingBubble);
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 648B3B2E
		/// @DnDApplyTo : {timingBubble}
		/// @DnDParent : 7552C25F
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		with(timingBubble) {
		image_xscale = 3;
		image_yscale = 3;
		}
	
		/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 5B8AE8F2
		/// @DnDParent : 7552C25F
		/// @DnDArgument : "var" "rndY"
		/// @DnDArgument : "type" "1"
		/// @DnDArgument : "min" "-500"
		/// @DnDArgument : "max" "-1500"
		rndY = floor(random_range(-500, -1500 + 1));
	
		/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 29EFB701
		/// @DnDParent : 7552C25F
		/// @DnDArgument : "var" "rndX"
		/// @DnDArgument : "type" "1"
		/// @DnDArgument : "min" "-1000"
		/// @DnDArgument : "max" "1000"
		rndX = floor(random_range(-1000, 1000 + 1));
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 5250B766
		/// @DnDParent : 7552C25F
		/// @DnDArgument : "obj" "targetBubble"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "obj" "targetBubble"
		var l5250B766_0 = false;
		l5250B766_0 = instance_exists(targetBubble);
		if(!l5250B766_0)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 38A7C104
			/// @DnDParent : 5250B766
			/// @DnDArgument : "xpos" "rndX"
			/// @DnDArgument : "ypos" "rndY"
			/// @DnDArgument : "objectid" "targetBubble"
			/// @DnDSaveInfo : "objectid" "targetBubble"
			instance_create_layer(rndX, rndY, "Instances", targetBubble);
		
			/// @DnDAction : YoYo Games.Instances.Sprite_Scale
			/// @DnDVersion : 1
			/// @DnDHash : 0B2D5667
			/// @DnDApplyTo : {targetBubble}
			/// @DnDParent : 5250B766
			/// @DnDArgument : "xscale" "3"
			/// @DnDArgument : "yscale" "3"
			with(targetBubble) {
			image_xscale = 3;
			image_yscale = 3;
			}
		}
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 48D5765C
else
{
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 78AE5F3B
	/// @DnDParent : 48D5765C
	/// @DnDArgument : "var" "run"
	/// @DnDArgument : "type" "1"
	run = floor(random_range(0, 1 + 1));

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1070689A
	/// @DnDParent : 48D5765C
	/// @DnDArgument : "var" "run"
	if(run == 0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 07B98887
		/// @DnDApplyTo : {enemyCombat_obj}
		/// @DnDParent : 1070689A
		/// @DnDArgument : "spriteind" "combatEnemyAttack_spr"
		/// @DnDSaveInfo : "spriteind" "combatEnemyAttack_spr"
		with(enemyCombat_obj) {
		sprite_index = combatEnemyAttack_spr;
		image_index = 0;
		}
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 0B72D842
		/// @DnDParent : 1070689A
		/// @DnDArgument : "value" "-15"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "var" "global.playerHealth"
		global.playerHealth += -15;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0FA31963
		/// @DnDParent : 1070689A
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "playerCombat_obj.takingDamage"
		playerCombat_obj.takingDamage = true;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 41D379C0
	/// @DnDParent : 48D5765C
	else
	{
		/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 67EAA90D
		/// @DnDParent : 41D379C0
		audio_stop_all();
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 06242819
		/// @DnDParent : 41D379C0
		/// @DnDArgument : "soundid" "snd_mainSong"
		/// @DnDArgument : "loop" "1"
		/// @DnDSaveInfo : "soundid" "snd_mainSong"
		audio_play_sound(snd_mainSong, 0, 1);
	
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 0B6F8CC7
		/// @DnDParent : 41D379C0
		/// @DnDArgument : "room" "global.rname"
		room_goto(global.rname);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2DC8C119
		/// @DnDParent : 41D379C0
		/// @DnDArgument : "expr" "global.playerOverworldX"
		/// @DnDArgument : "var" "playerOverworld_obj.x"
		playerOverworld_obj.x = global.playerOverworldX;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 34440779
		/// @DnDParent : 41D379C0
		/// @DnDArgument : "expr" "global.playerOverworldY"
		/// @DnDArgument : "var" "playerOverworld_obj.y"
		playerOverworld_obj.y = global.playerOverworldY;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 39FB9A26
		/// @DnDParent : 41D379C0
		/// @DnDArgument : "var" "global.sleep"
		global.sleep = 0;
	}
}