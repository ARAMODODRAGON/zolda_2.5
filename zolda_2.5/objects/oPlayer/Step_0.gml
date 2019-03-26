/// @desc Player Controller

#region get inputs

input_h = keyboard_check(vk_right) - keyboard_check(vk_left);
input_v = keyboard_check(vk_down) - keyboard_check(vk_up);

#endregion

#region movement

hsp = sign(input_h) * maxsp;
vsp = sign(input_v) * maxsp;

#endregion

#region collision

if (place_meeting(x + hsp, y, oCollider)) {
	while (place_meeting(x + sign(hsp), y, oCollider)) {
		x += sign(hsp);
	}
	hsp = 0;
}
x += hsp;

if (place_meeting(x, y + vsp, oCollider)) {
	while (place_meeting(x, y + sign(vsp), oCollider)) {
		y += sign(vsp);
	}
	vsp = 0;
}
y += vsp;

#endregion