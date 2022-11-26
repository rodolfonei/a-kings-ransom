/// @description

walkSpeed = 8;
vx = 0;
vy = 0;
dir = 3;
moveRight = 0;
moveLeft = 0;
moveUp = 0;
moveDown = 0;
offset = 10;

// Player Sprite array [myState][dir]

// Idle
playerSpr[playerState.idle][0] = spr_Player_IdleRight;
playerSpr[playerState.idle][1] = spr_Player_IdleBack;
playerSpr[playerState.idle][2] = spr_Player_IdleLeft;
playerSpr[playerState.idle][3] = spr_Player_IdleFront;

// Walking
playerSpr[playerState.walking][0] = spr_Player_IdleRight;
playerSpr[playerState.walking][1] = spr_Player_IdleBack;
playerSpr[playerState.walking][2] = spr_Player_IdleLeft;
playerSpr[playerState.walking][3] = spr_Player_IdleFront;