x = x + hsp //INERTIA!!!!!
//y = y + speeeed;
/* //Begin Step Event
xprevious = x;
yprevious = y;*/
key_left = (keyboard_check(vk_left));
key_right = (keyboard_check(vk_right));
/*
//Step Event
xvel = vect_subtract(vect2(x, y), vect2(xprevious, yprevious));
yvel = vect_subtract(vect2(x, y), vect2(xprevious, yprevious));
//vect subtract? vect?
*/
inerta = vx - f;

px = x;
py = y;
ex = x + sped; // made x- instead of x+
ey = y - legs;

vx = (ex - px); 
vy = (ey - py); 

len = sqrt((vx*vx) + (vy*vy)); 

vx = vx / len; 
vy = vy / len; 

xvel = (vx * arb); 
//yvel = (vy * arb); 

key_jump = (keyboard_check(vk_up));

if keyboard_check(vk_left)
{
	if xvel != 0{
    macc = acc - xvel/weakness;
	speeed = 0 - macc - inerta;
	} else {
		macc = acc - weakness;
		speeed = 0 - macc - inerta;
	}
}

if keyboard_check(vk_right)
{
    macc = acc - xvel/weakness;
	speeed = macc - inerta;
}
if(place_meeting(x,y+1,obj_colisionBlock)) && (key_jump){
	vsp -= legs;
}

//add gravity
vsp = vsp + grv;
if(place_meeting(x,y+1,obj_colisionBlock)) && (key_jump){
	vsp -= 16
}


if hp<1{
	for (var i = 0; i < 10; i += 1) {
		image_index = 5;
		image_index = 6;
	}
	instance_destroy();
}
if (hp <= 0){
	instance_destroy();
}
//xvel = (put calculating code here)
//(something to do with calculating code accelerating using macc)



//walksp needs to accelerate
//block based friction
//


//keyboard pressed
/*key_left = (keyboard_check(ord("A")))
key_right = (keyboard_check(ord("D")))
key_jump = (keyboard_check(ord("W")))

*/
//calculate movement
var move = key_right - key_left;

hsp = move * walksp;
/*
vsp = vsp + grv

if(place_meeting(x,y+1,obj_colisionBlock)) && (key_jump){
	vsp -= 16
}
*/
//Horisontal colision
if(place_meeting(x+hsp,y,obj_colisionBlock)){
	while(!place_meeting(x+sign(hsp),y,obj_colisionBlock)){
		x = x + sign(hsp)
	}
	hsp = 0
}
//vertical Colision
if(place_meeting(x,y+vsp,obj_colisionBlock)){
	while(!place_meeting(x,y+sign(vsp),obj_colisionBlock)){
		y = y + sign(vsp)
	}
	vsp = 0
}
/*y = y + vsp
if(keyboard_check(vk_lshift)){
	walksp = 8
} else {
	walksp = 5
}*/ //no run
