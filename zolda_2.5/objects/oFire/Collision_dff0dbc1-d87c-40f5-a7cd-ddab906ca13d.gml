/// @desc Set Fire

var dist = point_direction(x,y, other.x, other.y);

if(dist < 32)
{
	var chance = random_range(0,450);
	if(chance == 1)
	{
		other.isBurn = true;
		other.burnTime = burnOutTime;
	}
}