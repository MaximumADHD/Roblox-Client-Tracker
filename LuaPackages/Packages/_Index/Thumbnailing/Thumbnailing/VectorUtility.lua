local module = {}

-- JSON string expresses vector as "xAngleDeg/yAngleDeg/radius", each value a float.
module.Vector3FromJson = function(jsonString)
	local xAngleDeg, yAngleDeg, radius = unpack(jsonString:split("/"))
	return module.Vector3FromXYRotPlusDistance(xAngleDeg, yAngleDeg, radius)
end

-- Make a vector of length radius along the "Look vector" axis (I think that's -z).
-- Then apply given rotations around X and Y axis.
module.Vector3FromXYRotPlusDistance = function(xAngleDeg, yAngleDeg, radius)
	local cFrame = CFrame.fromEulerAnglesXYZ(math.rad(xAngleDeg), math.rad(yAngleDeg), 0)
	return cFrame.LookVector * radius
end

return module
