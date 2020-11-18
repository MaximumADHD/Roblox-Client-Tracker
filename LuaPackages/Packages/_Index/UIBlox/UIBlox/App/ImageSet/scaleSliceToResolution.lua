--[[
	Takes in a table of ImageLabel properties and returns those properties
	with the SliceCenter and SliceScale scaled based on the provided resolution scale

	imageSetProps: a table of ImageLabel properties
	scale: a number representing the resolution scale of the user's device
]]

return function(imageSetProps, scale)
	local scaledProps = imageSetProps

	if scaledProps.SliceCenter then
		local min = scaledProps.SliceCenter.Min * scale
		local max = scaledProps.SliceCenter.Max * scale
		scaledProps.SliceCenter = Rect.new(min, max)
		scaledProps.SliceScale = (scaledProps.SliceScale or 1) / scale
	end

	return scaledProps
end
