-- The single place where the core's scalar main-axis coordinates meet
-- Roblox's 2D types. Everything above the adapters speaks numbers and
-- ItemLayouts; everything below speaks UDim2/Vector2.
local Root = script:FindFirstAncestor("ViewRecyclerRoblox")
local Core = require(Root.Parent.ViewRecycler)

local Axis = Core.Axis

export type AxisValue = Axis.Axis

local axisMap = {}

function axisMap.mainOf(vector: Vector2, axis: AxisValue): number
	return if axis == Axis.X then vector.X else vector.Y
end

function axisMap.crossOf(vector: Vector2, axis: AxisValue): number
	return if axis == Axis.X then vector.Y else vector.X
end

-- Canvas-space position for an item layout. Cross-axis slots map to
-- fractional scale; linear items span the full cross axis at 0.
function axisMap.positionFor(itemLayout: Core.ItemLayout, axis: AxisValue, mainAxisOffset: number?): UDim2
	local crossAxisIndex = itemLayout.crossAxisIndex or 1
	local crossAxisCount = itemLayout.crossAxisCount or 1
	local crossScale = (crossAxisIndex - 1) / crossAxisCount
	local crossOffset = (crossAxisIndex - 1) * (itemLayout.crossAxisSpacing or 0) / crossAxisCount
	local mainOffset = itemLayout.startOffset + (mainAxisOffset or 0)

	return if axis == Axis.X
		then UDim2.new(0, mainOffset, crossScale, crossOffset)
		else UDim2.new(crossScale, crossOffset, 0, mainOffset)
end

-- Size for an item layout. When `selfSizing` (measured layouts), the main
-- axis is zeroed so AutomaticSize drives it from content; the cache's
-- length never reaches the property.
function axisMap.sizeFor(itemLayout: Core.ItemLayout, axis: AxisValue, selfSizing: boolean): UDim2
	local crossAxisCount = itemLayout.crossAxisCount or 1
	local crossScale = 1 / crossAxisCount
	local crossOffset = -(crossAxisCount - 1) * (itemLayout.crossAxisSpacing or 0) / crossAxisCount
	local mainOffset = if selfSizing then 0 else itemLayout.length

	return if axis == Axis.X
		then UDim2.new(0, mainOffset, crossScale, crossOffset)
		else UDim2.new(crossScale, crossOffset, 0, mainOffset)
end

function axisMap.canvasSizeFor(contentLength: number, axis: AxisValue): UDim2
	return if axis == Axis.X then UDim2.fromOffset(contentLength, 0) else UDim2.fromOffset(0, contentLength)
end

return axisMap
