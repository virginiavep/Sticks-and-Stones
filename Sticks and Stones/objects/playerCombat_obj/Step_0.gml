/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3DBB583F
/// @DnDArgument : "code" "if takingDamage == true {$(13_10)	flAlpha = 0.5;$(13_10)}$(13_10)$(13_10)if flAlpha > 0 {$(13_10)	flAlpha -= 0.01	$(13_10)}"
if takingDamage == true {
	flAlpha = 0.5;
}

if flAlpha > 0 {
	flAlpha -= 0.01	
}