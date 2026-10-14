local Root = script:FindFirstAncestor("ViewRecyclerRoblox")
local Core = require(Root.Parent.ViewRecycler)

local SlotGeometry = require(Root.RobloxAdapter.SlotGeometry)

export type Geometry = {
	position: UDim2,
	size: UDim2,
	automaticSize: Enum.AutomaticSize,
	zIndexOffset: number?,
}

export type State = {
	unpinnedZIndex: number?,
	parent: Instance?,
	anchorPointInitialized: boolean,
	position: UDim2?,
	size: UDim2?,
	automaticSize: Enum.AutomaticSize?,
	visible: boolean?,
	zIndex: number?,
}

local CanvasItemPlacer = {}

function CanvasItemPlacer.createState(): State
	return {
		unpinnedZIndex = nil,
		parent = nil,
		anchorPointInitialized = false,
		position = nil,
		size = nil,
		automaticSize = nil,
		visible = nil,
		zIndex = nil,
	}
end

local function resetAppliedState(state: State)
	state.anchorPointInitialized = false
	state.position = nil
	state.size = nil
	state.automaticSize = nil
	state.visible = nil
	state.zIndex = nil
end

function CanvasItemPlacer.getGeometry(
	itemLayout: Core.ItemLayout,
	placement: Core.ItemPlacement,
	axis: Core.Axis,
	selfSizing: boolean,
	contentStartOffset: number,
	geometry: Geometry?
): Geometry
	if placement.mainAxisOffset ~= nil then
		itemLayout = {
			startOffset = placement.mainAxisOffset,
			length = placement.mainAxisLength or itemLayout.length,
		}
		contentStartOffset = 0
	end
	local position, size = SlotGeometry.get(itemLayout, axis, selfSizing, contentStartOffset)
	local result = geometry or ({} :: any)
	result.position = position
	result.size = size
	result.automaticSize = SlotGeometry.getAutomaticSize(axis, selfSizing)
	result.zIndexOffset = placement.zIndex
	return result
end

function CanvasItemPlacer.place(
	host: GuiObject,
	parent: Instance,
	geometry: Geometry,
	state: State,
	visible: boolean
): number
	local propertyWrites = 0
	if host.Parent ~= parent or state.parent ~= parent then
		if host.Parent ~= parent then
			host.Parent = parent
			propertyWrites += 1
		end
		state.parent = parent
		resetAppliedState(state)
	end
	if not state.anchorPointInitialized then
		host.AnchorPoint = Vector2.zero
		state.anchorPointInitialized = true
		propertyWrites += 1
	end
	if state.position ~= geometry.position then
		host.Position = geometry.position
		state.position = geometry.position
		propertyWrites += 1
	end
	if state.size ~= geometry.size then
		host.Size = geometry.size
		state.size = geometry.size
		propertyWrites += 1
	end
	if state.automaticSize ~= geometry.automaticSize then
		host.AutomaticSize = geometry.automaticSize
		state.automaticSize = geometry.automaticSize
		propertyWrites += 1
	end
	if state.visible ~= visible then
		host.Visible = visible
		state.visible = visible
		propertyWrites += 1
	end

	local targetZIndex: number?
	local zIndexOffset = geometry.zIndexOffset
	if zIndexOffset ~= nil then
		if state.unpinnedZIndex == nil then
			state.unpinnedZIndex = host.ZIndex
		end
		targetZIndex = (state.unpinnedZIndex :: number) + zIndexOffset
	elseif state.unpinnedZIndex ~= nil then
		targetZIndex = state.unpinnedZIndex
		state.unpinnedZIndex = nil
	end
	if targetZIndex ~= nil and state.zIndex ~= targetZIndex then
		host.ZIndex = targetZIndex
		state.zIndex = targetZIndex
		propertyWrites += 1
	elseif targetZIndex == nil then
		state.zIndex = host.ZIndex
	end
	return propertyWrites
end

function CanvasItemPlacer.hide(host: GuiObject, state: State)
	if state.visible ~= false then
		host.Visible = false
		state.visible = false
	end
end

function CanvasItemPlacer.detach(host: GuiObject, state: State): number
	local propertyWrites = 0
	if state.unpinnedZIndex ~= nil then
		if host.ZIndex ~= state.unpinnedZIndex then
			host.ZIndex = state.unpinnedZIndex
			propertyWrites += 1
		end
		state.unpinnedZIndex = nil
	end
	if host.Visible then
		host.Visible = false
		propertyWrites += 1
	end
	if host.Parent ~= nil then
		host.Parent = nil
		propertyWrites += 1
	end
	state.parent = nil
	resetAppliedState(state)
	return propertyWrites
end

function CanvasItemPlacer.detachForTransfer(host: GuiObject, state: State): number
	local propertyWrites = CanvasItemPlacer.detach(host, state)
	if host.Position ~= UDim2.new() then
		host.Position = UDim2.new()
		propertyWrites += 1
	end
	if host.Size ~= UDim2.new() then
		host.Size = UDim2.new()
		propertyWrites += 1
	end
	if host.AutomaticSize ~= Enum.AutomaticSize.None then
		host.AutomaticSize = Enum.AutomaticSize.None
		propertyWrites += 1
	end
	return propertyWrites
end

return CanvasItemPlacer
