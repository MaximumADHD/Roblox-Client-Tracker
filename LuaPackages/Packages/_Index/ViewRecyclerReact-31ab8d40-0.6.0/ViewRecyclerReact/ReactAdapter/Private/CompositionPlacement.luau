local Root = script:FindFirstAncestor("ViewRecyclerReact")
local Core = require(Root.Parent.ViewRecycler)
local PlacementKind = require(script.Parent.PlacementKind)
local React = require(Root.Parent.React)
local RecyclableViewRegistry = require(script.Parent.RecyclableViewRegistry)
local Signals = require(Root.Parent.Signals)

local EMPTY_MEASUREMENT_DEPENDENCIES = table.freeze({})

export type ParentAssignment<T> = {
	key: string,
	value: T,
}
export type RecyclableViewType = RecyclableViewRegistry.RecyclableViewType<any>
export type Active = boolean | Signals.getter<boolean>
export type CompositionAssignment = {
	key: string,
	value: Signals.getter<any>,
}
export type CompositionDestination = {
	kind: typeof(PlacementKind.Composition),
	placementId: number,
	placeholder: Frame,
	automaticSize: Enum.AutomaticSize,
	compositionPlacement: CompositionPlacement,
	attachMeasurementDependency: (GuiObject) -> (),
	detachMeasurementDependency: (GuiObject) -> (),
}
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
	setActive: (active: Active?) -> (),
	setPlaceholder: (placeholder: Frame?) -> (),
	setItemSignal: (itemSignal: Signals.getter<any>) -> (),
	unregister: () -> (),
}
export type CompositionPlacement = {
	register: (
		viewType: RecyclableViewType,
		placementToken: {},
		parentSignal: Signals.getter<any>,
		itemSignal: Signals.getter<any>,
		placeholder: Frame?,
		active: Active?
	) -> PlacementHandle,
	getMeasurementDependencies: (parentAssignment: ParentAssignment<any>) -> { GuiObject },
	subscribeMeasurementDependencies: (parentAssignment: ParentAssignment<any>, callback: () -> ()) -> () -> (),
	flush: () -> (),
	destroy: () -> (),
}
export type ContextValue = {
	placement: Signals.getter<CompositionPlacement?>,
	parentSignal: Signals.getter<any>,
}

