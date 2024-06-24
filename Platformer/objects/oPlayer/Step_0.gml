// Get inputs
rightKey = keyboard_check(vk_right);
leftKey = keyboard_check(vk_left);
jumpKeyPressed = keyboard_check_pressed(vk_space);
runKey = keyboard_check(ord("H"))


// X movement, direction
moveDir = rightKey - leftKey;
if moveDir != 0{face = moveDir;};

runType = runKey;
xspd = moveDir * moveSpd[runType];









// X Collisions
var _subPixel = 0.5;
if (place_meeting(x + xspd, y, oWall)) {
	
	if !place_meeting(x + xspd, y - abs(xspd) - 1, oWall){
		
		
		while place_meeting(x + xspd, y, oWall) {y -= _subPixel; };
		
	}
	else{
	
	// Scoot up to the wall
	var _pixelCheck = _subPixel * sign(xspd);
	while (!place_meeting(x + _pixelCheck, y, oWall)) 
	{
		x += _pixelCheck;
	}
	
	
	
	// Set x speed to zero to collide
	xspd = 0;
	
	}
}


if yspd >= 0 && !place_meeting(x + xspd, y + 1, oWall) && place_meeting( x + xspd, y + abs(xspd)+1 , oWall){
	
	while place_meeting(x + xspd, y + _subPixel, oWall) {y += _subPixel; };
	
}


x += xspd;
















//coyote ttime



if coyoteHangTimer > 0{
	
	coyoteHangTimer--;
	
}else{
	
	//apply gravity
	yspd += grav;
	//we3 realised we are not on ground
	set_on_ground(false);
}

// Y movement


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
	
	
	if yspd < 0{jumpHoldTimer = 0;}	
		
	
	
		
	// Set x speed to zero to collide
	yspd = 0;
}

//set if I'm on the ground;
if yspd >= 0 && place_meeting(x, y+1, oWall) {	
	
	set_on_ground(true);
} 

y += yspd;




//Cut off the jump by releasing the jump button
if !jumpKeyPressed
{
	jumpHoldTimer = 0;
}



//Jump based on the timer/holding the button
if jumpHoldTimer > 0 
{
	//Constantly set the yspd to be jumping speed
	yspd = jspd[jumpCount-1];
	//Count down the timer
	jumpHoldTimer--;
}








// SPRITE CONTROL

maskSpr = sPlayerIdle
idleSpr = sPlayerIdle;
runSpr = sPlayerRun;
walkSpr = sPlayerWalk;
jumpSpr = sPlayerJump;





if abs(xspd)  >   0{sprite_index = walkSpr;};
if abs(xspd) >= moveSpd[1]{sprite_index = runSpr;};
if xspd  ==   0{sprite_index = idleSpr;};
if !onGround {sprite_index = jumpSpr;};

mask_index = idleSpr;












