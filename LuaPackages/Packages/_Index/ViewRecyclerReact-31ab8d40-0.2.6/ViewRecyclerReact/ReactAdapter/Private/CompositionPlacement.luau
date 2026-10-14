local Root = script:FindFirstAncestor("ViewRecyclerReact")
local Core = require(Root.Parent.ViewRecycler)
local HostPresentationPhase = require(script.Parent.HostPresentationPhase)
local PlacementKind = require(script.Parent.PlacementKind)
local React = require(Root.Parent.React)
local RecyclableViewRegistry = require(script.Parent.RecyclableViewRegistry)
local Roblox = require(Root.Parent.ViewRecyclerRoblox)
local Signals = require(Root.Parent.Signals)
local ReparentableHost = Roblox.ReparentableHost
local ShallowTable = Core.Adapter._Private.ShallowTable

local ASSIGNMENT_KEYS = table.freeze({ "key", "generation" })

export type ParentAssignment<T> = {
	key: string,
	index: number?,
	value: T,
	generation: number,
	adapterData: any?,
}

export type RecyclableViewType = RecyclableViewRegistry.RecyclableViewType<any>

export type Destination = {
	props: { [any]: any },
	placeholder: Frame,
	automaticSize: Enum.AutomaticSize,
}

export type CompositionAssignment = {
	key: string,
	index: number,
	value: Destination,
	generation: number,
}

export type PlacementKind = PlacementKind.PlacementKind
export type HostState = {
	assignment: CompositionAssignment?,
	host: GuiObject?,
	phase: HostPresentationPhase.HostPresentationPhase,
	visible: boolean,
}
export type PlacementPort = {
	apply: (HostState?) -> (),
}

export type RecyclableView = {
	id: number,
	viewType: RecyclableViewType,
	itemViewType: RecyclableViewType,
	signal: Signals.getter<CompositionAssignment?>,
	set: (CompositionAssignment?) -> (),
	itemSignal: Signals.getter<{ [any]: any }>,
	pending: React.Binding<boolean>,
	contentRevision: Signals.getter<number>,
	portalFrame: Signals.getter<Frame?>,
	commitContent: (number, number) -> boolean,
	bindPlacement: (kind: PlacementKind?, port: PlacementPort?) -> (),
	clearSelection: () -> (),
	destroy: () -> (),
}

export type PlacementHandle = {
	setPlaceholder: (placeholder: Frame?) -> (),
	setProps: (props: { [any]: any }) -> (),
	unregister: () -> (),
}

export type CompositionPlacement = {
	register: (
		viewType: RecyclableViewType,
		placementToken: {},
		parentSignal: Signals.getter<any>,
		props: { [any]: any },
		placeholder: Frame?
	) -> PlacementHandle,
	flush: () -> (),
	destroy: () -> (),
}

export type ContextValue = {
	placement: Signals.getter<CompositionPlacement?>,
	parentSignal: Signals.getter<any>,
}

type DesiredEntry = {
	key: string,
	viewType: RecyclableViewType,
	index: number,
	value: Destination,
	placementId: number,
}

type Reconciler = {
	update: (desiredEntries: { DesiredEntry }) -> (),
	getViews: () -> { RecyclableView },
}

type RecyclingScope = {
	exchange: (
		owner: any,
		releases: { { view: RecyclableView, leaseToken: number } },
		requests: { { viewType: RecyclableViewType } }
	) -> any,
}

type Placement = {
	viewType: RecyclableViewType,
	parentSignal: (boolean?) -> any,
	props: { [any]: any },
	placeholder: Frame?,
	view: RecyclableView?,
}

type CompositionPortState = {
	view: RecyclableView,
	pendingAssignment: any?,
	pendingPlacementId: number?,
	currentPlacementId: number?,
	currentPlaceholder: Frame?,
	currentAutomaticSize: Enum.AutomaticSize?,
	port: {
		apply: (any?) -> (),
	},
}

local CompositionPlacement = {}

local function compositeKey(parentKey: string, placementId: number): string
	return `{#parentKey}:{parentKey}:{placementId}`
end

