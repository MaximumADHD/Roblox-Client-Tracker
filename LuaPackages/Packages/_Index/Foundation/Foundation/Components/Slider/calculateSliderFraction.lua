local function calculateSliderFraction(position: Vector2, sliderFrame: GuiObject, isVertical: boolean): number
	local absolutePosition = sliderFrame.AbsolutePosition
	local absoluteSize = sliderFrame.AbsoluteSize
	local centerPoint = absolutePosition + absoluteSize * 0.5
	local radians = math.rad(sliderFrame.AbsoluteRotation)
	local axis = if isVertical
		then Vector2.new(math.sin(radians), -math.cos(radians))
		else Vector2.new(math.cos(radians), math.sin(radians))
	local length = if isVertical then absoluteSize.Y else absoluteSize.X
	local fraction = (position - centerPoint):Dot(axis) / length + 0.5
	return math.clamp(fraction, 0, 1)
end

return calculateSliderFraction
