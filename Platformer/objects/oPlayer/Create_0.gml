//control setup(you probably gueseed that);
controlSetup();

// Moving

moveDir = 0; // -1 left, 0 not moving 1 right
moveSpd = 2; // Pixels per frame
xspd = 0;
yspd = 0;

// Jumping
grav = 0.275;
termVel = 4; // How fast can player fall, max, pixels per frame
jspd = -6.15; // Jump speed
jumpMax = 3; // maximum number of jumps
jumpCount = 0; //number of jumps performed
jumpHoldTimer = 0; //diferent jump lengths
jumpHoldFrames = 18;
onGround = true;