function CompositionPlacement.new(scope: RecyclingScope, onChanged: () -> ()): CompositionPlacement
	local placements: { [number]: Placement } = {}
	local placementIdsByToken: { [any]: number } = setmetatable({}, { __mode = "k" }) :: any
	local nextPlacementId = 1
	local desiredByPlacementId: { [number]: DesiredEntry } = {}
	local dirtyPlacementIds: { [number]: boolean } = {}
	local dirty = false
	local destroyed = false
	local reconciler: Reconciler? = nil
	local portStateByView: { [RecyclableView]: CompositionPortState } = setmetatable({}, { __mode = "k" }) :: any

	local function getPortState(view: RecyclableView): CompositionPortState
		local state = portStateByView[view]
		if state ~= nil then
			return state
		end
		local port
		state = {
			view = view,
			pendingAssignment = nil,
			pendingPlacementId = nil,
			currentPlacementId = nil,
			currentPlaceholder = nil,
			currentAutomaticSize = nil,
			port = nil :: any,
		}
		local function applyPlacement(hostState)
			if hostState == nil then
				state.pendingAssignment = nil
				state.pendingPlacementId = nil
				local placementId = state.currentPlacementId
				state.currentPlacementId = nil
				state.currentPlaceholder = nil
				state.currentAutomaticSize = nil
				local placement = if placementId == nil then nil else placements[placementId]
				if placement ~= nil and placement.view == view then
					placement.view = nil
				end
				local portalFrame = view.portalFrame(false)
				if portalFrame ~= nil then
					ReparentableHost.detach(portalFrame)
					portalFrame.AnchorPoint = Vector2.zero
					portalFrame.Position = UDim2.new()
					portalFrame.Size = UDim2.new()
					portalFrame.AutomaticSize = Enum.AutomaticSize.None
				end
				return
			end
			local assignment = state.pendingAssignment or view.signal(false)
			local placementId = state.pendingPlacementId or state.currentPlacementId
			assert(assignment ~= nil, "CompositionPlacement: placement attach or update requires an Assignment")
			assert(placementId ~= nil, "CompositionPlacement: placement requires a destination")
			if
				hostState.assignment == nil
				or not ShallowTable.containsEqual(hostState.assignment, assignment, ASSIGNMENT_KEYS)
			then
				return
			end
			state.pendingAssignment = nil
			state.pendingPlacementId = nil
			local previousPlacementId = state.currentPlacementId
			if previousPlacementId ~= nil and previousPlacementId ~= placementId then
				local previousPlacement = placements[previousPlacementId]
				if previousPlacement ~= nil and previousPlacement.view == view then
					previousPlacement.view = nil
				end
			end
			state.currentPlacementId = placementId
			local placement = placements[placementId]
			if placement ~= nil then
				placement.view = view
			end
			local portalFrame = hostState.host
			assert(portalFrame ~= nil, "CompositionPlacement: cannot place a destroyed Recyclable view")
			local destination = assignment.value
			if
				state.currentPlaceholder ~= destination.placeholder
				or state.currentAutomaticSize ~= destination.automaticSize
				or portalFrame.Parent ~= destination.placeholder
			then
				ReparentableHost.place(portalFrame, destination)
				state.currentPlaceholder = destination.placeholder
				state.currentAutomaticSize = destination.automaticSize
			end
			portalFrame.Visible = hostState.visible
		end
		port = {
			apply = applyPlacement,
		}
		state.port = port
		portStateByView[view] = state
		return state
	end

	local function preparePlacement(view: RecyclableView, assignment)
		if assignment ~= nil then
			local state = getPortState(view)
			state.pendingAssignment = assignment
			state.pendingPlacementId = assignment.adapterData.placementId
			view.bindPlacement(PlacementKind.Composition, state.port)
		else
			view.bindPlacement(nil, nil)
		end
	end

	local function markDirty(placementId: number)
		dirtyPlacementIds[placementId] = true
		if dirty or destroyed then
			return
		end
		dirty = true
		onChanged()
	end

	local function ensureReconciler(): Reconciler
		local current = reconciler
		if current ~= nil then
			return current
		end

		local occupied = {}
		local owner = {}
		local nextGeneration = 1
		local function assignmentFor(desired: DesiredEntry, retainedGeneration: number?): ParentAssignment<Destination>
			local generation = retainedGeneration
			if generation == nil then
				generation = nextGeneration
				nextGeneration += 1
			end
			return {
				key = desired.key,
				index = desired.index,
				value = desired.value,
				generation = generation,
				adapterData = { placementId = desired.placementId },
			}
		end
		current = {
			update = function(desiredEntries)
				local currentByKey = {}
				for _, entry in occupied do
					currentByKey[entry.desired.key] = entry
				end
				local desiredKeys = {}
				local releases = {}
				local requests = {}
				local nextOccupied = {}
				local transitions = {}
				for _, desired in desiredEntries do
					assert(
						desiredKeys[desired.key] == nil,
						`CompositionPlacement: duplicate key "{desired.key}"`
					)
					desiredKeys[desired.key] = true
					local entry = currentByKey[desired.key]
					if entry ~= nil and entry.viewType == desired.viewType then
						currentByKey[desired.key] = nil
						if entry.desired ~= desired then
							entry.assignment = assignmentFor(desired, entry.assignment.generation)
							table.insert(transitions, { view = entry.view, assignment = entry.assignment })
						end
						entry.desired = desired
						table.insert(nextOccupied, entry)
					else
						table.insert(requests, { viewType = desired.viewType })
						table.insert(nextOccupied, {
							desired = desired,
							viewType = desired.viewType,
						})
					end
				end
				for _, entry in occupied do
					if currentByKey[entry.desired.key] == entry then
						table.insert(releases, {
							view = entry.view,
							leaseToken = entry.leaseToken,
						})
					end
				end
				local result = scope.exchange(owner, releases, requests)
				local acquiredIndex = 1
				local nextViews = {}
				for _, entry in nextOccupied do
					if entry.view == nil then
						local acquired = result.acquired[acquiredIndex]
						acquiredIndex += 1
						entry.view = acquired.view
						entry.leaseToken = acquired.leaseToken
						entry.assignment = assignmentFor(entry.desired)
						table.insert(transitions, { view = acquired.view, assignment = entry.assignment })
					end
					nextViews[entry.view] = true
				end
				for _, released in releases do
					if not nextViews[released.view] then
						table.insert(transitions, { view = released.view, assignment = nil })
					end
				end
				occupied = nextOccupied
				for _, transition in transitions do
					preparePlacement(transition.view, transition.assignment)
				end
				for _, transition in transitions do
					transition.view.set(transition.assignment)
				end
			end,
			getViews = function()
				local views = {}
				for _, entry in occupied do
					table.insert(views, entry.view)
				end
				return views
			end,
		}
		reconciler = current
		return current
	end

	local function flush()
		if not dirty or destroyed then
			return
		end
		dirty = false

		local desired: { DesiredEntry } = {}
		for placementId, placement in placements do
			local entry = desiredByPlacementId[placementId]
			if dirtyPlacementIds[placementId] or entry == nil then
				local parentAssignment = placement.parentSignal(false)
				local placeholder = placement.placeholder
				entry = nil
				if parentAssignment ~= nil and placeholder ~= nil then
					entry = {
						key = compositeKey(parentAssignment.key, placementId),
						viewType = placement.viewType,
						index = parentAssignment.index,
						placementId = placementId,
						value = {
							props = placement.props,
							placeholder = placeholder,
							automaticSize = Enum.AutomaticSize.XY,
						},
					}
				end
				desiredByPlacementId[placementId] = entry
			end
			if entry ~= nil then
				table.insert(desired, entry)
			end
		end
		table.clear(dirtyPlacementIds)

		if #desired > 0 or reconciler ~= nil then
			ensureReconciler().update(desired)
		end
	end

	return {
		register = function(viewType, placementToken, parentSignal, props, placeholder)
			assert(not destroyed, "CompositionPlacement: cannot register after destroy")
			local placementId = placementIdsByToken[placementToken]
			if placementId == nil then
				placementId = nextPlacementId
				nextPlacementId += 1
				placementIdsByToken[placementToken] = placementId
			end
			assert(placements[placementId] == nil, "CompositionPlacement: placement is already registered")

			placements[placementId] = {
				viewType = viewType,
				parentSignal = parentSignal,
				props = props,
				placeholder = placeholder,
				view = nil,
			}
			markDirty(placementId)

			local registered = true
			return {
				setPlaceholder = function(nextPlaceholder)
					if not registered or destroyed then
						return
					end
					local placement = placements[placementId]
					if placement == nil then
						return
					end
					local previousPlaceholder = placement.placeholder
					if previousPlaceholder == nextPlaceholder then
						return
					end
					if previousPlaceholder ~= nil and placement.view ~= nil then
						getPortState(placement.view).port.apply(nil)
					end
					placement.placeholder = nextPlaceholder
					markDirty(placementId)
				end,
				setProps = function(nextProps)
					if not registered or destroyed then
						return
					end
					local placement = placements[placementId]
					if placement == nil then
						return
					end
					placement.props = nextProps
					markDirty(placementId)
				end,
				unregister = function()
					if not registered then
						return
					end
					registered = false
					if destroyed then
						return
					end
					local placement = placements[placementId]
					if placement == nil then
						return
					end
					if placement.view ~= nil then
						getPortState(placement.view).port.apply(nil)
					end
					placements[placementId] = nil
					desiredByPlacementId[placementId] = nil
					markDirty(placementId)
				end,
			}
		end,
		flush = flush,
		destroy = function()
			if destroyed then
				return
			end
			destroyed = true
			dirty = false
			if reconciler ~= nil then
				reconciler.update({})
			end
			table.clear(placements)
			table.clear(desiredByPlacementId)
			table.clear(dirtyPlacementIds)
			table.clear(portStateByView)
		end,
	}
end

return CompositionPlacement
