// STEP EVENT OF PLAYER
var move_speed = 2; // Adjust this to change the speed of the movement


if (!oPlayer.can_move) or (oCMenu.Menu) or (global.saveactive){
    image_index = 0;
	exit;
} 

var move_left = keyboard_check(vk_left) && !place_meeting(x - move_speed, y, oCollision);
var move_right = keyboard_check(vk_right) && !place_meeting(x + move_speed, y, oCollision);
var move_up = keyboard_check(vk_up) && !place_meeting(x, y - move_speed, oCollision);
var move_down = keyboard_check(vk_down) && !place_meeting(x, y + move_speed, oCollision);


if (move_left) {
    x -= move_speed;
    sprite_index = sFriskLeft; // Change sprite to left-facing sprite
} 
else if (move_right) {
    x += move_speed;
    sprite_index = sFriskRight; // Change sprite to right-facing sprite
}

if (move_up) {
    y -= move_speed;
    sprite_index = sFriskUp; // Change sprite to up-facing sprite
} 
else if (move_down) {
    y += move_speed;
    sprite_index = sFriskDown; // Change sprite to down-facing sprite
}

if (!move_left && !move_right && !move_up && !move_down) {
    image_index = 0; // Set sprite to the first frame when no keys are pressed
    image_speed = 0; // Stop the animation
} else 
    image_speed = 1; // Play the animation}

// In the Step event of oPlayer
show_debug_message("Player X: " + string(x) + ", Player Y: " + string(y));











