-- Stacks one list's Item Hosts in index order under UIListLayouts, so the
-- engine places each mounted Item directly against its neighbour. Every
-- index in the window holds exactly one stacked element: its visible Host,
-- or a placeholder at its Layout length. Hosts that are hidden or not yet
-- published therefore never shift the Items after them.
--
-- The window splits at the Scroll anchor: Items before the split stack
-- upward from it and the rest stack downward, so a length that changes
-- during the engine's layout moves only Items on the far side of the
-- anchor, the same way Anchor correction moves them once it is measured.
local Root = script:FindFirstAncestor("ViewRecyclerRoblox")
local Core = require(Root.Parent.ViewRecycler)

local CanvasItemPlacer = require(Root.RobloxAdapter.CanvasItemPlacer)
local HostPresentationPhase = require(Root.RobloxAdapter.HostPresentationPhase)
local transparentFrame = require(Root.RobloxAdapter.transparentFrame)

local Axis = Core.Axis

export type StackPlacement = {
	-- True when the stack was created with these arguments.
	matches: (parent: Instance, axis: Core.Axis, spacing: number, selfSizing: boolean) -> boolean,
	-- Holds space for the record's Mounted window, split at its Scroll
	-- anchor. originOffset is the Canvas origin the window is offset by.
	setWindow: (record: Core.VirtualizerRecord<any, any>, originOffset: number) -> (),
	setOriginOffset: (originOffset: number) -> (),
	-- Places a Host at its Item index and returns whether it is visible. A
	-- visible Host occupies the index; a hidden one leaves its placeholder.
	place: (
		host: GuiObject,
		placerState: CanvasItemPlacer.State,
		state: Core.ViewState<any>,
		phase: HostPresentationPhase.HostPresentationPhase
	) -> boolean,
	-- Releases a Host's index and restores the LayoutOrder it arrived with.
	remove: (host: GuiObject) -> (),
	isStacked: (host: GuiObject) -> boolean,
	-- Stacked Hosts whose window membership or frame changed since they were
	-- placed, which callers place again.
	getStaleHosts: () -> { GuiObject },
	-- True when a Host was placed or removed, the window changed, or the
	-- stacked content resized since the previous call. Forces layout.
	takeChanged: () -> boolean,
	-- Places or releases the placeholders changed since the last commit.
	commit: () -> (),
	destroy: () -> (),
}

type Occupant = {
	index: number,
	geometry: CanvasItemPlacer.Geometry,
	inWindow: boolean,
	visible: boolean,
	restoreLayoutOrder: number,
}

local StackPlacement = {}

-- True when an Item is placed from Layout offsets, so a stack can place it.
-- An Item with an explicit placement, such as the active Sticky header, is
-- placed absolutely.
function StackPlacement.isPlacedFromLayoutOffsets(state: Core.ViewState<any>): boolean
	return state.index ~= nil and state.canvasPlacement.mainAxisOffset == nil
end

local STACKED_POSITION = UDim2.new()

local function createStackFrame(name: string, vertical: boolean, spacing: number, parent: Instance): Frame
	local frame = transparentFrame(name)
	frame.Size = if vertical then UDim2.fromScale(1, 0) else UDim2.fromScale(0, 1)
	-- The stack must size itself to its Hosts: under a fixed-length stack,
	-- AutomaticSize text in a Host does not regrow when that text changes.
	frame.AutomaticSize = if vertical then Enum.AutomaticSize.Y else Enum.AutomaticSize.X
	local listLayout = Instance.new("UIListLayout")
	listLayout.FillDirection = if vertical then Enum.FillDirection.Vertical else Enum.FillDirection.Horizontal
	listLayout.SortOrder = Enum.SortOrder.LayoutOrder
	listLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
	listLayout.VerticalAlignment = Enum.VerticalAlignment.Top
	listLayout.Padding = UDim.new(0, spacing)
	listLayout.Parent = frame
	frame.Parent = parent
	return frame
end

