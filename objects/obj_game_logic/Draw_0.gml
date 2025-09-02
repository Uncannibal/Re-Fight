draw_set_font(ft_psilly);

if (current_game_state == game_states[0]){
	do_dialogue(0, spr_mom_look, spr_dad_look, "...");
	do_dialogue(1, spr_mom_stare, spr_dad_stare, "MOM: 'You should feed Oscar.'");
	do_dialogue(2, spr_mom_stare, spr_dad_fight1, "DAD: 'Why is that always my job!? You were the one that wanted the cat!'");
	do_dialogue(3, spr_mom_stare, spr_dad_stare, "DAD: 'I feel like I do everything for your cat.'");
	dialogue_cleanup(4);
} else if (current_game_state == game_states[1]){
	do_dialogue(0, spr_mom_look, spr_dad_look, "...");
	do_dialogue(1, spr_mom_look, spr_dad_stare, "DAD: 'Oscar loves me more.'");
	do_dialogue(2, spr_mom_fight1, spr_dad_stare, "MOM: 'How can you say that!? I adopted him!'");
	do_dialogue(3, spr_mom_stare, spr_dad_fight1, "DAD: 'Oh don't start. You do nothing for him. You're terrible with animals.'");
	dialogue_cleanup(4);
} else if (current_game_state == game_states[2]){
	do_dialogue(0, spr_mom_look, spr_dad_look, "...");
	do_dialogue(1, spr_mom_talk, spr_dad_stare, "MOM: 'Aww. Thanks sweetie.'");
	do_dialogue(2, spr_mom_stare, spr_dad_stare, "MOM: 'Your dad used to get me flowers like this all the time.'");
	do_dialogue(3, spr_mom_fight1, spr_dad_stare, "MOM: 'Too bad he doesn't care anymore!'");
	dialogue_cleanup(4);
} else if (current_game_state == game_states[3]){
	do_dialogue(0, spr_mom_look, spr_dad_look, "...");
	do_dialogue(1, spr_mom_look, spr_dad_talk, "DAD: 'Not now kiddo, we're busy.'");
	do_dialogue(2, spr_mom_fight1, spr_dad_stare, "MOM: 'Don't talk to my child like that!'");
	do_dialogue(3, spr_mom_stare, spr_dad_fight1, "DAD: 'What did I say!?'");
	dialogue_cleanup(4);
}  else if (current_game_state == game_states[4]){
	if (dialogue_clicks < 7){
		draw_sprite(spr_guitar, 0, 1076, 270);
	}
	do_dialogue(0, spr_mom_look, spr_dad_look, "...");
	do_dialogue(1, spr_mom_look, spr_dad_talk1, "DAD: 'Really?'");
	do_dialogue(2, spr_mom_look, spr_dad_stare, "DAD: 'You want to play on the guitar?'");
	do_dialogue(3, spr_mom_look, spr_dad_stare, "DAD: 'That one up there has been broken for a long time.'");
	do_dialogue(4, spr_mom_stare, spr_dad_talk1, "DAD: 'I'd have to get it fixed first.'");
	do_dialogue(5, spr_mom_fight1, spr_dad_stare, "MOM: 'There you go spending our money on your hobbies again.'");
	dialogue_cleanup(6);
} else if (current_game_state == game_states[5]){
	do_dialogue(0, spr_mom_look, spr_dad_look, "...");
	do_dialogue(1, spr_mom_look, spr_dad_talk, "DAD: 'This is a good drawing kid. You'll be an artist when you grow up.'");
	do_dialogue(2, spr_mom_fight1, spr_dad_stare, "MOM: 'Can't you see that you're upsetting our child!'");
	do_dialogue(3, spr_mom_stare, spr_dad_fight1, "DAD: 'What!? You're the one yelling!'");
	dialogue_cleanup(4);
} else if (current_game_state == game_states[6]){
	//if(dialogue_clicks < 4){
	//	draw_sprite(spr_plant, 0, 324, 508);
	//}
	do_dialogue(0, spr_mom_look, spr_dad_look, "...");
	do_dialogue(1, spr_mom_look, spr_dad_talk, "DAD: 'The kid's right. Your monstera is dying. We should water it.'");
	do_dialogue(2, spr_mom_fight1, spr_dad_stare, "MOM: 'We!? You know damn well I'm the only one watering that stupid plant!'");
	dialogue_cleanup(3);
}   else if (current_game_state == game_states[7]){
	do_dialogue(0, spr_mom_look, spr_dad_look, "...");
	do_dialogue(1, spr_mom_talk, spr_dad_look, "MOM: 'That's very nice honey, but we're busy.'");
	dialogue_cleanup(2);
} else if (current_game_state == game_states[8]){
	do_dialogue_door(0, "");
	do_dialogue_door(1, "...");
	do_dialogue_door(2, "MOM: 'It's your fault our child is gone...'");
	do_dialogue_door(3, "MOM: 'You should have stopped yelling.'");
	do_dialogue_door(4, "DAD: 'We should have both been watching the kid more closely!'");
	do_dialogue_door(5, "MOM: 'How dare you drag me into this. I did nothing wrong!'");
	do_dialogue_door(6, "");
	if (dialogue_clicks==7){
		obj_mom.sprite_index = spr_mom_fight;
		obj_dad.sprite_index = spr_dad_fight;
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
	} else if (dialogue_clicks >= 8){
		is_dialogue_active = false;
		instance_destroy(obj_next_button);
		if (array_length(game_states_inactive) == 9){
			current_game_state = "pre-talk";
		} else {
			current_game_state = "main";
		}
	}
} else if (current_game_state == "talk"){
	do_talk(0, spr_mom_fight, spr_dad_fight, "...");
	do_talk(1, spr_mom_fight, spr_dad_fight, "YOU: 'Mom? Dad? I have a question.'");
	do_talk(2, spr_mom_frown, spr_dad_frown, "?");
	do_talk(3, spr_mom_frown, spr_dad_talk1, "DAD: 'What's up, kiddo?'");
	do_talk(4, spr_mom_frown, spr_dad_frown, "YOU: 'Do you still love each other?'");
	do_talk(5, spr_mom_look, spr_dad_look, "...");
	do_talk(6, spr_mom_frown, spr_dad_talk, "DAD: 'I care about your mom, and your mom cares about me.'");
	do_talk(7, spr_mom_frown, spr_dad_frown, "YOU: 'Then why do you fight?'");
	do_talk(8, spr_mom_talk, spr_dad_frown, "MOM: 'Our love has changed. Now, instead of helping each other, we're hurting.'");
	do_talk(9, spr_mom_frown, spr_dad_talk, "DAD: 'Does our fighting bother you?'");
	do_talk(10, spr_mom_frown, spr_dad_frown, "YOU: 'Yes.'");
	do_talk(11, spr_mom_stare, spr_dad_stare, "...");
	do_talk(12, spr_mom_talk, spr_dad_look, "MOM: 'We don't want to worry you anymore.'");
	do_talk(13, spr_mom_talk, spr_dad_look, "MOM: 'Your dad and I have been talking about our next steps for a while.'");
	do_talk(14, spr_mom_frown, spr_dad_look, "...");
	do_talk(15, spr_mom_frown, spr_dad_look, "YOU: 'What will you do?'");
	do_talk(16, spr_mom_frown, spr_dad_talk, "DAD: 'We are getting a divorce.'");
	do_talk(17, spr_mom_frown, spr_dad_frown, "YOU: 'What does that mean?'");	
	do_talk(18, spr_mom_talk, spr_dad_look, "MOM: 'It means your dad and I won't be living with each other anymore.'");
	do_talk(19, spr_mom_talk, spr_dad_look, "MOM: 'We still love each other, but in a new way. Your dad is my best friend.'");
	do_talk(20, spr_mom_talk, spr_dad_smile, "MOM: 'We want to be better parents to you.'");
	do_talk(21, spr_mom_smile, spr_dad_talk1, "DAD: 'We love you very much, and we want the best for you.'");
	do_talk(22, spr_mom_smile, spr_dad_talk1, "DAD: 'And I want you to know that this isn't your fault.'");
	do_talk(23, spr_mom_talk, spr_dad_smile, "MOM: 'Things are changing. We're moving to a place away from each other.'");
	do_talk(24, spr_mom_talk, spr_dad_smile, "MOM: 'But you will see both of us all the time.'");
	do_talk(25, spr_mom_smile, spr_dad_talk1, "MOM: 'We will always be your parents. Nothing will ever change that.'");
	do_talk(26, spr_mom_smile, spr_dad_smile, "");
	if (dialogue_clicks == 27){
		draw_sprite(spr_blank_screen, 0, 640, 363);
	} else if (dialogue_clicks > 27){
		room_goto(rm_end);
	}	
}



//draw_text(10, 10, string(dialogue_clicks));
//draw_text(10, 30, string(current_game_state));
//draw_text(10, 50, string(game_states_inactive));