global.sfx_on = !global.sfx_on;

if (global.sfx_on == false){
	sprite_index = spr_sound_off;
	audio_group_set_gain(ag_sfx, 0, 500);
}else{
	sprite_index = spr_sound_on;
	audio_group_set_gain(ag_sfx, global.sfx_volume/100, 500);
}