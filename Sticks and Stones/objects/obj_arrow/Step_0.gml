/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 37A60D94
/// @DnDComment : player attacked
/// @DnDArgument : "expr" "success == 2"
if(success == 2)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 731F5D6A
	/// @DnDApplyTo : {playerCombat_obj}
	/// @DnDParent : 37A60D94
	/// @DnDArgument : "spriteind" "combatPlayerAttack_spr"
	/// @DnDSaveInfo : "spriteind" "combatPlayerAttack_spr"
	with(playerCombat_obj) {
	sprite_index = combatPlayerAttack_spr;
	image_index = 0;
	}

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 7D86CE0C
	/// @DnDParent : 37A60D94
	/// @DnDArgument : "soundid" "snd_ha"
	/// @DnDSaveInfo : "soundid" "snd_ha"
	audio_play_sound(snd_ha, 0, 0);

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 5328A625
	/// @DnDParent : 37A60D94
	/// @DnDArgument : "value" "-40"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "var" "global.enemyHealth"
	global.enemyHealth += -40;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7FB969DA
	/// @DnDParent : 37A60D94
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "enemyCombat_obj.takingDamage"
	enemyCombat_obj.takingDamage = true;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 245DA5E6
	/// @DnDParent : 37A60D94
	/// @DnDArgument : "var" "success"
	success = 0;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 30199275
	/// @DnDParent : 37A60D94
	/// @DnDArgument : "var" "global.enemyHealth"
	/// @DnDArgument : "op" "3"
	if(global.enemyHealth <= 0)
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 09DC7B9C
		/// @DnDParent : 30199275
		/// @DnDArgument : "room" "global.rname"
		room_goto(global.rname);
	
		/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 736ADE93
		/// @DnDParent : 30199275
		audio_stop_all();
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 0966E321
		/// @DnDParent : 30199275
		/// @DnDArgument : "soundid" "snd_mainSong"
		/// @DnDArgument : "loop" "1"
		/// @DnDSaveInfo : "soundid" "snd_mainSong"
		audio_play_sound(snd_mainSong, 0, 1);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 35055E12
		/// @DnDParent : 30199275
		/// @DnDArgument : "expr" "global.playerOverworldX"
		/// @DnDArgument : "var" "playerOverworld_obj.x"
		playerOverworld_obj.x = global.playerOverworldX;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5293C278
		/// @DnDParent : 30199275
		/// @DnDArgument : "expr" "global.playerOverworldY"
		/// @DnDArgument : "var" "playerOverworld_obj.y"
		playerOverworld_obj.y = global.playerOverworldY;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1375C3AF
else
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 6AEFCAB7
	/// @DnDComment : Player didn't attack. He takes damage
	/// @DnDParent : 1375C3AF
	/// @DnDArgument : "expr" "success == 1"
	if(success == 1)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 0D3AFB2A
		/// @DnDApplyTo : {enemyCombat_obj}
		/// @DnDParent : 6AEFCAB7
		/// @DnDArgument : "spriteind" "combatEnemyAttack_spr"
		/// @DnDSaveInfo : "spriteind" "combatEnemyAttack_spr"
		with(enemyCombat_obj) {
		sprite_index = combatEnemyAttack_spr;
		image_index = 0;
		}
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 129BF03B
		/// @DnDParent : 6AEFCAB7
		/// @DnDArgument : "soundid" "snd_grunt"
		/// @DnDSaveInfo : "soundid" "snd_grunt"
		audio_play_sound(snd_grunt, 0, 0);
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 575A0CF7
		/// @DnDParent : 6AEFCAB7
		/// @DnDArgument : "value" "-30"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "var" "global.playerHealth"
		global.playerHealth += -30;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 56341E97
		/// @DnDParent : 6AEFCAB7
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "playerCombat_obj.takingDamage"
		playerCombat_obj.takingDamage = true;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 28AC8730
		/// @DnDParent : 6AEFCAB7
		/// @DnDArgument : "var" "success"
		success = 0;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 380156F5
		/// @DnDParent : 6AEFCAB7
		/// @DnDArgument : "var" "global.playerHealth"
		/// @DnDArgument : "op" "3"
		if(global.playerHealth <= 0)
		{
			/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 6B0C7A46
			/// @DnDParent : 380156F5
			audio_stop_all();
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 25DCC8B0
			/// @DnDParent : 380156F5
			/// @DnDArgument : "soundid" "snd_defeat"
			/// @DnDSaveInfo : "soundid" "snd_defeat"
			audio_play_sound(snd_defeat, 0, 0);
		
			/// @DnDAction : YoYo Games.Rooms.Go_To_Room
			/// @DnDVersion : 1
			/// @DnDHash : 57BCFDA6
			/// @DnDParent : 380156F5
			/// @DnDArgument : "room" "deadScreen"
			/// @DnDSaveInfo : "room" "deadScreen"
			room_goto(deadScreen);
		}
	}
}