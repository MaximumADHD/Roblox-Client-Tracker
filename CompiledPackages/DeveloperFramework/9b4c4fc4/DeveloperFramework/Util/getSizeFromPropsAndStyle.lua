--[[
	Compute size based on the Size taken from props and style. If Width and Height
	exist in props or style, the corresponding X and Y components are set in the
	returned size.

	Width and Height maybe be type number or UDim. Using a number is equivalent to
	using a UDim with an offset equal to the number.

	Returns {{1, 0}, {1, 0}} if none of Size, Width, or Height are found.
]]

local Framework = script.Parent.Parent

local prioritize = require(Framework.Util.prioritize)

local function getSizeFromPropsAndStyle(props, style): UDim2
	style = style or {}
	local size = prioritize(props.Size, style.Size, UDim2.new(1, 0, 1, 0))
	local width = prioritize(props.Width, style.Width)
	local height = prioritize(props.Height, style.Height)

	if typeof(width) == "number" then
		size = UDim2.new(UDim.new(0, width), size.Y)
	elseif typeof(width) == "UDim" then
		size = UDim2.new(width, size.Y)
	end
	if typeof(height) == "number" then
		size = UDim2.new(size.X, UDim.new(0, height))
	elseif typeof(height) == "UDim" then
		size = UDim2.new(size.X, height)
	end

	return size
end

return getSizeFromPropsAndStyle
