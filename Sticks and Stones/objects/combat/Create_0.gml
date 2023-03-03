/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 6B8D987F
/// @DnDArgument : "value" "100"
/// @DnDArgument : "var" "enemyHealth"
global.enemyHealth = 100;

/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
/// @DnDVersion : 1
/// @DnDHash : 629389BF
audio_stop_all();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 5A19FC0F
/// @DnDArgument : "soundid" "snd_battleSong"
/// @DnDArgument : "loop" "1"
/// @DnDSaveInfo : "soundid" "snd_battleSong"
audio_play_sound(snd_battleSong, 0, 1);