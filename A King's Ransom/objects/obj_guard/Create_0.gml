/// @description Insert description here
spd = 5;
sightDist = 2000;
seenX = x;
seenY = y;
cone = 45;
finalDir = 3;
myState = guardState.patrol;

path_start(path_to_follow, spd, path_action_reverse, true);

// Walking
guardSpr[guardState.patrol][0] = spr_Enemy_IdleRight;
guardSpr[guardState.patrol][1] = spr_Enemy_IdleBack;
guardSpr[guardState.patrol][2] = spr_Enemy_IdleLeft;
guardSpr[guardState.patrol][3] = spr_Enemy_IdleFront;