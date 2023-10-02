/// @description Insert description here
// You can write your code in this editor




// Collision Event with obj_health_pickup in obj_player
HP += 2; // increase the player’s health by 2
with(other) instance_destroy(); // destroy the health pickup object

