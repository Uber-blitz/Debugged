HP += 4; // increase the player’s health by 2
with(other) 
{
	instance_destroy(); 
}

audio_play_sound(snd_ExtraHealth,5,false);