function StackPlacement.new(parent: Instance, axis: Core.Axis, spacing: number, selfSizing: boolean): StackPlacement
	local vertical = axis == Axis.Y
	local container = transparentFrame("ViewRecyclerStack")
	container.Size = UDim2.fromScale(1, 1)
	local leadFrame = createStackFrame("Leading", vertical, spacing, container)
	leadFrame.AnchorPoint = if vertical then Vector2.yAxis else Vector2.xAxis
	local frame = createStackFrame("Trailing", vertical, spacing, container)
	container.Parent = parent
	local leadLayout = leadFrame:FindFirstChildOfClass("UIListLayout") :: UIListLayout
	local listLayout = frame:FindFirstChildOfClass("UIListLayout") :: UIListLayout

	local firstIndex, lastIndex = 1, 0
	local splitIndex = 1
	local lengths: { [number]: number } = {}
	-- Canvas offset of each window index's main-axis start, including the
	-- index after lastIndex.
	local edges: { [number]: number } = {}
	local originOffset = 0
	local occupants: { [GuiObject]: Occupant } = {}
	local occupantCount: { [number]: number } = {}
	local placeholders: { [number]: Frame } = {}
	local placeholderPool: { Frame } = {}
	local dirty: { [number]: true } = {}
	local windowDirty = false
	local changed = true
	local lastContentSize: Vector2? = nil

	local function frameFor(index: number): Frame
		return if index < splitIndex then leadFrame else frame
	end

	local function contains(index: number): boolean
		return index >= firstIndex and index <= lastIndex
	end

	local function releasePlaceholder(index: number)
		local placeholder = placeholders[index]
		if placeholder ~= nil then
			placeholders[index] = nil
			placeholder.Parent = nil
			table.insert(placeholderPool, placeholder)
		end
	end

	local function refresh(index: number)
		if not contains(index) or (occupantCount[index] or 0) > 0 then
			releasePlaceholder(index)
			return
		end
		local placeholder = placeholders[index]
		if placeholder == nil then
			placeholder = table.remove(placeholderPool)
			if placeholder == nil then
				placeholder = transparentFrame("Placeholder")
			end
			placeholders[index] = placeholder
		end
		-- UDim offsets are whole pixels. Sizing each placeholder between its
		-- rounded edges keeps fractional estimates from accumulating.
		local edge = edges[index] or 0
		local length = math.round(edge + (lengths[index] or 0)) - math.round(edge)
		local size = if vertical then UDim2.new(1, 0, 0, length) else UDim2.new(0, length, 1, 0)
		if placeholder.Size ~= size then
			placeholder.Size = size
		end
		if placeholder.LayoutOrder ~= index then
			placeholder.LayoutOrder = index
		end
		local target = frameFor(index)
		if placeholder.Parent ~= target then
			placeholder.Parent = target
		end
	end

	local function setOffset(target: Frame, offset: number)
		local rounded = math.round(offset + originOffset)
		local position = if vertical then UDim2.fromOffset(0, rounded) else UDim2.fromOffset(rounded, 0)
		if target.Position ~= position then
			target.Position = position
		end
	end

	local function positionFrames()
		local split = edges[splitIndex] or 0
		setOffset(leadFrame, split - spacing)
		setOffset(frame, split)
	end

	local function setOccupying(index: number?, previous: number?)
		if previous == index then
			return
		end
		if previous ~= nil then
			occupantCount[previous] -= 1
			if occupantCount[previous] == 0 then
				occupantCount[previous] = nil
			end
			dirty[previous] = true
		end
		if index ~= nil then
			occupantCount[index] = (occupantCount[index] or 0) + 1
			dirty[index] = true
		end
	end

	return {
		matches = function(otherParent, otherAxis, otherSpacing, otherSelfSizing)
			return container.Parent == otherParent
				and otherAxis == axis
				and otherSpacing == spacing
				and otherSelfSizing == selfSizing
		end,
		setWindow = function(record, nextOriginOffset)
			local first, last = math.huge, -math.huge
			local start = 0
			local nextLengths: { [number]: number } = {}
			local range = record.mountedRange
			for _, mounted in record.mountedViews do
				local state = mounted.state
				local index = state.index
				-- A Sticky header placed off its slot still holds the slot's
				-- space while the Mounted range covers it, and nothing beyond.
				if
					index ~= nil
					and (
						StackPlacement.isPlacedFromLayoutOffsets(state)
						or (index >= range.firstIndex and index <= range.lastIndex)
					)
				then
					nextLengths[index] = state.itemLayout.length
					if index < first then
						first = index
						start = state.itemLayout.startOffset + state.contentStartOffset
					end
					last = math.max(last, index)
				end
			end
			if first > last then
				first, last, start = 1, 0, 0
			end
			local anchor = record.scrollAnchor
			local anchorSplit = if anchor == nil
				then first
				elseif anchor.alignment == Core.ScrollAlignment.End then anchor.index + 1
				else anchor.index
			firstIndex, lastIndex, lengths = first, last, nextLengths
			splitIndex = math.clamp(anchorSplit, first, math.max(first, last + 1))
			table.clear(edges)
			local edge = start
			for index = first, last + 1 do
				edges[index] = edge
				edge += (nextLengths[index] or 0) + spacing
			end
			originOffset = nextOriginOffset
			windowDirty = true
			changed = true
			positionFrames()
		end,
		setOriginOffset = function(nextOriginOffset)
			if nextOriginOffset ~= originOffset then
				originOffset = nextOriginOffset
				positionFrames()
			end
		end,
		place = function(host, placerState, state, phase)
			local index = state.index :: number
			local occupant = occupants[host]
			if occupant == nil then
				occupant = {
					index = index,
					geometry = {} :: any,
					inWindow = false,
					visible = false,
					restoreLayoutOrder = host.LayoutOrder,
				}
				occupants[host] = occupant
			end
			-- A Pending Host's content may not match its Item, so its length
			-- would shift every later Item; a placeholder holds its space.
			local visible = phase == HostPresentationPhase.Presented and contains(index)
			local geometry = CanvasItemPlacer.getGeometry(
				state.itemLayout,
				state.canvasPlacement,
				axis,
				selfSizing,
				0,
				occupant.geometry
			)
			geometry.position = STACKED_POSITION
			CanvasItemPlacer.place(host, frameFor(index), geometry, placerState, visible)
			setOccupying(if visible then index else nil, if occupant.visible then occupant.index else nil)
			occupant.index = index
			occupant.inWindow = contains(index)
			occupant.visible = visible
			if host.LayoutOrder ~= index then
				host.LayoutOrder = index
			end
			changed = true
			return visible
		end,
		remove = function(host)
			local occupant = occupants[host]
			if occupant == nil then
				return
			end
			occupants[host] = nil
			setOccupying(nil, if occupant.visible then occupant.index else nil)
			host.LayoutOrder = occupant.restoreLayoutOrder
			changed = true
		end,
		isStacked = function(host)
			return occupants[host] ~= nil
		end,
		getStaleHosts = function()
			local stale = {}
			for host, occupant in occupants do
				if contains(occupant.index) ~= occupant.inWindow or host.Parent ~= frameFor(occupant.index) then
					table.insert(stale, host)
				end
			end
			return stale
		end,
		takeChanged = function()
			local contentSize = leadLayout.AbsoluteContentSize + listLayout.AbsoluteContentSize
			local wasChanged = changed or contentSize ~= lastContentSize
			changed = false
			lastContentSize = contentSize
			return wasChanged
		end,
		commit = function()
			if windowDirty then
				windowDirty = false
				for index in placeholders do
					if not contains(index) then
						releasePlaceholder(index)
					end
				end
				for index = firstIndex, lastIndex do
					refresh(index)
				end
				table.clear(dirty)
				return
			end
			for index in dirty do
				refresh(index)
			end
			table.clear(dirty)
		end,
		destroy = function()
			for host, occupant in occupants do
				host.LayoutOrder = occupant.restoreLayoutOrder
			end
			table.clear(occupants)
			table.clear(occupantCount)
			table.clear(placeholders)
			table.clear(placeholderPool)
			table.clear(dirty)
			container:Destroy()
		end,
	}
end

return StackPlacement
