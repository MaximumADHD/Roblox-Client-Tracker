local Root = script:FindFirstAncestor("ViewRecyclerRoblox")
local Core = require(Root.Parent.ViewRecycler)

local Axis = Core.Axis
local axisMap = require(Root.RobloxAdapter.axisMap)

type AxisValue = Axis.Axis

local SlotGeometry = {}

function SlotGeometry.get(
	itemLayout: Core.ItemLayout?,
	axis: AxisValue,
	selfSizing: boolean,
	contentStartOffset: number?
): (UDim2, UDim2)
	if itemLayout == nil then
		if not selfSizing then
			return UDim2.new(), UDim2.new()
		end
		return UDim2.new(), SlotGeometry.getHostSize(SlotGeometry.getAutomaticSize(axis, true))
	end
	return axisMap.positionFor(itemLayout, axis, contentStartOffset), axisMap.sizeFor(itemLayout, axis, selfSizing)
end

function SlotGeometry.getAutomaticSize(axis: AxisValue, selfSizing: boolean): Enum.AutomaticSize
	if not selfSizing then
		return Enum.AutomaticSize.None
	end
	return if axis == Axis.Y then Enum.AutomaticSize.Y else Enum.AutomaticSize.X
end

function SlotGeometry.getHostSize(automaticSize: Enum.AutomaticSize): UDim2
	if automaticSize == Enum.AutomaticSize.None then
		return UDim2.fromScale(1, 1)
	elseif automaticSize == Enum.AutomaticSize.X then
		return UDim2.fromScale(0, 1)
	elseif automaticSize == Enum.AutomaticSize.Y then
		return UDim2.fromScale(1, 0)
	end
	return UDim2.new()
end

return SlotGeometry
