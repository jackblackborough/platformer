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

if onGround{
	
	jumpCount = 0;	
} else {
	
	if jumpCount  = 0 {
		jumpCount = 1;	
	}	
}

if (yspd > termVel) { yspd = termVel; }

if (jumpKeyPressed )&& jumpCount < jumpMax {
	
	jumpKeyBuffered = false;
	jumpKeyBufferTimer = 0;	
	jumpCount++;

	yspd = jspd;
	jumpCount++;
}

if yspd > termVel{yspd = termVel}

var subPixel = 0.5;
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

//set if I'm on the ground;
if yspd >= 0 && place_meeting(x, y+1, oWall) {	
	onGround = true;
} else {	
	onGround = false;	
}

y += yspd;