// Moving around
if (keyboard_check(vk_right)||keyboard_check(ord("D"))) x = x + 4;
if (keyboard_check(vk_left)||keyboard_check(ord("A"))) x = x - 4;
if (keyboard_check(vk_up)||keyboard_check(ord("W"))) y = y - 4;
if (keyboard_check(vk_down)||keyboard_check(ord("S"))) y = y + 4;

image_angle = point_direction(x, y, mouse_x, mouse_y);

// Shoot
if (mouse_check_button(mb_left)&& cooldown < 1) {
	instance_create_layer(x, y, "BulletsLayer", obj_bullet);
	cooldown = 10;
}

cooldown = cooldown - 1;


incoming_Enemy = instance_place(x,y, obj_enemy);

if (instance_exists(incoming_Enemy)) {
	if (!soundPlayed){
		audio_play_sound(snd_playerDeath,1,false);
		soundPlayed = true;
		
	}
	if (soundLength <= 0) {
		game_restart();
	}
	soundLength = soundLength - 1;

}

