

function controlSetup() {
	
	bufferTime = 3;
	
	jumpKeyBuffered = 0;
	junpKeyBufferTimer = 0;
	
}

function getControls(){
	
	//direction iunputs
	rightKey =   keyboard_check(vk_right) + gamepad_button_check(0, gp_padr);
    rightKey = clamp( rightKey, 0 , 1);

	leftKey =  keyboard_check(vk_left) +  gamepad_button_check(0, gp_padl);
    leftKey = clamp( leftKey, 0 , 1);

	//action inputs
	jumpKeyPressed = keyboard_check_pressed(vk_space) + gamepad_button_check_pressed(0, gp_face1);
    jumpKeyPressed = clamp( jumpKeyPressed, 0 , 1);

	jumpKey = keyboard_check(vk_space) + gamepad_button_check(0, gp_face1);
	jumpKey = clamp( jumpKey, 0 , 1);
	
	
	runKey = keyboard_check(ord("B")) + gamepad_button_check_pressed(0, gp_face3);
   runKey = clamp( runKey, 0 , 1);
   

	
	if jumpKeyPressed {
		jumpKeyBufferTimer = bufferTime;	 
	}
	
	if jumpKeyBufferTimer > 0 {
		
		jumpKeyBuffered = 1;
		jumpKeyBufferTimer --;

	} else {
		jumpKeyBuffered = 0;
	}
}

//jump buffering i think it means holding down a jump key makes you jump further (:






