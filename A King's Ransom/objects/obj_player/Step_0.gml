/// @description Player movement

// Check keys for movement
moveRight = keyboard_check(vk_right);
moveLeft = keyboard_check(vk_left);
moveUp = keyboard_check(vk_up);
moveDown = keyboard_check(vk_down);

// Calculate movement
vx = ((moveRight - moveLeft) * walkSpeed);
vy = ((moveDown - moveUp) * walkSpeed);

// If idle
if (vx == 0 && vy == 0) {
	myState = playerState.idle;
}

// If moving
if (vx != 0 || vy != 0) {
	if place_empty(x + vx, y, obj_wall) 
	&& !collision_point(x + vx, y, obj_block, false, true)
	{
		x += vx;
	}
	if place_empty(x, y + vy, obj_wall) 
	&& !collision_point(x, y + vy, obj_block, false, true)
	{ 
		y += vy;
	}
	
	// Change direction based on movement
	if (vx > 0) {
		dir = 0;
	}
	if (vx < 0) {
		dir = 2;
	}
	if (vy > 0) {
		dir = 3;
	}
	if (vy < 0) {
		dir = 1;
	}
	
	// Set state
	myState = playerState.walking;
}

// Auto-choose Sprite based on state and direction
sprite_index = playerSpr[myState][dir];