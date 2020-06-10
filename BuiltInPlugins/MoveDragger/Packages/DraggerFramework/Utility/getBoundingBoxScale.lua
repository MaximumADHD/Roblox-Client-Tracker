local getHandleScale = require(script.Parent.getHandleScale)

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

local function getBoundingBoxScale(cframe, size)
    local minScale = math.huge
    for _, relativeCorner in ipairs(BoundingBoxCorners) do
        local globalCorner = cframe:PointToWorldSpace(size * relativeCorner)
        minScale = math.min(minScale, getHandleScale(globalCorner))
    end
    return minScale
end

return getBoundingBoxScale