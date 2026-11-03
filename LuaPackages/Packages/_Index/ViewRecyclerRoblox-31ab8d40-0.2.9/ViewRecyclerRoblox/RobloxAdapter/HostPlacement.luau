local Root = script:FindFirstAncestor("ViewRecyclerRoblox")
local Core = require(Root.Parent.ViewRecycler)

local CanvasItemPlacer = require(Root.RobloxAdapter.CanvasItemPlacer)
local HostPresentationPhase = require(Root.RobloxAdapter.HostPresentationPhase)
local MeasurementBatcher = require(Root.RobloxAdapter.MeasurementBatcher)
local Measurer = require(Root.RobloxAdapter.Measurer)
local ReparentableHost = require(Root.RobloxAdapter.ReparentableHost)
local ShallowTable = Core.Adapter._Private.ShallowTable

local ASSIGNMENT_KEYS = table.freeze({ "key", "generation" })

export type Assignment<T> = Core.ItemAssignment<T>
export type Configuration = {
	container: Instance?,
	viewportContainer: Instance?,
	axis: Core.Axis,
	selfSizing: boolean,
}
export type PlacementIntent<T> = Core.PlacementIntent<T>
export type HostState<T> = {
	host: GuiObject?,
	assignment: Assignment<T>?,
	phase: HostPresentationPhase.HostPresentationPhase,
	visible: boolean,
}
export type Options<ItemView, T> = {
	container: Instance?,
	viewportContainer: Instance?,
	axis: Core.Axis,
	selfSizing: boolean,
	onItemMeasurements: ({ Core.ItemViewMeasurement }) -> (),
	onItemViewPresentationChanged: (itemView: ItemView, assignment: Assignment<T>?) -> (),
}
export type HostPlacement<ItemView, T> = {
	applyHostState: (itemView: ItemView, state: HostState<T>?) -> (),
	applyPlacementIntent: (itemView: ItemView, intent: PlacementIntent<T>?) -> (),
	setConfiguration: (configuration: Configuration) -> (),
	cancelPendingMeasurements: () -> (),
	destroy: () -> (),
}

type Entry<T> = {
	placerState: CanvasItemPlacer.State,
	geometry: CanvasItemPlacer.Geometry,
	host: GuiObject?,
	hostState: HostState<T>?,
	placementIntent: PlacementIntent<T>?,
	presentedGeneration: number?,
	measurer: Measurer.Measurer?,
	measurementIdentity: Core.MeasurementIdentity?,
}

local HostPlacement = {}

