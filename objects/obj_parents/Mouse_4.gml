// Inherit the parent event
event_inherited();

obj_game_logic.current_game_state = "talk";
obj_game_logic.is_dialogue_active = true;
obj_game_logic.dialogue_clicks = 0;
instance_create_layer(1180, 698, "lay_buttons", obj_next_button);

instance_destroy();

