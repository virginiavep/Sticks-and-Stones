/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7818B1DA
/// @DnDArgument : "code" "grabTarget = noone$(13_10)"
grabTarget = noone

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 4F41AE54
/// @DnDArgument : "value" "100"
/// @DnDArgument : "var" "global.playerHealth"
global.playerHealth = 100;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 71DF0864
/// @DnDArgument : "var" "global.currEnemy"
global.currEnemy = 0;

/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 52729C15
/// @DnDArgument : "soundid" "snd_mainSong"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "soundid" "snd_mainSong"
var l52729C15_0 = snd_mainSong;
if (!audio_is_playing(l52729C15_0))
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 43AB818F
	/// @DnDParent : 52729C15
	/// @DnDArgument : "soundid" "snd_mainSong"
	/// @DnDArgument : "loop" "1"
	/// @DnDSaveInfo : "soundid" "snd_mainSong"
	audio_play_sound(snd_mainSong, 0, 1);
}