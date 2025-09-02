if (global.music_on == false){
	sprite_index = spr_music_off;
	audio_group_set_gain(ag_mus, 0, 500);
}else{
	sprite_index = spr_music_on;
	audio_group_set_gain(ag_mus, global.music_volume/100, 500);
}