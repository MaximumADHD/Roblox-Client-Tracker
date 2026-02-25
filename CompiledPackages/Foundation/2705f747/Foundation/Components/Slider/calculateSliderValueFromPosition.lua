--[[
	Calculates a slider value from an absolute position, taking into account
	the slider's orientation, range, and absolute bounds.
]]

local function calculateSliderValueFromPosition(position: Vector2, sliderFrame: GuiObject, range: NumberRange): number
	local orientation = sliderFrame.AbsoluteRotation
	local length = sliderFrame.AbsoluteSize.Magnitude
	local centerPoint = sliderFrame.AbsolutePosition + sliderFrame.AbsoluteSize * 0.5

	local radians = math.rad(orientation)
	local unit = Vector2.new(math.cos(radians), math.sin(radians))

	local dotProduct = (position - centerPoint):Dot(unit)
	local percentage = dotProduct / length + 0.5
	local clampedPercent = math.clamp(percentage, 0, 1)

	local rangeSpan = range.Max - range.Min
	local sliderValue = clampedPercent * rangeSpan + range.Min

	return math.clamp(sliderValue, range.Min, range.Max)
end

return calculateSliderValueFromPosition
