draw_self()

if position_meeting(mouse_x,mouse_y,self){

    image_blend = c_white; // If mouse is over the object, turn it white
    
}
else{

    image_blend = c_ltgray; // If mouse isn't over the object, turn it light grey
}