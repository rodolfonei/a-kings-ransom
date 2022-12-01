/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_enter)) {
	switch(room) {
		case rm_start:
			audio_play_sound(snd_enter, 2, 0);
			room_goto(rm_Intro);
			audio_play_sound(Ardie_Son___Aftershocks, 1, 1);
			break;
			
		case rm_Intro:
			audio_play_sound(snd_enter, 2, 0);
			room_goto(rm_gameMain2);
			break;
			
		case rm_gameMain2:
			room_goto(rm_Intro);
			break;
			
		case rm_win:
			room_goto(rm_Intro);
			break;
	}
}





