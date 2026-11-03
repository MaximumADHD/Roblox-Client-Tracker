local Src = script:FindFirstAncestor("ViewRecycler")
local Diagnostics = require(Src.Core.Diagnostics)
local Placement = require(Src.Core.Placement.PlacementTypes)
local ShallowTable = require(Src.Internal.ShallowTable)
local Types = require(Src.Core.Types)
local VirtualizerSnapshot = require(Src.Core.Virtualizer.VirtualizerSnapshot)
local createRecyclingScope = require(Src.Core.RecyclingScope)

local ASSIGNMENT_KEYS = table.freeze({ "index", "value" })
local IDENTITY_KEYS = table.freeze({ "kind", "revision" })
export type DesiredAssignment<T> = {
	key: string,
	index: number?,
	value: T,
}
export type ItemAssignment<T> = DesiredAssignment<T> & {
	generation: number,
}
export type PlacementIntent<T> = {
	assignment: ItemAssignment<T>,
	itemLayout: Types.ItemLayout,
	canvasPlacement: Placement.ItemPlacement,
	viewportPlacement: Placement.ItemPlacement?,
	contentStartOffset: number,
	measurementIdentity: Types.MeasurementIdentity,
}
export type Options<ItemView, T, ItemViewType> = {
	recyclingScope: createRecyclingScope.RecyclingScope<ItemView, ItemViewType>,
	prepareDesiredAssignment: ((DesiredAssignment<T>) -> DesiredAssignment<T>)?,
	prepareAssignment: ((itemView: ItemView, assignment: ItemAssignment<T>?) -> ())?,
	postCommitAssignment: ((itemView: ItemView, assignment: ItemAssignment<T>?) -> ())?,
	presentAssignment: ((itemView: ItemView, assignment: ItemAssignment<T>) -> ())?,
	applyPlacementIntent: ((itemView: ItemView, intent: PlacementIntent<T>?) -> ())?,
}
export type ListPresentation<ItemView, T, ItemViewType> = {
	apply: (
		previousSnapshot: VirtualizerSnapshot.Snapshot<T, ItemViewType>?,
		nextSnapshot: VirtualizerSnapshot.Snapshot<T, ItemViewType>?,
		change: VirtualizerSnapshot.PresentationChange
	) -> { Diagnostics.Event },
	destroy: () -> (),
	getItemViews: () -> { ItemView },
	getSnapshot: () -> VirtualizerSnapshot.Snapshot<T, ItemViewType>?,
	resolvePlacementIntent: (itemView: ItemView) -> PlacementIntent<T>?,
	onPlacementIntentChanged: (itemView: ItemView, callback: () -> ()) -> () -> (),
	validateMeasurements: (
		measurements: { Types.ItemViewMeasurement }
	) -> ({ VirtualizerSnapshot.LogicalMeasurement }, number),
}
type MountedEntry<ItemView, T, ItemViewType> = {
	itemView: ItemView,
	itemViewType: ItemViewType,
	leaseToken: number,
	assignment: ItemAssignment<T>,
	desired: VirtualizerSnapshot.Entry<T, ItemViewType>,
}
type Transition<ItemView, T> = {
	itemView: ItemView,
	assignment: ItemAssignment<T>?,
}
local function assignmentChanged<T, ItemViewType>(
	previous: VirtualizerSnapshot.Entry<T, ItemViewType>,
	nextEntry: VirtualizerSnapshot.Entry<T, ItemViewType>
): boolean
	return not ShallowTable.containsEqual(previous, nextEntry, ASSIGNMENT_KEYS)
		or not ShallowTable.containsEqual(previous.identity, nextEntry.identity, IDENTITY_KEYS)
end

