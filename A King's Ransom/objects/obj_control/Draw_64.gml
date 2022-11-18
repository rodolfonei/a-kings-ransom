/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_center);

switch(room) {
	case rm_start:
		draw_text(
			room_width/2, 300,
			"A KING'S RANSOM"
		);
		draw_text(
			room_width/2, 400,
			"PRESS ENTER TO START"
		);
		break;
	case rm_gameMain:
		if (!instance_exists(obj_player)) {
			draw_text(
				700, 0,
				"PRESS ENTER TO RESTART"
			);
		}
		break;
	case rm_win:
		draw_text(
			room_width/2, 300,
			"VICTORY"
		);
		draw_text(
			room_width/2, 400,
			"PRESS ENTER TO RESTART"
		);
}








