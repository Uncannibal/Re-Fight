if (obj_game_logic.is_dialogue_active == false){
	sprite_index = hover_sprite;
	if (audio_group_is_loaded(ag_sfx)) {
    audio_play_sound(sfx_hover, 0, false, 1, 0, random_range(0.8, 1.2));
}
}

