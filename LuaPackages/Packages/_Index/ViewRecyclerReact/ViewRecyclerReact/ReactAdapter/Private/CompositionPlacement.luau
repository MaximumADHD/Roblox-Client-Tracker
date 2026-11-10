local FFlagViewRecyclerReact08 = require(script:FindFirstAncestor("ViewRecyclerReact").Flags).FFlagViewRecyclerReact08
local Root = script:FindFirstAncestor("ViewRecyclerReact")
local Core = require(Root.Parent.ViewRecycler)

local Destination = require(script.Parent.Destination)
local Placement = require(script.Parent.Placement)
local PlacementKind = require(script.Parent.PlacementKind)
local React = require(Root.Parent.React)
local RecyclableView = require(script.Parent.RecyclableView)
local RecyclableViewRegistry = require(script.Parent.RecyclableViewRegistry)
local Signals = require(Root.Parent.Signals)

type ParentAssignment<T> = {
	key: string,
	value: T,
}
export type RecyclableViewType = RecyclableViewRegistry.RecyclableViewType<any>
-- A placement whose view type is nil is inactive and holds no view.
export type ViewTypeSignal = Signals.getter<RecyclableViewType?>
export type Active = boolean | Signals.getter<boolean>
export type CompositionAssignment = {
	key: string,
	value: Signals.getter<any>,
}

type CompositionDestination = Destination.CompositionDestination
type View = RecyclableView.RecyclableView<any, RecyclableViewType>
export type CompositionState = {
	assignment: CompositionAssignment,
	index: nil,
	destination: CompositionDestination,
}
export type RecyclableView = {
	id: number,
	viewType: RecyclableViewType,
	itemViewType: RecyclableViewType,
	signal: Signals.getter<CompositionAssignment?>,
	itemSignal: Signals.getter<any>,
	pending: React.Binding<boolean>,
	contentRevision: Signals.getter<number>,
	portalFrame: Signals.getter<Frame?>,
	commitContent: (number) -> boolean,
	transition: (CompositionState?) -> (),
	clearSelection: () -> (),
	destroy: () -> (),
}

export type PlacementHandle = {
	setViewType: (viewType: ViewTypeSignal) -> (),
	setPlaceholder: (placeholder: Frame?) -> (),
	setItemSignal: (itemSignal: Signals.getter<any>) -> (),
	unregister: () -> (),

	setActive: ((active: Active?) -> ())?,
}
export type CompositionPlacement = {
	register: (
		viewType: ViewTypeSignal,
		placementToken: {},
		parentSignal: Signals.getter<any>,
		itemSignal: Signals.getter<any>,
		placeholder: Frame?
	) -> PlacementHandle,
	destroy: () -> (),

	flush: (() -> ())?,
}
export type ContextValue = {
	placement: Signals.getter<CompositionPlacement?>,
	parentSignal: Signals.getter<any>,
}

type RecyclingScope = Core.RecyclingScope<View, RecyclableViewType>
type Registration = {
	viewType: ViewTypeSignal,
	parentSignal: (boolean?) -> any,
	itemSignal: Signals.getter<any>,
	placeholder: Frame?,
	disposeViewTypeEffect: (() -> ())?,
	disposeParentAssignmentEffect: (() -> ())?,
}
-- What a composed Assignment is derived from; one reference per pair.
type Source = {
	parentAssignment: ParentAssignment<any>,
	itemSignal: Signals.getter<any>,
}
type Placement = {
	viewType: RecyclableViewType,
	parentSignal: (boolean?) -> any,
	itemSignal: Signals.getter<any>,
	placeholder: Frame?,
	active: Active?,
	disposeActiveEffect: (() -> ())?,
	disposeParentAssignmentEffect: (() -> ())?,
}
type Entry = {
	view: RecyclableView,
	source: Source,
	state: CompositionState?,
}
type Desired = {
	placementId: number,
	placement: Placement,
	parentAssignment: ParentAssignment<any>,
	placeholder: Frame,
}

local CompositionPlacement = {}

local function compositeKey(parentKey: string, placementId: number): string
	return `{#parentKey}:{parentKey}:{placementId}`
end

