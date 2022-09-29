local KeyframeReduction = script.Parent
local Types = require(KeyframeReduction.Types)

local Triangle = {}
Triangle.__index = Triangle

function Triangle.new(a: Types.VectorN, b: Types.VectorN, c: Types.VectorN): Types.Triangle
	local triangle = {
		a = a,
		b = b,
		c = c,
		area = 0,
	}

	setmetatable(triangle, Triangle)
	triangle:updateArea()

	return triangle
end

-- Returns the square of the distance between two N-d vectors
local function distance2(a: Types.VectorN, b: Types.VectorN): number
	local d = 0
	for i = 1, #a do
		d += (a[i] - b[i]) * (a[i] - b[i])
	end

	return d
end

-- Use Heron's formula to calculate the area of a triangle in N-d space
-- Note that since we are comparing areas to find the minimum, we can safely
-- skip the (expensive) sqrt()/4 part.
function Triangle:updateArea(): ()
	local s1 = distance2(self.a, self.b)
	local s2 = distance2(self.a, self.c)
	local s3 = distance2(self.b, self.c)
	local t = s1 + s2 - s3

	self.area = 4 * s1 * s2 - t * t
end

return Triangle
