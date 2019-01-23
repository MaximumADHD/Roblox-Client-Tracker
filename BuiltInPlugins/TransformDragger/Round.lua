function round(value)
	return math.floor(value + 0.5)
end

function roundToNearest(value, interval)
	if not interval or interval == 0 then return value end
	
	local tmp = value + (interval / 2)
	return tmp - (tmp % interval)
end

function roundVector3(value)
	return Vector3.new(round(value.X), round(value.Y), round(value.Z))
end

function roundVector3ToNearest(value, interval)
	return Vector3.new(	roundToNearest(value.X, interval),
						roundToNearest(value.Y, interval),
						roundToNearest(value.Z, interval))
end

local module = {}

module.roundToNearest = roundToNearest
module.roundVector3ToNearest = roundVector3ToNearest


return module
