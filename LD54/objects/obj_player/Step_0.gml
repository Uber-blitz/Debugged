
if keyboard_check(ord("W")){
	y -= 5
}
if keyboard_check(ord("S")){
	y += 5
}
if keyboard_check(ord("A")){
	x -= 5
}
if keyboard_check(ord("D")){
	x += 5
}

x = clamp(x,0 + 32, room_width - 32)
y = clamp(y,0 + 32, room_height - 32)