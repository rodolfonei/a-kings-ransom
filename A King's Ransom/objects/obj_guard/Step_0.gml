/// @description Insert description here
// You can write your code in this editor
switch myState {
	case guardState.patrol: {
		if (instance_exists(obj_player)) {
			// código mágico de patrol pra guardar pra sempre
			if abs(angle_difference(direction, point_direction(x, y, obj_player.x, obj_player.y))) < cone
			&& distance_to_point(obj_player.x, obj_player.y) < sightDist
			&& !collision_line(x, y, obj_player.x, obj_player.y, obj_wall, 1, 1) {
				audio_play_sound(snd_seen, 2, 0);
				myState = guardState.chase;
			}
		}
		
	}; break;
	case guardState.chase: {
		path_end();
		if (instance_exists(obj_player)) {
			seenX = obj_player.x;
			seenY = obj_player.y;
			mp_potential_step(seenX, seenY, spd*3, false);
		}
	}; break;
}

dir = round(direction)

if (dir >= 0 && dir < 45 || dir >= 315) {
	finalDir = 0;
}

if (dir >= 45 && dir < 135) {
	finalDir = 1;
}

if (dir >= 135 && dir < 270) {
	finalDir = 2;
}
if (dir >= 270 && dir < 315) {
	finalDir = 3;
}

sprite_index = guardSpr[guardState.patrol][finalDir];

