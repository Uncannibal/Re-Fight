var index = irandom(1);

if (audio_group_is_loaded(ag_sfx)){
	if (index == 0){
		audio_play_sound(sfx_click1, 0, false, 1, 0, random_range(0.8, 1.2));
	}else{
		audio_play_sound(sfx_click2, 0, false, 1, 0, random_range(0.8, 1.2));
	}
}