function CompositionPlacement.new(scope: RecyclingScope): CompositionPlacement
	local placement, binder
	if FFlagViewRecyclerReact08 then -- Slots are keyed by placement id, so a placement keeps its view while its
		-- parent Assignment changes.
		placement = Placement.new(scope, {
			name = "CompositionPlacement",
			namespace = "composition",
		})
	else -- Slots are keyed by placement id, so a placement keeps its view while its
		-- parent Assignment changes.
		binder = Core.Adapter.createSlotBinder({
			recyclingScope = scope,
			prepareDesiredAssignment = function(desired)
				local source = desired.value :: Source
				return {
					key = compositeKey(source.parentAssignment.key, tonumber(desired.key) :: number),
					value = source.itemSignal,
				}
			end,
		})
	end
	local placements: { [number]: Registration } = {}

	local destinations: { [number]: CompositionDestination }, parentAssignments: { [number]: ParentAssignment<any> }, entries: { [number]: Entry }
	if FFlagViewRecyclerReact08 then
		destinations = {}
		-- The parent Assignment each bound placement's Assignment was derived from.
		parentAssignments = {}
	else
		entries = {}
	end
	local placementIdsByToken: { [any]: number } = setmetatable({}, { __mode = "k" }) :: any
	local nextPlacementId = 1
	local dirtyIds: { [number]: true } = {}
	local flushing = false
	local mutationDepth = 0

	local publicationFaulted
	if not FFlagViewRecyclerReact08 then
		publicationFaulted = false
	end
	local destroyed = false
	local flush: () -> ()
	local requestFlush: () -> ()
	local mutate: (callback: () -> any) -> any
	local publicPlacement: CompositionPlacement

	local slotFor, desiredFor, makeState
	if FFlagViewRecyclerReact08 then
		function slotFor(placementId: number): (Placement.PlacedSlot?, ParentAssignment<any>?)
			local registration = placements[placementId]
			if registration == nil then
				return nil
			end
			local parentAssignment: ParentAssignment<any>? = registration.parentSignal(false)
			local viewType = registration.viewType(false)
			local placeholder = registration.placeholder
			if viewType == nil or parentAssignment == nil or placeholder == nil then
				return nil
			end
			local destination = destinations[placementId]
			if destination == nil or destination.placeholder ~= placeholder then
				destination = table.freeze({
					kind = Destination.Kind.Composition,
					placementId = placementId,
					placeholder = placeholder,
					automaticSize = Enum.AutomaticSize.XY,
				})
				destinations[placementId] = destination
			end
			local previousParent = parentAssignments[placementId]
			return {
				key = tostring(placementId),
				viewType = viewType,
				value = registration.itemSignal,
				assignmentKey = compositeKey((parentAssignment :: ParentAssignment<any>).key, placementId),
				changed = previousParent ~= nil and previousParent ~= parentAssignment,
				destination = destination :: any,
			},
				parentAssignment
		end
	else
		function desiredFor(placementId: number): Desired?
			local placement = placements[placementId]
			if placement == nil then
				return nil
			end
			local parentAssignment = placement.parentSignal(false)
			local active = placement.active
			local isActive = active == nil or if type(active) == "function" then active(false) else active
			if not isActive or parentAssignment == nil or placement.placeholder == nil then
				return nil
			end
			return {
				placementId = placementId,
				placement = placement,
				parentAssignment = parentAssignment,
				placeholder = placement.placeholder,
			}
		end

		function makeState(desired: Desired, assignment: CompositionAssignment): CompositionState
			local destination: CompositionDestination = table.freeze({
				kind = PlacementKind.Composition,
				placementId = desired.placementId,
				placeholder = desired.placeholder,
				automaticSize = Enum.AutomaticSize.XY,
				compositionPlacement = publicPlacement,
			})
			return table.freeze({
				assignment = assignment,
				index = nil,
				destination = destination,
			})
		end
	end

	local function reconcileDirty()
		local ids = {}
		for placementId in dirtyIds do
			table.insert(ids, placementId)
		end
		table.sort(ids)

		local desiredById: { [number]: Desired }
		if not FFlagViewRecyclerReact08 then
			desiredById = {}
		end

		local departs = {}
		local slots = {}

		local parents: { [number]: ParentAssignment<any> }
		if FFlagViewRecyclerReact08 then
			parents = {}
		end
		for _, placementId in ids do
			local slot, parentAssignment, desired, entry
			if FFlagViewRecyclerReact08 then
				slot, parentAssignment = slotFor(placementId)
				if slot ~= nil then
					table.insert(slots, slot)
					parents[placementId] = parentAssignment :: ParentAssignment<any>
				else
					destinations[placementId] = nil
					table.insert(departs, tostring(placementId))
				end
			else
				desired = desiredFor(placementId)
				entry = entries[placementId]
				if desired ~= nil then
					desiredById[placementId] = desired
					local source = if entry ~= nil
							and entry.source.parentAssignment == desired.parentAssignment
							and entry.source.itemSignal == desired.placement.itemSignal
						then entry.source
						else table.freeze({
							parentAssignment = desired.parentAssignment,
							itemSignal = desired.placement.itemSignal,
						})
					table.insert(slots, {
						key = tostring(placementId),
						value = source,
						viewType = desired.placement.viewType,
						placementId = placementId,
					})
				elseif entry ~= nil then
					table.insert(departs, tostring(placementId))
				end
			end
		end

		table.clear(dirtyIds)

		local ok, failure, applied, changes
		if FFlagViewRecyclerReact08 then
			ok, failure = pcall(placement.exchange, departs, slots)
		else
			applied, changes = pcall(binder.apply, departs, slots)
		end
		if not (if FFlagViewRecyclerReact08 then ok else applied) then
			for _, placementId in ids do
				dirtyIds[placementId] = true
			end
			error((if FFlagViewRecyclerReact08 then failure else changes), 0)
		end
		for _, placementId in ids do
			if FFlagViewRecyclerReact08 then
				parentAssignments[placementId] = parents[placementId]
			else
				if desiredById[placementId] == nil then
					entries[placementId] = nil
				end
			end
		end

		local rebound: { [RecyclableView]: boolean }
		if not FFlagViewRecyclerReact08 then
			rebound = {}
			for _, binding in changes.entered do
				entries[(binding :: any).placementId] = {
					view = binding.view,
					source = binding.value :: Source,
					state = nil,
				}
				rebound[binding.view] = true
			end
			for _, binding in changes.updated do
				entries[(binding :: any).placementId].source = binding.value :: Source
			end

			publicationFaulted = true
			for _, view in changes.departed do
				view.transition(nil)
			end
			for _, placementId in ids do
				local desired = desiredById[placementId]
				local entry = entries[placementId]
				if desired ~= nil and entry ~= nil then
					local binding = binder.get(tostring(placementId)) :: any
					local assignment = binding.assignment :: CompositionAssignment
					local previous = entry.state
					if
						rebound[entry.view]
						or previous == nil
						or previous.assignment ~= assignment
						or previous.destination.placeholder ~= desired.placeholder
					then
						local state = makeState(desired, assignment)
						entry.state = state
						entry.view.transition(state)
					end
				end
			end
			publicationFaulted = false
		end
	end

	flush = function()
		if destroyed or flushing then
			return
		end

		if not FFlagViewRecyclerReact08 then
			assert(not publicationFaulted, "CompositionPlacement: cannot flush after a publication failure")
		end
		flushing = true
		local ok, failure = pcall(function()
			while next(dirtyIds) ~= nil do
				reconcileDirty()
			end
		end)
		flushing = false
		if not ok then
			error(failure, 0)
		end
	end

	requestFlush = function()
		if not destroyed and next(dirtyIds) ~= nil and mutationDepth == 0 and not flushing then
			flush()
		end
	end

	local function markDirty(placementId: number)
		if not destroyed then
			dirtyIds[placementId] = true
			requestFlush()
		end
	end

	local markDirtyOnChange
	if FFlagViewRecyclerReact08 then
		function markDirtyOnChange(placementId: number, signal: Signals.getter<any>): () -> ()
			local observed: any = nil
			local initialized = false
			return Signals.createEffect(function(trackingScope)
				local value = signal(trackingScope)
				if not initialized or observed ~= value then
					initialized = true
					observed = value
					markDirty(placementId)
				end
			end)
		end
	end

	mutate = function(callback)
		mutationDepth += 1
		local result = table.pack(pcall(callback))
		mutationDepth -= 1
		if not result[1] then
			error(result[2], 0)
		end
		requestFlush()
		return table.unpack(result, 2, result.n)
	end

	publicPlacement = {
		register = (
			if FFlagViewRecyclerReact08
				then function(viewType, placementToken, parentSignal, itemSignal, placeholder)
					return mutate(function()
						assert(not destroyed, "CompositionPlacement: cannot register after destroy")
						local placementId = placementIdsByToken[placementToken]
						if placementId == nil then
							placementId = nextPlacementId
							nextPlacementId += 1
							placementIdsByToken[placementToken] = placementId
						end
						assert(placements[placementId] == nil, "CompositionPlacement: placement is already registered")
						local registration: Registration = {
							viewType = viewType,
							parentSignal = parentSignal,
							itemSignal = itemSignal,
							placeholder = placeholder,
							disposeViewTypeEffect = nil,
							disposeParentAssignmentEffect = nil,
						}
						placements[placementId] = registration
						registration.disposeViewTypeEffect = markDirtyOnChange(placementId, viewType)
						registration.disposeParentAssignmentEffect = markDirtyOnChange(placementId, parentSignal)
						markDirty(placementId)

						local registered = true
						return {
							setViewType = function(nextViewType)
								mutate(function()
									if not registered or destroyed or registration.viewType == nextViewType then
										return
									end
									if registration.disposeViewTypeEffect ~= nil then
										registration.disposeViewTypeEffect()
									end
									registration.viewType = nextViewType
									registration.disposeViewTypeEffect = markDirtyOnChange(placementId, nextViewType)
								end)
							end,
							setPlaceholder = function(nextPlaceholder)
								mutate(function()
									if registered and not destroyed and registration.placeholder ~= nextPlaceholder then
										registration.placeholder = nextPlaceholder
										markDirty(placementId)
									end
								end)
							end,
							setItemSignal = function(nextItemSignal)
								mutate(function()
									if registered and not destroyed and registration.itemSignal ~= nextItemSignal then
										registration.itemSignal = nextItemSignal
										markDirty(placementId)
									end
								end)
							end,
							unregister = function()
								mutate(function()
									if not registered then
										return
									end
									registered = false
									if destroyed then
										return
									end
									if registration.disposeViewTypeEffect ~= nil then
										registration.disposeViewTypeEffect()
									end
									if registration.disposeParentAssignmentEffect ~= nil then
										registration.disposeParentAssignmentEffect()
									end
									placements[placementId] = nil
									markDirty(placementId)
								end)
							end,
						}
					end)
				end
				else function(viewType, placementToken, parentSignal, itemSignal, placeholder, active)
					return mutate(function()
						assert(not destroyed, "CompositionPlacement: cannot register after destroy")
						local placementId = placementIdsByToken[placementToken]
						if placementId == nil then
							placementId = nextPlacementId
							nextPlacementId += 1
							placementIdsByToken[placementToken] = placementId
						end
						assert(placements[placementId] == nil, "CompositionPlacement: placement is already registered")
						local placement: Placement = {
							viewType = viewType,
							parentSignal = parentSignal,
							itemSignal = itemSignal,
							placeholder = placeholder,
							active = active,
							disposeActiveEffect = nil,
							disposeParentAssignmentEffect = nil,
						}
						placements[placementId] = placement :: any
						local function subscribeActive()
							if type(placement.active) == "function" then
								placement.disposeActiveEffect = Signals.createEffect(function(trackingScope)
									(placement.active :: Signals.getter<boolean>)(trackingScope)
									markDirty(placementId)
								end)
							end
						end
						subscribeActive()
						local observedParent: any = nil
						local initialized = false
						placement.disposeParentAssignmentEffect = Signals.createEffect(function(trackingScope)
							local parentAssignment = parentSignal(trackingScope)
							if not initialized or observedParent ~= parentAssignment then
								initialized = true
								observedParent = parentAssignment
								markDirty(placementId)
							end
						end)
						markDirty(placementId)

						local registered = true
						return {
							setActive = function(nextActive)
								mutate(function()
									if not registered or destroyed or placement.active == nextActive then
										return
									end
									if placement.disposeActiveEffect ~= nil then
										placement.disposeActiveEffect()
										placement.disposeActiveEffect = nil
									end
									placement.active = nextActive
									subscribeActive()
									markDirty(placementId)
								end)
							end,
							setPlaceholder = function(nextPlaceholder)
								mutate(function()
									if registered and not destroyed and placement.placeholder ~= nextPlaceholder then
										placement.placeholder = nextPlaceholder
										markDirty(placementId)
									end
								end)
							end,
							setItemSignal = function(nextItemSignal)
								mutate(function()
									if registered and not destroyed and placement.itemSignal ~= nextItemSignal then
										placement.itemSignal = nextItemSignal
										markDirty(placementId)
									end
								end)
							end,
							unregister = function()
								mutate(function()
									if not registered then
										return
									end
									registered = false
									if destroyed then
										return
									end
									if placement.disposeActiveEffect ~= nil then
										placement.disposeActiveEffect()
									end
									if placement.disposeParentAssignmentEffect ~= nil then
										placement.disposeParentAssignmentEffect()
									end
									placements[placementId] = nil
									markDirty(placementId)
								end)
							end,
						}
					end)
				end
		),
		destroy = function()
			if destroyed then
				return
			end
			destroyed = true
			table.clear(dirtyIds)

			if FFlagViewRecyclerReact08 then
				for _, registration in placements do
					if registration.disposeViewTypeEffect ~= nil then
						registration.disposeViewTypeEffect()
					end
					if registration.disposeParentAssignmentEffect ~= nil then
						registration.disposeParentAssignmentEffect()
					end
				end
				placement.destroy()
			else
				for _, placement in placements do
					if placement.disposeActiveEffect ~= nil then
						placement.disposeActiveEffect()
					end
					if placement.disposeParentAssignmentEffect ~= nil then
						placement.disposeParentAssignmentEffect()
					end
				end
				for _, entry in entries do
					entry.view.transition(nil)
				end
				binder.destroy()
			end
			table.clear(placements)
			table.clear((if FFlagViewRecyclerReact08 then destinations else entries))

			if FFlagViewRecyclerReact08 then
				table.clear(parentAssignments)
			end
		end,

		flush = if FFlagViewRecyclerReact08 then nil else flush,
	}
	return publicPlacement
end

return CompositionPlacement
