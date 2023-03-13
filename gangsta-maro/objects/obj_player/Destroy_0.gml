/*on_ground = place_meeting(x, y+1, _obj);
in_air = !on_ground;

// Player movement
var _hacc, _vacc;
_hacc = (input.right - input.left)*3;
_vacc = (input.jump)*5;
if (on_ground) phy_accel(0, -_vacc);
phy_accel(_hacc, 0);

// Gravity
if (in_air) phy_accel(g[X], g[Y]);

// Get Current Velocity
vel[X] = (vel[X] + accel[X])*fric[X];
vel[Y] = (vel[Y] + accel[Y])*fric[Y];

// REMOVED COLLISION CHECKS FOR SIMPLICITY
x+=vel[X];
y+=vel[Y];*/
