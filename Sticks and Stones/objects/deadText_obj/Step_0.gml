/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 6A3044DB
/// @DnDArgument : "key" "ord("Z")"
var l6A3044DB_0;
l6A3044DB_0 = keyboard_check(ord("Z"));
if (l6A3044DB_0)
{
	/// @DnDAction : YoYo Games.Game.End_Game
	/// @DnDVersion : 1
	/// @DnDHash : 3779EE13
	/// @DnDParent : 6A3044DB
	game_end();
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 35A1BFDB
/// @DnDArgument : "key" "ord("R")"
var l35A1BFDB_0;
l35A1BFDB_0 = keyboard_check(ord("R"));
if (l35A1BFDB_0)
{
	/// @DnDAction : YoYo Games.Game.Restart_Game
	/// @DnDVersion : 1
	/// @DnDHash : 764D1953
	/// @DnDParent : 35A1BFDB
	game_restart();
}