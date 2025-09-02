is_dialogue_active = false;
dialogue_clicks = 0;
is_music_set = false;

has_parents_spawned = false;
function draw_psilly(dialogue){
	draw_text_transformed(20, 677, dialogue, 1, 1, 0);
}

function do_dialogue(clicks, spr_mom, spr_dad, dialogue){
	if (dialogue_clicks == clicks){
		obj_mom.sprite_index = spr_mom;
		obj_dad.sprite_index = spr_dad;
		draw_set_colour(c_black);
		draw_rectangle(0, 670, 1280, 720, false);
		draw_set_colour(c_white);
		draw_psilly(dialogue);
	}
}

function do_dialogue_door(clicks, dialogue){
	if (dialogue_clicks == clicks){
		draw_set_colour(c_black);
		draw_sprite(spr_blank_screen, 0, 640, 363);
		draw_sprite(spr_missing, 0, 640, 363);
		draw_set_colour(c_white);
		draw_psilly(dialogue);
	}
}

function do_talk(clicks, spr_mom, spr_dad, dialogue){
	if (dialogue_clicks == clicks){
		draw_set_colour(c_black);
		draw_sprite(spr_blank_screen, 0, 640, 363);
		draw_sprite(spr_mom, 0, 803, 488);
		draw_sprite(spr_dad, 0, 449, 464);
		draw_rectangle(0, 670, 1280, 720, false);
		draw_set_colour(c_white);
		draw_psilly(dialogue);
	}
}

function dialogue_cleanup(clicks){
	if (dialogue_clicks == clicks){
		draw_set_colour(c_black);
		draw_rectangle(0, 670, 1280, 720, false);
		obj_mom.sprite_index = spr_mom_fight;
		obj_dad.sprite_index = spr_dad_fight;
	} else if (dialogue_clicks == clicks + 1){	
		draw_sprite(spr_blank_screen, 0, 640, 363)
		instance_destroy(obj_table_item);
		obj_next_button.x = 640;
		obj_next_button.y = 363;
		obj_next_button.sprite_index = spr_do_over_button;
		if (position_meeting(mouse_x, mouse_y, obj_next_button)){
			obj_next_button.sprite_index = spr_do_over_button_click;
		} else {
			obj_next_button.sprite_index = spr_do_over_button;
		}
	} else if (dialogue_clicks > clicks + 1){
		is_dialogue_active = false;
		instance_destroy(obj_next_button);
		if (array_length(game_states_inactive) == 9){
			current_game_state = "pre-talk";
		} else {
			current_game_state = "main";
		}
	}
}

game_states = ["bowl", "cat", "flowers", "game", 
"guitar", "paper", "plant", "report", "door"]

game_states_inactive = [];

current_game_state = "main";



