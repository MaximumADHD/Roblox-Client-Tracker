

local HOTSPOTS = {
	-- Center
	Vector3.new(0, 0, 0),

	-- Corners
	Vector3.new(-1, -1, -1),
	Vector3.new(1, -1, -1),
	Vector3.new(-1, 1, -1),
	Vector3.new(1, 1, -1),
	Vector3.new(-1, -1, 1),
	Vector3.new(1, -1, 1),
	Vector3.new(-1, 1, 1),
	Vector3.new(1, 1, 1),

	-- Face centers
	Vector3.new(-1, 0, 0),
	Vector3.new(1, 0, 0),
	Vector3.new(0, -1, 0),
	Vector3.new(0, 1, 0),
	Vector3.new(0, 0, -1),
	Vector3.new(0, 0, 1),

	-- Edge centers
	Vector3.new(1, 1, 0),
	Vector3.new(-1, 1, 0),
	Vector3.new(-1, -1, 0),
	Vector3.new(1, -1, 0),
	Vector3.new(0, 1, 1),
	Vector3.new(0, -1, 1),
	Vector3.new(0, -1, -1),
	Vector3.new(0, 1, -1),
	Vector3.new(1, 0, 1),
	Vector3.new(-1, 0, 1),
	Vector3.new(-1, 0, -1),
	Vector3.new(1, 0, -1),
}

local function computeSnapPointsForBounds(cframe, size)
	local halfSize = size / 2
	local newSnapPoints = {}
	for _, hotspot in ipairs(HOTSPOTS) do
		table.insert(newSnapPoints, cframe * CFrame.new(hotspot * halfSize))
	end
	return newSnapPoints
end

return function(instance)
	if instance:IsA("BasePart") then
		return computeSnapPointsForBounds(instance.CFrame, instance.Size)
	elseif instance:IsA("Model") then
		return computeSnapPointsForBounds(instance:GetBoundingBox())
	else
		return nil
	end
end