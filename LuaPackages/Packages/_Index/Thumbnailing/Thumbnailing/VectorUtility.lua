local module = {}

-- Make a vector of length radius along the "Look vector" axis (I think that's -z).
-- Then apply given rotations around X and Y axis.
module.Vector3FromXYRotPlusDistance = function(xAngleDeg: number, yAngleDeg: number, radius: number): Vector3
	local cFrame = CFrame.fromEulerAnglesXYZ(math.rad(xAngleDeg), math.rad(yAngleDeg), 0)
	return cFrame.LookVector * radius
end

-- JSON string expresses vector as "xAngleDeg/yAngleDeg/radius", each value a float.
module.Vector3FromJson = function(jsonString: string): Vector3
	local xAngleDeg, yAngleDeg, radius = unpack(jsonString:split("/"))
	local x = tonumber(xAngleDeg)
	local y = tonumber(yAngleDeg)
	local r = tonumber(radius)
	if x and y and r then
		return module.Vector3FromXYRotPlusDistance(x, y, r)
	else
		return Vector3.new(0, 0, 0)
	end
end

return module
