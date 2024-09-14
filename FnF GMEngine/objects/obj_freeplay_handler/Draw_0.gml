draw_sprite_ext(spr_menu_bg, 0, 0, 0, 1, 1, 0, thecolor, 1)

for (var i = 0; i < array_length(songlist); i += 1) {
	if curselect == i {draw_set_alpha(1)}
	else {draw_set_alpha(0.6)}
	draw_sprite(songlist[i][2], 0, 155, (360 + (155 * i)) - basex)
	draw_text_scribble(160, (355 + (155 * i)) - basex, "[fnt_big][fa_middle]" + songlist[i][1])
}

draw_set_alpha(1)
draw_text_scribble(1275, 10, "[fnt_big][fa_right]" + diffarray[curdiff])
draw_text_scribble(1275, 50, "[fnt_big][fa_right]" + string(curscore))
draw_text_scribble(1275, 90, "[fnt_big][fa_right]Current Character - " + global.curcharacter)