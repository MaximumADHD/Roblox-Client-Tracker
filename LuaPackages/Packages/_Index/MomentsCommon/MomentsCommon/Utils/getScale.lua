local REFERENCE_ITEM_WIDTH = 1280

local function getScale(containerSize: Vector2, itemResolution: Vector2, scaleType: Enum.ScaleType): number
	if containerSize.X == 0 or containerSize.Y == 0 or itemResolution.X == 0 or itemResolution.Y == 0 then
		return 1
	end

	local containerAspectRatio = containerSize.X / containerSize.Y
	local itemAspectRatio = itemResolution.X / itemResolution.Y

	local calculatedItemWidth = 0

	-- An item is horizontally constrained if it fills the entire container width
	-- Otherwise, it is vertically constrained
	local isHorizontallyConstrained = (scaleType == Enum.ScaleType.Fit) == (containerAspectRatio < itemAspectRatio)

	if isHorizontallyConstrained then
		calculatedItemWidth = containerSize.X
	else
		calculatedItemWidth = containerSize.Y * itemAspectRatio
	end

	return calculatedItemWidth / REFERENCE_ITEM_WIDTH
end

return getScale
