/// @description Insert description here
// You can write your code in this editor
switch myState {
	case guardState.patrol: {
		if (instance_exists(obj_player)) {
			// código mágico de patrol pra guardar pra sempre
			if abs(angle_difference(direction, point_direction(x, y, obj_player.x, obj_player.y))) < cone
			&& distance_to_point(obj_player.x, obj_player.y) < sightDist {
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





