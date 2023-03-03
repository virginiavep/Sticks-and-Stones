/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 53BFD416
/// @DnDArgument : "x1" "view_xport[0]  - 50"
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1" "view_yport[0] - 480"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "view_xport[0] + 100"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "view_yport[0] - 500"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "value" "global.playerHealth"
/// @DnDArgument : "backcol" "$FF333333"
/// @DnDArgument : "barcol" "$FF000000"
/// @DnDArgument : "mincol" "$FF000087"
/// @DnDArgument : "maxcol" "$FFC3FF00"
draw_healthbar(x + view_xport[0]  - 50, y + view_yport[0] - 480, x + view_xport[0] + 100, y + view_yport[0] - 500, global.playerHealth, $FF333333 & $FFFFFF, $FF000087 & $FFFFFF, $FFC3FF00 & $FFFFFF, 0, (($FF333333>>24) != 0), (($FF000000>>24) != 0));