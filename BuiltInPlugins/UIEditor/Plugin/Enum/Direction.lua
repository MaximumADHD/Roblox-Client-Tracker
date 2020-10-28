--[[
	Direction defines the common compass directions, e.g. northwest, north, ...
--]]

local Direction = {}

-- Constants
local DEGREES_IN_CIRCLE = 360
local NUM_DIRECTIONS = 8
local INV_DEGREES_IN_CIRCLE = 1/DEGREES_IN_CIRCLE
local SPAN_IN_DEGREES = DEGREES_IN_CIRCLE/NUM_DIRECTIONS
local INV_SPAN_IN_DEGREES = 1/SPAN_IN_DEGREES
local HALF_SPAN_IN_DEGREES = SPAN_IN_DEGREES/2

-- The directions
-- NOTE: The functions Direction:angleToDirection and Direction:directionToAngle depend
-- on the current direction values. They will need to be changed if the values change.
Direction.NOT_SET = 0
Direction.E   = 1
Direction.SE  = 2
Direction.S   = 3
Direction.SW  = 4
Direction.W   = 5
Direction.NW  = 6
Direction.N   = 7
Direction.NE  = 8

-- You can use the FIRST and LAST to iterate over the directions
Direction.FIRST = Direction.E
Direction.LAST  = Direction.NE

local m_shortNames = {
	[Direction.E]  = "E",
	[Direction.SE] = "SE",
	[Direction.S]  = "S",
	[Direction.SW] = "SW",
	[Direction.W]  = "W",
	[Direction.NW] = "NW",
	[Direction.N]  = "N",
	[Direction.NE] = "NE"
}

-- Returns true if the passed in direction(as an integer) is valid. Returns
-- false otherwise.
--
-- bool Direction:isValid(int direction)
function Direction:isValid(direction)
	return Direction.FIRST <= direction and direction <= Direction.LAST 
end

-- Returns the short name, e.g. N, S, E, W,... given a direction.
--
-- string Direction:toShortName(int direction)
function Direction:toShortName(direction)
	if not Direction:isValid(direction) then
		error(("Direction %s is not valid. Cannot convert to short name."):format(tostring(direction)))
	end
	
	return m_shortNames[direction]
end

-- Normalizes an angle in degrees to 0..360 degress.
--
-- double normalizeAngle(double angle)
function normalizeAngle(angle)
	-- Using INV_DEGREES_IN_CIRCLE to avoid division
	return angle + math.ceil(-angle*INV_DEGREES_IN_CIRCLE)*DEGREES_IN_CIRCLE
end

-- Returns the closest direction from an angle.
--
-- For example, 15 degrees returns Direction.E.
--
-- Direction Direction:angleToDirection(double angle)
function Direction:angleToDirection(angle)	
	-- The first handle direction is 1. It spans 45 degrees from 337.5 to 22.5 degrees,
	-- which is why we first need to add 22.5 and then divide by 45. We need mod 8 so
	-- the maximum handle is 8. Finally the plus one is to start at one insted of zero. 
	local normalizedAngle = normalizeAngle(angle)
	return (math.floor((normalizedAngle + HALF_SPAN_IN_DEGREES) * INV_SPAN_IN_DEGREES) % NUM_DIRECTIONS) + 1
end

-- Returns the angle to a direction.
--
-- For example, Direction.E returns 0, Direction.SE returns 45 and so forth.
--
-- double Direction:directionToAngle(Direction direction)
function Direction:directionToAngle(direction)
	assert(Direction.E == 1, "Direction.E was not the first direction.")
	assert(Direction.NE == 8, "Direction.NE was not the last direction.")
	assert(Direction:isValid(direction))	
	
	-- There are eight directions, 360/8 is 45.
	return (direction - 1) * SPAN_IN_DEGREES
end

return Direction
