local function scaleValue(value: any, scale: number?)
	if scale == nil then
		return value
	end

	if typeof(value) == "number" then
		return value * scale
	elseif typeof(value) == "UDim" then
		return UDim.new(value.Scale, value.Offset * scale)
	elseif typeof(value) == "UDim2" then
		return UDim2.new(value.X.Scale, value.X.Offset * scale, value.Y.Scale, value.Y.Offset * scale)
	end

	return value
end

return scaleValue
