/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_enter)) {
	switch(room) {
		case rm_start:
			room_goto(rm_Intro);
			break;
			
		case rm_Intro:
			room_goto(rm_gameMain2);
			break;
			
		case rm_gameMain2:
			game_restart();
			break;
			
		case rm_win:
			game_restart();
			break;
	}
}





