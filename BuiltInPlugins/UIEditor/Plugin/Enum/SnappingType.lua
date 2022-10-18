local SnappingType = {}

SnappingType.MoveX = 0
SnappingType.MoveY = 1
SnappingType.MoveXY = 2

SnappingType.ResizeXp = 3
SnappingType.ResizeXn = 4
SnappingType.ResizeYp = 5
SnappingType.ResizeYn = 6
SnappingType.ResizeXpYp = 7
SnappingType.ResizeXnYp = 8
SnappingType.ResizeXpYn = 9
SnappingType.ResizeXnYn = 10

function SnappingType:containsType(baseType, containType)
	if baseType == containType then
		return true
	end

	if baseType == SnappingType.MoveXY then
		return containType == SnappingType.MoveX or containType == SnappingType.MoveY
	elseif baseType == SnappingType.ResizeXpYp then
		return containType == SnappingType.ResizeXp or containType == SnappingType.ResizeYp
	elseif baseType == SnappingType.ResizeXnYp then
		return containType == SnappingType.ResizeXn or containType == SnappingType.ResizeYp
	elseif baseType == SnappingType.ResizeXpYn then
		return containType == SnappingType.ResizeXp or containType == SnappingType.ResizeYn
	elseif baseType == SnappingType.ResizeXnYn then
		return containType == SnappingType.ResizeXn or containType == SnappingType.ResizeYn
	end

	return false
end

return SnappingType
