/// @description

walkSpeed = 16;
vx = 0;
vy = 0;
dir = 3;
moveRight = 0;
moveLeft = 0;
moveUp = 0;
moveDown = 0;

// Player Sprite array [myState][dir]

// Idle
playerSpr[playerState.idle][0] = spr_nobody;
playerSpr[playerState.idle][1] = spr_nobody;
playerSpr[playerState.idle][2] = spr_nobody;
playerSpr[playerState.idle][3] = spr_nobody;

// Walking
playerSpr[playerState.walking][0] = spr_nobody;
playerSpr[playerState.walking][1] = spr_nobody;
playerSpr[playerState.walking][2] = spr_nobody;
playerSpr[playerState.walking][3] = spr_nobody;