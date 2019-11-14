local PivotType = require(script.Parent.TerrainEnums).PivotType

-- Returns the given position adjusted by height depending on pivot mode bottom, center or top
return function (pivot, position, cursorHeight)
	local halfHeight = cursorHeight / 2
	if pivot == PivotType.Top then
		return Vector3.new(position.x, position.y - halfHeight, position.z)
	elseif pivot == PivotType.Center then
		return position
	elseif pivot == PivotType.Bottom then
		return Vector3.new(position.x, position.y + halfHeight, position.z)
	end
	-- Shouldn't reach here but for completeness return the center
	return position
end
