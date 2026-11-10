-- Each kind of Destination a Recyclable view's Frame can occupy, and how the
-- view attaches, presents, and detaches its Frame there.
local Root = script:FindFirstAncestor("ViewRecyclerReact")

local Core = require(Root.Parent.ViewRecycler)
local Roblox = require(Root.Parent.ViewRecyclerRoblox)
local Signals = require(Root.Parent.Signals)
local HostPresentationPhase = Roblox.HostPresentationPhase
local ReparentableHost = Roblox.ReparentableHost

local Kind = table.freeze({
	List = "list" :: "list",
	Composition = "composition" :: "composition",
	Rect = "rect" :: "rect",
})

export type Kind = typeof(Kind.List) | typeof(Kind.Composition) | typeof(Kind.Rect)

-- `sink` is the list's Host-placement sink, one per list.
export type ListDestination<T> = {
	kind: typeof(Kind.List),
	state: Core.ViewState<T>,
	sink: Roblox.HostPlacementSink<any, T>,
}
export type CompositionDestination = {
	kind: typeof(Kind.Composition),
	placementId: number,
	placeholder: Frame,
	automaticSize: Enum.AutomaticSize,
}
-- `rectPlacement` is the owning placement's identity. Geometry is not part of
-- the Destination; the Rect placement writes it.
export type RectDestination = {
	kind: typeof(Kind.Rect),
	rectPlacement: any,
	container: GuiObject,
}
export type Destination<T> = ListDestination<T> | CompositionDestination | RectDestination

export type Behavior = {
	-- Whether both Destinations belong to the same owner, so moving between
	-- them needs no detach.
	sameOwner: (previous: any, next: any) -> boolean,
	-- Runs on every transition into the Destination, before delivery.
	attach: (frame: Frame, destination: any) -> (),
	present: (view: any, frame: Frame, destination: any, phase: Roblox.HostPresentationPhase) -> (),
	detach: (view: any, frame: Frame, destination: any) -> (),
	-- Reads the item an Assignment carries in this Destination.
	readItem: (value: any, scope: Signals.scope) -> any,
}

local function resetReparented(_view: any, frame: Frame, _destination: any)
	ReparentableHost.detach(frame)
	frame.AnchorPoint = Vector2.zero
	frame.Position = UDim2.new()
	frame.Size = UDim2.new()
	frame.AutomaticSize = Enum.AutomaticSize.None
	-- List placement reads the host's ZIndex as its unpinned base.
	frame.ZIndex = 1
end

local function attachNowhere(_frame: Frame, _destination: any) end

local function readValue(value: any, _scope: Signals.scope): any
	return value
end

local behaviors: { [Kind]: Behavior } = table.freeze({
	[Kind.List] = table.freeze({
		sameOwner = function(previous, next)
			return previous.sink == next.sink
		end,
		attach = attachNowhere,
		present = function(view, frame, destination: ListDestination<any>, phase)
			destination.sink.apply(view, {
				host = frame,
				phase = phase,
				state = destination.state,
			})
		end,
		detach = function(view, _frame, destination: ListDestination<any>)
			destination.sink.apply(view, nil)
		end,
		readItem = readValue,
	}),
	[Kind.Composition] = table.freeze({
		sameOwner = function(previous, next)
			return previous.placementId == next.placementId
		end,
		attach = attachNowhere,
		present = function(_view, frame, destination: CompositionDestination, phase)
			if frame.Parent ~= destination.placeholder or frame.AutomaticSize ~= destination.automaticSize then
				ReparentableHost.place(frame, destination)
			end
			frame.Visible = phase ~= HostPresentationPhase.Hidden
		end,
		detach = resetReparented,
		-- A composed view keeps one Assignment while its parent's item
		-- changes, so the Assignment carries the parent's item getter.
		readItem = function(value, scope)
			return value(scope)
		end,
	}),
	[Kind.Rect] = table.freeze({
		sameOwner = function(previous, next)
			return previous.rectPlacement == next.rectPlacement
		end,
		-- Parented synchronously, so a Rect placement's sync returns with
		-- every view in its container even inside an outer batch.
		attach = function(frame, destination: RectDestination)
			if frame.Parent ~= destination.container then
				frame.AutomaticSize = Enum.AutomaticSize.None
				frame.Parent = destination.container
			end
		end,
		present = function(_view, frame, _destination, phase)
			frame.Visible = phase ~= HostPresentationPhase.Hidden
		end,
		detach = resetReparented,
		readItem = readValue,
	}),
}) :: any

return table.freeze({
	Kind = Kind,
	behaviors = behaviors,
})
