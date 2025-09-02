if(current_game_state == "pre-talk" && has_parents_spawned == false){
	instance_destroy(obj_parent);
	instance_create_layer(640, 464.5, "lay_parents", obj_parents);
	has_parents_spawned = true;
}

if(current_game_state == "talk" && is_music_set == false){
	audio_stop_sound(mus_happy_day);
	audio_play_sound(mus_papers, 0, true);	
	is_music_set = true;
}