function HostPlacement.new<ItemView, T>(options: Options<ItemView, T>): HostPlacement<ItemView, T>
	local configuration = {
		container = options.container,
		viewportContainer = options.viewportContainer,
		axis = options.axis,
		selfSizing = options.selfSizing,
	}
	local entries: { [ItemView]: Entry<T> } = {}
	local measurementBatcher = MeasurementBatcher.new(options.onItemMeasurements)
	local destroyed = false

	local function disconnectMeasurer(entry: Entry<T>)
		if entry.measurer ~= nil then
			entry.measurer.disconnect()
			entry.measurer = nil
		end
	end

	local function detachHost(entry: Entry<T>)
		if entry.host ~= nil then
			ReparentableHost.clearSelection(entry.host)
			CanvasItemPlacer.detachForTransfer(entry.host, entry.placerState)
			entry.host = nil
		end
		disconnectMeasurer(entry)
		entry.measurementIdentity = nil
	end

	local function updateMeasurement(entry: Entry<T>, measurementIdentity: Core.MeasurementIdentity?)
		entry.measurementIdentity = measurementIdentity
		local shouldMeasure = measurementIdentity ~= nil
			and (configuration.selfSizing or measurementIdentity.pinnedPosition ~= nil)
		if not shouldMeasure then
			disconnectMeasurer(entry)
			return
		end
		if entry.measurer == nil then
			entry.measurer = Measurer.attach({
				instance = entry.host :: GuiObject,
				axis = configuration.axis,
				getIdentity = function()
					return entry.measurementIdentity
				end,
				onItemMeasured = function(identity, length)
					local measurement = table.clone(identity) :: any
					measurement.length = length
					measurementBatcher.add(measurement)
				end,
			})
		end
		entry.measurer.scheduleSettle()
	end

	local function getEntry(itemView: ItemView): Entry<T>
		local entry = entries[itemView]
		if entry == nil then
			entry = {
				placerState = CanvasItemPlacer.createState(),
				geometry = {} :: any,
				host = nil,
				hostState = nil,
				placementIntent = nil,
				presentedGeneration = nil,
				measurer = nil,
				measurementIdentity = nil,
			}
			entries[itemView] = entry
		end
		return entry
	end

	local function reportPresentation(itemView: ItemView, entry: Entry<T>, assignment: Assignment<T>?)
		local generation = if assignment == nil then nil else assignment.generation
		if entry.presentedGeneration == generation then
			return
		end
		local previousGeneration = entry.presentedGeneration
		entry.presentedGeneration = generation
		local ok, result = pcall(options.onItemViewPresentationChanged, itemView, assignment)
		if not ok then
			if entry.presentedGeneration == generation then
				entry.presentedGeneration = previousGeneration
			end
			error(result, 0)
		end
	end

	local function applyPhysical(itemView: ItemView, entry: Entry<T>)
		local state = entry.hostState
		local intent = entry.placementIntent
		if state == nil then
			detachHost(entry)
			reportPresentation(itemView, entry, nil)
			return
		end
		local assignment = state.assignment
		local host = state.host
		if assignment == nil or host == nil then
			detachHost(entry)
			reportPresentation(itemView, entry, nil)
			return
		end
		if intent == nil then
			return
		end
		local intentAssignment = intent.assignment
		if not ShallowTable.containsEqual(intentAssignment, assignment, ASSIGNMENT_KEYS) then
			-- A new imperative Assignment is hidden before publication while the
			-- previous generation's intent is still current.
			if not state.visible and entry.host ~= nil then
				ReparentableHost.clearSelection(entry.host)
				CanvasItemPlacer.hide(entry.host, entry.placerState)
				disconnectMeasurer(entry)
				entry.measurementIdentity = nil
				reportPresentation(itemView, entry, nil)
			end
			return
		end
		if entry.host ~= nil and entry.host ~= host then
			detachHost(entry)
		end
		local container = configuration.container
		local canvasPlacement = intent.canvasPlacement
		local viewportPlacement = intent.viewportPlacement
		local useViewportContainer = viewportPlacement ~= nil and configuration.viewportContainer ~= nil
		local placement = if useViewportContainer then viewportPlacement :: Core.ItemPlacement else canvasPlacement
		if useViewportContainer then
			container = configuration.viewportContainer
		end
		if container == nil then
			detachHost(entry)
			reportPresentation(itemView, entry, nil)
			return
		end
		local geometry = CanvasItemPlacer.getGeometry(
			intent.itemLayout,
			placement,
			configuration.axis,
			configuration.selfSizing or assignment.index == nil,
			if useViewportContainer then 0 else intent.contentStartOffset,
			entry.geometry
		)
		if not state.visible then
			ReparentableHost.clearSelection(host)
		end
		CanvasItemPlacer.place(host, container, geometry, entry.placerState, state.visible)
		entry.host = host
		local presented = state.visible and state.phase == HostPresentationPhase.Presented
		local measurementIdentity = intent.measurementIdentity
		updateMeasurement(
			entry,
			if presented and measurementIdentity ~= nil then table.clone(measurementIdentity) else nil
		)
		reportPresentation(itemView, entry, if presented then assignment else nil)
	end

	return {
		applyHostState = function(itemView, state)
			assert(not destroyed, "HostPlacement: cannot apply Host state after destroy")
			local entry = getEntry(itemView)
			entry.hostState = state
			applyPhysical(itemView, entry)
		end,
		applyPlacementIntent = function(itemView, intent)
			assert(not destroyed, "HostPlacement: cannot apply Placement intent after destroy")
			local entry = getEntry(itemView)
			entry.placementIntent = intent
			applyPhysical(itemView, entry)
		end,
		setConfiguration = function(nextConfiguration)
			if not destroyed then
				local measurementAxisChanged = configuration.axis ~= nextConfiguration.axis
				configuration = nextConfiguration
				for itemView, entry in entries do
					if measurementAxisChanged then
						disconnectMeasurer(entry)
					end
					applyPhysical(itemView, entry)
				end
			end
		end,
		cancelPendingMeasurements = function()
			measurementBatcher.cancelPending()
		end,
		destroy = function()
			if destroyed then
				return
			end
			destroyed = true
			measurementBatcher.destroy()
			for _, entry in entries do
				detachHost(entry)
			end
			table.clear(entries)
		end,
	}
end

return HostPlacement
