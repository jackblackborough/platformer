// Get inputs
rightKey = keyboard_check(vk_right);
leftKey = keyboard_check(vk_left);
jumpKeyPressed = keyboard_check_pressed(vk_space);

// X movement, direction
moveDir = rightKey - leftKey;

xspd = moveDir * moveSpd;

// X Collisions
var _subPixel = 0.5;
if (place_meeting(x + xspd, y, oWall)) {
	
	// Scoot up to the wall
	var _pixelCheck = _subPixel * sign(xspd);
	while (!place_meeting(x + _pixelCheck, y, oWall)) 
	{
		x += _pixelCheck;
	}
	
	// Set x speed to zero to collide
	xspd = 0;
}

x += xspd;

// Y movement
yspd += grav;

if (yspd > termVel) { yspd = termVel; }

if (jumpKeyPressed && place_meeting(x, y + 1, oWall)) {
	yspd = jspd;	
}

var _subPixel = 0.5;
if (place_meeting(x, y + yspd, oWall)) {
	
	// Scoot up to the wall
	var _pixelCheck = _subPixel * sign(yspd);
	while (!place_meeting(x, y + _pixelCheck, oWall)) 
	{
		y += _pixelCheck;
	}
	
	// Set x speed to zero to collide
	yspd = 0;
}

y += yspd;