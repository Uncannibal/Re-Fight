if (obj_game_logic.is_dialogue_active == false){
	obj_game_logic.current_game_state = game_state;
	array_push(obj_game_logic.game_states_inactive, game_state);
	obj_game_logic.is_dialogue_active = true;
	obj_game_logic.dialogue_clicks = 0;
	instance_create_layer(1180, 698, "lay_buttons", obj_next_button);

	instance_destroy();
}