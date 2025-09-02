if (audio_group_is_loaded(ag_mus)){
	audio_group_set_gain(ag_mus, global.music_volume/100, 0);
	audio_play_sound(mus_refight_title, 0, true);
}
if (audio_group_is_loaded(ag_sfx)){
	audio_group_set_gain(ag_sfx, global.sfx_volume/100, 0);
}