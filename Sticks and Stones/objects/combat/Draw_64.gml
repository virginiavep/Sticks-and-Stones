/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 65935E0E
/// @DnDArgument : "x1" "playerCombat_obj.x - 50"
/// @DnDArgument : "y1" "playerCombat_obj.y - 190"
/// @DnDArgument : "x2" "playerCombat_obj.x + 100"
/// @DnDArgument : "y2" "playerCombat_obj.y -170"
/// @DnDArgument : "value" "global.playerHealth"
/// @DnDArgument : "backcol" "$FF333333"
/// @DnDArgument : "barcol" "$FF000000"
/// @DnDArgument : "mincol" "$FF000087"
/// @DnDArgument : "maxcol" "$FFC3FF00"
draw_healthbar(playerCombat_obj.x - 50, playerCombat_obj.y - 190, playerCombat_obj.x + 100, playerCombat_obj.y -170, global.playerHealth, $FF333333 & $FFFFFF, $FF000087 & $FFFFFF, $FFC3FF00 & $FFFFFF, 0, (($FF333333>>24) != 0), (($FF000000>>24) != 0));

/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 7F9A4553
/// @DnDArgument : "x1" "enemyCombat_obj.x - 100"
/// @DnDArgument : "y1" "enemyCombat_obj.y - 190"
/// @DnDArgument : "x2" "enemyCombat_obj.x + 50"
/// @DnDArgument : "y2" "enemyCombat_obj.y - 170"
/// @DnDArgument : "direction" "1"
/// @DnDArgument : "value" "global.enemyHealth"
/// @DnDArgument : "backcol" "$FF333333"
/// @DnDArgument : "barcol" "$FF000000"
/// @DnDArgument : "mincol" "$FF000087"
/// @DnDArgument : "maxcol" "$FFc3ff00"
draw_healthbar(enemyCombat_obj.x - 100, enemyCombat_obj.y - 190, enemyCombat_obj.x + 50, enemyCombat_obj.y - 170, global.enemyHealth, $FF333333 & $FFFFFF, $FF000087 & $FFFFFF, $FFc3ff00 & $FFFFFF, 1, (($FF333333>>24) != 0), (($FF000000>>24) != 0));