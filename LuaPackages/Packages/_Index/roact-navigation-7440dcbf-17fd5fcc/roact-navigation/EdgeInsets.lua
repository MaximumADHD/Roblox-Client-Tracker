--[[
	EdgeInsets provides standard tooling to conveniently create a table
	to represent insets from the edge of a component's viewable area.
	This is most useful for identifying a "safe area" for visible content,
	e.g. reacting to variable status bar heights and other view adornments.

	Positive values represent insets into the viewable area, e.g. smaller
	than the container.

	Several constructors are provided:

	EdgeInsets.new(top: UDim, right: UDim, bottom: UDim, left: UDim)
		Creates a new edge insets from four UDims that you provide.

	EdgeInsets.fromOffsets(top: number, right: number, bottom: number, left: number)
		Creates an offsets-only EdgeInsets using four numbers that you provide.
]]
local EdgeInsets = {}

function EdgeInsets.new(topUDim, rightUDim, bottomUDim, leftUDim)
	return {
		top = topUDim or UDim.new(0, 0),
		right = rightUDim or UDim.new(0, 0),
		bottom = bottomUDim or UDim.new(0, 0),
		left = leftUDim or UDim.new(0, 0),
	}
end

function EdgeInsets.fromOffsets(top, right, bottom, left)
	return {
		top = UDim.new(0, top or 0),
		right = UDim.new(0, right or 0),
		bottom = UDim.new(0, bottom or 0),
		left = UDim.new(0, left or 0),
	}
end

return EdgeInsets
