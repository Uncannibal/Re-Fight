if (global.music_on == true){
	audio_group_set_gain(ag_mus, global.music_volume/100, 0);
} else{
	audio_group_set_gain(ag_mus, 0, 0);
}



if (global.sfx_on == true){
	audio_group_set_gain(ag_sfx, global.sfx_volume/100, 0);
} else{
	audio_group_set_gain(ag_sfx, 0, 0);
}
