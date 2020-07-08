local getHandleScale = require(script.Parent.getHandleScale)

local getFFlagDraggerRefactor = require(script.Parent.Parent.Flags.getFFlagDraggerRefactor)

local BoundingBoxCorners = {
	Vector3.new(0.5, 0.5, 0.5),
	Vector3.new(-0.5, 0.5, 0.5),
	Vector3.new(0.5, -0.5, 0.5),
	Vector3.new(-0.5, -0.5, 0.5),
	Vector3.new(0.5, 0.5, -0.5),
	Vector3.new(-0.5, 0.5, -0.5),
	Vector3.new(0.5, -0.5, -0.5),
	Vector3.new(-0.5, -0.5, -0.5),
}

if getFFlagDraggerRefactor() then
	local function getBoundingBoxScale(draggerContext, cframe, size)
		assert(draggerContext and cframe and size)
		local minScale = math.huge
		for _, relativeCorner in ipairs(BoundingBoxCorners) do
			local globalCorner = cframe:PointToWorldSpace(size * relativeCorner)
			minScale = math.min(minScale, draggerContext:getHandleScale(globalCorner))
		end
		return minScale
	end

	return getBoundingBoxScale
else
	local function getBoundingBoxScale(cframe, size)
		local minScale = math.huge
		for _, relativeCorner in ipairs(BoundingBoxCorners) do
			local globalCorner = cframe:PointToWorldSpace(size * relativeCorner)
			minScale = math.min(minScale, getHandleScale(globalCorner))
		end
		return minScale
	end

	return getBoundingBoxScale
end