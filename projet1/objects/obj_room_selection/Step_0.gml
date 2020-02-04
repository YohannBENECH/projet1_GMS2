/// @description Text control
if(keyboard_check(vk_anykey) && string_length(text_saisi) < 3)
{
	text_saisi = text_saisi+string(keyboard_string);
	keyboard_string = "";
}

if(keyboard_check_pressed(vk_backspace))
{
	text_saisi = string_delete(text_saisi, string_length(text_saisi), 1);
	keyboard_string = "";
}

//JUMP SI APPUI SUR ENTRE ET QUE QUELQUE CHOSE A ETE SAISI
if(keyboard_check_pressed(vk_enter) && text_saisi != noone)
{
	scr_room_jumper(real(text_saisi));
}