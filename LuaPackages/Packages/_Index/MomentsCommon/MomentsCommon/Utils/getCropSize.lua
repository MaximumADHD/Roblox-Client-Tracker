local function getCropSize(containerSize: Vector2, itemResolution: Vector2): UDim2
	if containerSize.X == 0 or containerSize.Y == 0 or itemResolution.X == 0 or itemResolution.Y == 0 then
		return UDim2.fromScale(1, 1)
	end

	local containerAspectRatio = containerSize.X / containerSize.Y
	local itemAspectRatio = itemResolution.X / itemResolution.Y

	if containerAspectRatio > itemAspectRatio then
		return UDim2.fromScale(1, containerAspectRatio / itemAspectRatio)
	else
		return UDim2.fromScale(itemAspectRatio / containerAspectRatio, 1)
	end
end

return getCropSize
