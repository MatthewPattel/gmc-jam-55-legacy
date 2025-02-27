/// @description Movement

var _currentSpeedAcc = speedAcc * (global.gameSpeed*0.7);

var _limitLeft = (room_width/2) - 64 + (sprite_width/2);
var _limitRight = (room_width/2) + 64 - (sprite_width/2);

var _moveLeft = (keyboard_check(vk_left) or keyboard_check(ord("A")));
var _moveRight = (keyboard_check(vk_right) or keyboard_check(ord("D")));

var _move = _moveRight - _moveLeft;

if (_move != 0) {
	speedMove = speedMove + (_currentSpeedAcc * _move);
} else {
	if (speedMove > 0) {
		speedMove -= _currentSpeedAcc;
	} else if (speedMove < 0) {
		speedMove += _currentSpeedAcc;
	}
}
speedMove = clamp(speedMove, -speedMax, speedMax);
image_angle = -((speedMove * angleMax) / speedMax);

show_debug_message(speedMove);
x += speedMove;

x = clamp(x, _limitLeft, _limitRight);

instance_create_depth(x,y,depth +1,obj_smoke)



