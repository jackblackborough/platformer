function set_on_ground(_val = true){
	
	if _val == true{	
		onGround = true;
		coyoteHangTimer = coyoteHangFrames;
	} else {
		onGround = false; 
		myFloorPlat = noone;
		coyoteHangTimer = 0;
	}
}






//control setup(you probably gueseed that);
controlSetup();

// Moving
face = 1;
runType = 0;
moveDir = 0; // -1 left, 0 not moving 1 right
moveSpd[0] = 2; // Pixels per frame
moveSpd[1]  = 4.5;
xspd = 0;
yspd = 0;

// Jumping
grav = 0.275;
termVel = 4; // How fast can player fall, max, pixels per frame
jspd = -6; // Jump speed
jumpMax = 3; // maximum number of jumps
jumpCount = 0; //number of jumps performed
jumpHoldTimer = 0; //diferent jump lengths
jumpHoldFrames = 18;
onGround = true;


// COYOTE TIME
// HANG TIME


coyoteHangFrames = 0;
coyoteHangTimer = 0 ;

//JUMP BUFFER TIME(COYOTE TIME)

coyoteJumpFrames = 6;
coyoteJumpTimer = 0;



myFloorPlat = noone;
movePlatXspd = 0;
movePlatMaxYspd = 8;

