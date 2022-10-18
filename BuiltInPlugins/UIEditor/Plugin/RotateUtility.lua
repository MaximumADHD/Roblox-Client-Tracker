local RotationUtility = {}

-- Rotates a Vector2 by the specified angle in degrees. It assumes
-- the rotation center is at (0, 0).
--
-- Vector2 RotationUtility:rotate(double angle, Vector2 vector)
function RotationUtility:rotateVector(angle, vector)
	-- Convert angle to radians
	local radians = math.rad(angle)

	-- Rotate the vector
	local cos = math.cos(radians)
	local sin = math.sin(radians)
	local rotatedVector = Vector2.new(vector.X * cos - vector.Y * sin, vector.Y * cos + vector.X * sin)

	return rotatedVector
end

return RotationUtility