local function createListPresentation<ItemView, T, ItemViewType>(
	options: Options<ItemView, T, ItemViewType>
): ListPresentation<ItemView, T, ItemViewType>
	local scope = options.recyclingScope
	local owner = {}
	local currentSnapshot: VirtualizerSnapshot.Snapshot<T, ItemViewType>? = nil
	local entriesInOrder: { MountedEntry<ItemView, T, ItemViewType> } = {}
	local entryByKey: { [string]: MountedEntry<ItemView, T, ItemViewType> } = {}
	local entryByItemView: { [ItemView]: MountedEntry<ItemView, T, ItemViewType> } = {}
	local placementSubscribers: { [ItemView]: () -> () } = setmetatable({}, { __mode = "k" })
	local nextGeneration = 1
	local destroyed = false

	local function makeAssignment(desired: VirtualizerSnapshot.Entry<T, ItemViewType>): ItemAssignment<T>
		local value = {
			key = desired.key,
			index = desired.index,
			value = desired.value,
		}
		if options.prepareDesiredAssignment ~= nil then
			value = options.prepareDesiredAssignment(value)
		end
		local assignment = {
			key = value.key,
			index = value.index,
			value = value.value,
			generation = nextGeneration,
		}
		nextGeneration += 1
		return assignment
	end

	local function resolvePlacementIntent(itemView: ItemView): PlacementIntent<T>?
		local entry = entryByItemView[itemView]
		local snapshot = currentSnapshot
		if entry == nil or snapshot == nil then
			return nil
		end
		local desired = entry.desired
		return {
			assignment = entry.assignment,
			itemLayout = desired.itemLayout,
			canvasPlacement = desired.canvasPlacement,
			viewportPlacement = desired.viewportPlacement,
			contentStartOffset = snapshot.contentStartOffset,
			measurementIdentity = {
				itemIndex = entry.assignment.index,
				itemKey = entry.assignment.key,
				assignmentGeneration = entry.assignment.generation,
				itemRevision = desired.measurementIdentity.itemRevision,
				pinnedPosition = desired.measurementIdentity.pinnedPosition,
			},
		}
	end

	local function publish(transitions: { Transition<ItemView, T> }, placementChanged: { [ItemView]: boolean })
		for _, transition in transitions do
			if options.prepareAssignment ~= nil then
				options.prepareAssignment(transition.itemView, transition.assignment)
			end
		end
		if options.applyPlacementIntent ~= nil then
			for _, transition in transitions do
				options.applyPlacementIntent(
					transition.itemView,
					if transition.assignment == nil then nil else resolvePlacementIntent(transition.itemView)
				)
				placementChanged[transition.itemView] = nil
			end
			for itemView in placementChanged do
				options.applyPlacementIntent(itemView, resolvePlacementIntent(itemView))
			end
		end
		for itemView in placementChanged do
			local callback = placementSubscribers[itemView]
			if callback ~= nil then
				callback()
			end
		end
		for _, transition in transitions do
			if options.postCommitAssignment ~= nil then
				options.postCommitAssignment(transition.itemView, transition.assignment)
			end
		end
		if options.presentAssignment ~= nil then
			for _, transition in transitions do
				if transition.assignment ~= nil then
					options.presentAssignment(transition.itemView, transition.assignment)
				end
			end
		end
	end

	-- Canvas placements are resolved against the Content-start offset, which the
	-- entry graph does not carry, so a shifted inset restates every live intent.
	local function insetChanged(nextSnapshot: VirtualizerSnapshot.Snapshot<T, ItemViewType>): boolean
		local snapshot = currentSnapshot
		return snapshot == nil or snapshot.contentStartOffset ~= nextSnapshot.contentStartOffset
	end

	local function reconcile(
		nextSnapshot: VirtualizerSnapshot.Snapshot<T, ItemViewType>,
		restateAllPlacements: boolean
	): Diagnostics.Event
		local desiredByKey: { [string]: VirtualizerSnapshot.Entry<T, ItemViewType> } = {}
		local nextEntries: { MountedEntry<ItemView, T, ItemViewType>? } = table.create(#nextSnapshot.entries)
		local releases: { createRecyclingScope.Lease<ItemView> } = {}
		local requests: { createRecyclingScope.Request<ItemViewType> } = {}
		local requestIndices = {}
		local pendingIndices = {}
		local releasedByType: { [ItemViewType]: { MountedEntry<ItemView, T, ItemViewType> } } = {}
		local transitions: { Transition<ItemView, T> } = {}
		local placementChanged: { [ItemView]: boolean } = {}
		local retained = 0
		local reassigned = 0
		local acquired = 0

		for index, desired in nextSnapshot.entries do
			assert(desiredByKey[desired.key] == nil, `Virtualizer: duplicate key "{desired.key}"`)
			desiredByKey[desired.key] = desired
			local existing = entryByKey[desired.key]
			if existing ~= nil and existing.itemViewType == desired.recyclableViewType then
				nextEntries[index] = existing
			else
				table.insert(pendingIndices, index)
			end
		end

		for _, existing in entriesInOrder do
			local desired = desiredByKey[existing.assignment.key]
			if desired == nil or existing.itemViewType ~= desired.recyclableViewType then
				local released = releasedByType[existing.itemViewType]
				if released == nil then
					released = {}
					releasedByType[existing.itemViewType] = released
				end
				table.insert(released, existing)
			end
		end

		for _, desiredIndex in pendingIndices do
			local desired = nextSnapshot.entries[desiredIndex]
			local released = releasedByType[desired.recyclableViewType]
			local direct = if released == nil then nil else table.remove(released)
			if direct ~= nil then
				direct.assignment = makeAssignment(desired)
				direct.desired = desired
				nextEntries[desiredIndex] = direct
				reassigned += 1
			else
				table.insert(requestIndices, desiredIndex)
				table.insert(requests, { viewType = desired.recyclableViewType })
			end
		end

		for _, released in releasedByType do
			for _, existing in released do
				table.insert(releases, {
					view = existing.itemView,
					leaseToken = existing.leaseToken,
				})
			end
		end

		local exchange = if #releases == 0 and #requests == 0
			then { acquired = {}, releasedCount = 0 }
			else scope.exchange(owner, releases, requests)
		for index, desiredIndex in requestIndices do
			local desired = nextSnapshot.entries[desiredIndex]
			local lease = exchange.acquired[index]
			local entry = {
				itemView = lease.view,
				itemViewType = desired.recyclableViewType,
				leaseToken = lease.leaseToken,
				assignment = makeAssignment(desired),
				desired = desired,
			}
			nextEntries[desiredIndex] = entry
			acquired += 1
		end

		local nextByKey = {}
		local nextByItemView = {}
		for index, desired in nextSnapshot.entries do
			local entry = nextEntries[index] :: MountedEntry<ItemView, T, ItemViewType>
			local previousDesired = entry.desired
			if entryByKey[desired.key] == entry then
				if assignmentChanged(previousDesired, desired) then
					entry.assignment = makeAssignment(desired)
					table.insert(transitions, { itemView = entry.itemView, assignment = entry.assignment })
					reassigned += 1
				else
					retained += 1
				end
				if previousDesired ~= desired or restateAllPlacements then
					placementChanged[entry.itemView] = true
				end
				entry.desired = desired
			else
				table.insert(transitions, { itemView = entry.itemView, assignment = entry.assignment })
			end
			nextByKey[entry.assignment.key] = entry
			nextByItemView[entry.itemView] = entry
		end

		for _, existing in entriesInOrder do
			if nextByItemView[existing.itemView] == nil then
				table.insert(transitions, { itemView = existing.itemView, assignment = nil })
			end
		end

		table.clear(entriesInOrder)
		for index = 1, #nextSnapshot.entries do
			entriesInOrder[index] = nextEntries[index] :: MountedEntry<ItemView, T, ItemViewType>
		end
		entryByKey = nextByKey
		entryByItemView = nextByItemView
		currentSnapshot = nextSnapshot
		publish(transitions, placementChanged)

		return {
			kind = Diagnostics.EventKind.ItemViewsSynchronized,
			retained = retained,
			reassigned = reassigned,
			acquired = acquired,
			released = exchange.releasedCount,
		}
	end

	local function applyPlacements(
		nextSnapshot: VirtualizerSnapshot.Snapshot<T, ItemViewType>,
		restateAllPlacements: boolean
	)
		local placementChanged: { [ItemView]: boolean } = {}
		for index, desired in nextSnapshot.entries do
			local entry = entriesInOrder[index] :: MountedEntry<ItemView, T, ItemViewType>
			if entry.desired ~= desired or restateAllPlacements then
				entry.desired = desired
				placementChanged[entry.itemView] = true
			end
		end
		currentSnapshot = nextSnapshot
		publish({}, placementChanged)
	end

	local function releaseAll()
		local releases = table.create(#entriesInOrder)
		local transitions = table.create(#entriesInOrder)
		for _, entry in entriesInOrder do
			table.insert(releases, { view = entry.itemView, leaseToken = entry.leaseToken })
			table.insert(transitions, { itemView = entry.itemView, assignment = nil })
		end
		if #releases > 0 then
			scope.exchange(owner, releases, {})
		end
		table.clear(entriesInOrder)
		table.clear(entryByKey)
		table.clear(entryByItemView)
		currentSnapshot = nil
		publish(transitions, {})
	end

	return {
		apply = function(_previousSnapshot, nextSnapshot, change)
			if destroyed then
				return {}
			end
			if nextSnapshot == nil then
				scope.batch(releaseAll)
				return {}
			end
			local restateAllPlacements = insetChanged(nextSnapshot)
			if currentSnapshot ~= nil and not change.assignmentsChanged then
				if change.placementChanged or restateAllPlacements then
					scope.batch(function()
						applyPlacements(nextSnapshot, restateAllPlacements)
					end)
				else
					currentSnapshot = nextSnapshot
				end
				return {}
			end
			local diagnostic
			scope.batch(function()
				diagnostic = reconcile(nextSnapshot, restateAllPlacements)
			end)
			return { diagnostic :: Diagnostics.Event }
		end,
		destroy = function()
			if not destroyed then
				scope.batch(releaseAll)
				destroyed = true
				table.clear(placementSubscribers)
			end
		end,
		getItemViews = function()
			local result = table.create(#entriesInOrder)
			for index, entry in entriesInOrder do
				result[index] = entry.itemView
			end
			return result
		end,
		getSnapshot = function()
			return currentSnapshot
		end,
		resolvePlacementIntent = resolvePlacementIntent,
		onPlacementIntentChanged = function(itemView, callback)
			assert(
				placementSubscribers[itemView] == nil,
				"Virtualizer: ItemView already has a Placement-intent subscriber"
			)
			placementSubscribers[itemView] = callback
			return function()
				if placementSubscribers[itemView] == callback then
					placementSubscribers[itemView] = nil
				end
			end
		end,
		validateMeasurements = function(measurements)
			local accepted = {}
			local dropped = 0
			for _, measurement in measurements do
				local entry = entryByKey[measurement.itemKey]
				if
					entry ~= nil
					and entry.assignment.index == measurement.itemIndex
					and entry.assignment.generation == measurement.assignmentGeneration
					and entry.desired.measurementIdentity.itemRevision == measurement.itemRevision
					and entry.desired.measurementIdentity.pinnedPosition == measurement.pinnedPosition
					and scope.isLeaseCurrent(owner, entry.itemView, entry.leaseToken)
				then
					table.insert(accepted, {
						itemIndex = entry.assignment.index,
						itemKey = entry.assignment.key,
						itemRevision = measurement.itemRevision,
						pinnedPosition = measurement.pinnedPosition,
						length = measurement.length,
					})
				else
					dropped += 1
				end
			end
			return accepted, dropped
		end,
	}
end

return createListPresentation