type RecyclingScope = Core.RecyclingScope<RecyclableView, RecyclableViewType>
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
	-- Slots are keyed by placement id, so a placement keeps its view while its
	-- parent Assignment changes.
	local binder = Core.Adapter.createSlotBinder({
		recyclingScope = scope,
		prepareDesiredAssignment = function(desired)
			local source = desired.value :: Source
			return {
				key = compositeKey(source.parentAssignment.key, tonumber(desired.key) :: number),
				value = source.itemSignal,
			}
		end,
	})
	local placements: { [number]: Placement } = {}
	local entries: { [number]: Entry } = {}
	local placementIdsByToken: { [any]: number } = setmetatable({}, { __mode = "k" }) :: any
	local nextPlacementId = 1
	local dirtyIds: { [number]: true } = {}
	local flushing = false
	local mutationDepth = 0
	local publicationFaulted = false
	local destroyed = false
	local dependenciesByParent: { [ParentAssignment<any>]: { [GuiObject]: boolean } } = {}
	local subscribersByParent: { [ParentAssignment<any>]: { [() -> ()]: true } } = {}
	local parentByDependency: { [GuiObject]: ParentAssignment<any> } = setmetatable({}, { __mode = "k" }) :: any
	local flush: () -> ()
	local requestFlush: () -> ()
	local mutate: (callback: () -> any) -> any
	local publicPlacement: CompositionPlacement

	local function notify(parentAssignment: ParentAssignment<any>)
		local subscribers = subscribersByParent[parentAssignment]
		if subscribers ~= nil then
			for callback in subscribers do
				callback()
			end
		end
	end

	local function detachDependency(dependency: GuiObject)
		local parentAssignment = parentByDependency[dependency]
		if parentAssignment == nil then
			return
		end
		parentByDependency[dependency] = nil
		local dependencies = dependenciesByParent[parentAssignment]
		if dependencies ~= nil then
			dependencies[dependency] = nil
			if next(dependencies) == nil then
				dependenciesByParent[parentAssignment] = nil
			end
		end
		notify(parentAssignment)
	end

	local function attachDependency(
		parentAssignment: ParentAssignment<any>,
		placement: Placement,
		dependency: GuiObject
	)
		local metadata = RecyclableViewRegistry.getMetadata(placement.viewType)
		if metadata == nil or not metadata.contributesToParentMeasurement then
			detachDependency(dependency)
			return
		end
		if parentByDependency[dependency] == parentAssignment then
			return
		end
		detachDependency(dependency)
		local dependencies = dependenciesByParent[parentAssignment]
		if dependencies == nil then
			dependencies = {}
			dependenciesByParent[parentAssignment] = dependencies
		end
		dependencies[dependency] = true
		parentByDependency[dependency] = parentAssignment
		notify(parentAssignment)
	end

	local function desiredFor(placementId: number): Desired?
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

	local function makeState(desired: Desired, assignment: CompositionAssignment): CompositionState
		local parentAssignment = desired.parentAssignment
		local placement = desired.placement
		local destination: CompositionDestination = table.freeze({
			kind = PlacementKind.Composition,
			placementId = desired.placementId,
			placeholder = desired.placeholder,
			automaticSize = Enum.AutomaticSize.XY,
			compositionPlacement = publicPlacement,
			attachMeasurementDependency = function(dependency)
				attachDependency(parentAssignment, placement, dependency)
			end,
			detachMeasurementDependency = detachDependency,
		})
		return table.freeze({
			assignment = assignment,
			index = nil,
			destination = destination,
		})
	end

	local function reconcileDirty()
		local ids = {}
		for placementId in dirtyIds do
			table.insert(ids, placementId)
		end
		table.sort(ids)

		local desiredById: { [number]: Desired } = {}
		local departs = {}
		local slots = {}
		for _, placementId in ids do
			local desired = desiredFor(placementId)
			local entry = entries[placementId]
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

		table.clear(dirtyIds)
		local applied, changes = pcall(binder.apply, departs, slots)
		if not applied then
			for _, placementId in ids do
				dirtyIds[placementId] = true
			end
			error(changes, 0)
		end
		for _, placementId in ids do
			if desiredById[placementId] == nil then
				entries[placementId] = nil
			end
		end
		local rebound: { [RecyclableView]: boolean } = {}
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

	flush = function()
		if destroyed or flushing then
			return
		end
		assert(not publicationFaulted, "CompositionPlacement: cannot flush after a publication failure")
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
		register = function(viewType, placementToken, parentSignal, itemSignal, placeholder, active)
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
				placements[placementId] = placement
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
		end,
		getMeasurementDependencies = function(parentAssignment)
			local indexed = dependenciesByParent[parentAssignment]
			if indexed == nil then
				return EMPTY_MEASUREMENT_DEPENDENCIES :: any
			end
			local dependencies = {}
			for dependency in indexed do
				table.insert(dependencies, dependency)
			end
			return dependencies
		end,
		subscribeMeasurementDependencies = function(parentAssignment, callback)
			assert(not destroyed, "CompositionPlacement: cannot subscribe after destroy")
			local subscribers = subscribersByParent[parentAssignment]
			if subscribers == nil then
				subscribers = {}
				subscribersByParent[parentAssignment] = subscribers
			end
			subscribers[callback] = true
			local subscribed = true
			return function()
				if subscribed then
					subscribed = false
					subscribers[callback] = nil
					if next(subscribers) == nil then
						subscribersByParent[parentAssignment] = nil
					end
				end
			end
		end,
		flush = flush,
		destroy = function()
			if destroyed then
				return
			end
			destroyed = true
			table.clear(dirtyIds)
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
			table.clear(placements)
			table.clear(entries)
			table.clear(dependenciesByParent)
			table.clear(subscribersByParent)
			table.clear(parentByDependency)
		end,
	}
	return publicPlacement
end

return CompositionPlacement
