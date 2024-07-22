/// @description Insert description here
// You can write your code in this editor
dir += rotSpd;

var _targetX = xstart + lengthdir_x(radius, dir);
var _targetY = ystart + lengthdir_y(radius, dir);

xspd = _targetX - x;
yspd = _targetY - y;

x += xspd;
y += yspd;