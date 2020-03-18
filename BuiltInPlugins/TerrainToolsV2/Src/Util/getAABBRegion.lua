local Constants = require(script.Parent.Constants)

return function(cframe, size)
	local inv = cframe:Inverse()
	local x = size * inv.RightVector
	local y = size * inv.UpVector
	local z = size * inv.LookVector

	local w = math.abs(x.x) + math.abs(x.y) + math.abs(x.z)
	local h = math.abs(y.x) + math.abs(y.y) + math.abs(y.z)
	local d = math.abs(z.x) + math.abs(z.y) + math.abs(z.z)

	local pos = cframe.Position
	local halfSize = Vector3.new(w, h, d) / 2

	return Region3.new(pos - halfSize, pos + halfSize)
		:ExpandToGrid(Constants.VOXEL_RESOLUTION)
end
