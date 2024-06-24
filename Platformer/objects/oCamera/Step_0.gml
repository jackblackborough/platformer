/// @description Insert description here
// You can write your code in this editor
if !instance_exists(oPlayer)exit;

var camWidth = camera_get_view_width(view_camera[0]);
var camHeight = camera_get_view_height(view_camera[0]);

//get co-ordinates (do you like the name general FUNKY functions as one of my scripts :)  tip look sideways and you will see a smiley face by the colon and bracket , see ya jack out !!!!
var camX = oPlayer.x - camWidth/2;
var camY = oPlayer.y - camHeight/2;

//stay in room
camX = clamp(camX, 0 , room_width - camWidth);
camY = clamp(camY, 0 , room_height - camHeight);
//set camera co-ordinates___________________________________________________________________________________________

camera_set_view_pos(view_camera[0], camX, camY);