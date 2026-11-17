local FFlagViewRecyclerReact084 =
	require(script:FindFirstAncestor("ViewRecyclerRoblox").Flags).FFlagViewRecyclerReact084
local FFlagViewRecyclerReact08 = require(script:FindFirstAncestor("ViewRecyclerRoblox").Flags).FFlagViewRecyclerReact08
local Root = script:FindFirstAncestor("ViewRecyclerRoblox")
local Core = require(Root.Parent.ViewRecycler)

local AbsolutePlacement = require(Root.RobloxAdapter.AbsolutePlacement)
local CanvasItemPlacer = require(Root.RobloxAdapter.CanvasItemPlacer)
local HostMeasurement = require(Root.RobloxAdapter.HostMeasurement)
local HostPresentationPhase = require(Root.RobloxAdapter.HostPresentationPhase)
local ReparentableHost = require(Root.RobloxAdapter.ReparentableHost)
local StackPlacement = require(Root.RobloxAdapter.StackPlacement)

local VacantHosts = require(Root.RobloxAdapter.VacantHosts)
export type Configuration = {
	container: Instance?,
	viewportContainer: Instance?,
	axis: Core.Axis,
	selfSizing: boolean,
	-- Present for a Stacked layout: Item Hosts stack
	-- under a UIListLayout with this spacing instead of absolute positions.
	stackedSpacing: number?,
}
export type PhysicalState<T> = {
	host: GuiObject,
	phase: HostPresentationPhase.HostPresentationPhase,
	state: Core.ViewState<T>,
}
export type Options<ItemView, T> = {
	container: Instance?,
	viewportContainer: Instance?,
	axis: Core.Axis,
	selfSizing: boolean,
	stackedSpacing: number?,
	onItemMeasurements: ({ Core.ItemViewMeasurement<ItemView, T> }) -> (),
	onItemViewPresentationChanged: ((itemView: ItemView, assignment: Core.Assignment<T>?) -> ())?,
	-- The Canvas origin that Canvas-relative placements are offset by.
	getCanvasOriginOffset: (() -> number)?,
	-- The Recycling scope's. A Host this placement stops placing is left
	-- there, hidden, and evacuated when its container is replaced or the
	-- placement is destroyed.
	vacantHosts: VacantHosts.VacantHosts,
}
export type HostPlacement<ItemView, T> = {
	apply: (itemView: ItemView, state: PhysicalState<T>?) -> (),
	setConfiguration: (configuration: Configuration) -> (),
	-- Moves placed Canvas-relative Hosts to the current Canvas origin.
	reposition: () -> (),
	-- Sets the Mounted window that Stacked placement holds space for, then
	-- runs `present`, which applies the record's changed ItemViews.
	setMountedWindow: (record: Core.VirtualizerRecord<ItemView, T>, present: () -> ()) -> (),
	cancelPendingMeasurements: () -> (),
	-- Whether destroying a container also destroyed a placed Host.
	hasDestroyedHost: () -> boolean,
	getTrackedItemViewCount: () -> number,
	-- Diagnostics for the pre-paint measurement pass.
	isPrePaintPassConnected: () -> boolean,
	getPrePaintReadCount: () -> number,
	destroy: () -> (),
}

type Entry<T> = {
	placerState: CanvasItemPlacer.State,
	host: GuiObject?,
	physicalState: PhysicalState<T>?,
	presentedAssignment: Core.Assignment<T>?,
	-- Set while HostMeasurement measures the Host.
	measuring: boolean,
	-- A measured Host outside the stack, as of the last pre-paint check.
	checkedSize: Vector2?,
}

local HostPlacement = {}

local function zero()
	return 0
end

function HostPlacement.new<ItemView, T>(options: Options<ItemView, T>): HostPlacement<ItemView, T>
	local configuration = {
		container = options.container,
		viewportContainer = options.viewportContainer,
		axis = options.axis,
		selfSizing = options.selfSizing,
		stackedSpacing = options.stackedSpacing,
	}
	local entries: { [ItemView]: Entry<T> } = {}
	local stack: StackPlacement.StackPlacement? = nil
	local lastRecord: Core.VirtualizerRecord<ItemView, T>? = nil
	local presentingWindow = false
	local trackedItemViewCount = 0
	local destroyed = false
	local getCanvasOriginOffset = options.getCanvasOriginOffset or zero

	local vacantHosts
	if FFlagViewRecyclerReact084 then
		vacantHosts = options.vacantHosts
	end
	local absolute = AbsolutePlacement.new(configuration.axis, configuration.selfSizing, getCanvasOriginOffset)

	local function commitStack()
		if stack ~= nil and not presentingWindow then
			stack.commit()
		end
	end

	-- An unchanged stack size proves no stacked Host resized; a Host outside
	-- the stack has no such aggregate, so its own size is compared.
	local function isUnchanged(): boolean
		local currentStack = stack
		local unchanged = currentStack == nil or not currentStack.takeChanged()
		for _, entry in entries do
			local host = entry.host
			if entry.measuring and host ~= nil and (currentStack == nil or not currentStack.isStacked(host)) then
				local size = host.AbsoluteSize
				if entry.checkedSize ~= size then
					entry.checkedSize = size
					unchanged = false
				end
			end
		end
		return unchanged
	end

	local measurement = HostMeasurement.new({
		axis = configuration.axis,
		isUnchanged = isUnchanged,
		onItemMeasurements = options.onItemMeasurements,
	})

	local function stopMeasuring(itemView: ItemView, entry: Entry<T>)
		entry.checkedSize = nil
		if entry.measuring then
			entry.measuring = false
			measurement.measure(itemView, nil, nil)
		end
	end

	local leaveHost, isContainer, detachHost
	if FFlagViewRecyclerReact084 then
		function leaveHost(itemView: ItemView, entry: Entry<T>)
			local host = entry.host
			if host ~= nil then
				if stack ~= nil then
					stack.remove(host)
				end
				CanvasItemPlacer.release(host, entry.placerState)
				absolute.remove(host)
				vacantHosts.leave(host)
				entry.host = nil
			end
			stopMeasuring(itemView, entry)
		end

		function isContainer(parent: Instance): boolean
			return parent == configuration.container
				or parent == configuration.viewportContainer
				or (stack ~= nil and stack.isStackFrame(parent))
		end
	else
		function detachHost(itemView: ItemView, entry: Entry<T>)
			local host = entry.host
			if host ~= nil then
				if stack ~= nil then
					stack.remove(host)
				end
				ReparentableHost.clearSelection(host)
				CanvasItemPlacer.detachForTransfer(host, entry.placerState)
				absolute.remove(host)
				entry.host = nil
			end
			stopMeasuring(itemView, entry)
		end
	end

	local function getEntry(itemView: ItemView): Entry<T>
		local entry = entries[itemView]
		if entry == nil then
			entry = {
				placerState = CanvasItemPlacer.createState(),
				host = nil,
				physicalState = nil,
				presentedAssignment = nil,
				measuring = false,
				checkedSize = nil,
			}
			entries[itemView] = entry
			trackedItemViewCount += 1
		end
		return entry
	end

	local function reportPresentation(itemView: ItemView, entry: Entry<T>, assignment: Core.Assignment<T>?)
		if entry.presentedAssignment == assignment then
			return
		end
		entry.presentedAssignment = assignment
		local callback = options.onItemViewPresentationChanged
		if callback ~= nil then
			callback(itemView, assignment)
		end
	end

	local function applyPhysical(itemView: ItemView, entry: Entry<T>)
		local physical = entry.physicalState
		if physical == nil then
			if FFlagViewRecyclerReact084 then
				leaveHost(itemView, entry)
			else
				detachHost(itemView, entry)
			end
			reportPresentation(itemView, entry, nil)
			return
		end
		local state = physical.state
		local host = physical.host
		if entry.host ~= nil and entry.host ~= host then
			if FFlagViewRecyclerReact084 then
				leaveHost(itemView, entry)
			else
				detachHost(itemView, entry)
			end
		end
		local useViewportContainer = (
			if FFlagViewRecyclerReact084
				then state.viewportPlacement ~= nil
				else (if FFlagViewRecyclerReact08
					then state.viewportPlacement ~= nil
					else state.viewportPlacement ~= nil and configuration.viewportContainer ~= nil)
		)
		local container = if useViewportContainer then configuration.viewportContainer else configuration.container
		if container == nil then
			if FFlagViewRecyclerReact084 then
				leaveHost(itemView, entry)
			else
				detachHost(itemView, entry)
			end
			reportPresentation(itemView, entry, nil)
			return
		end

		if FFlagViewRecyclerReact084 then
			vacantHosts.reclaim(host)
		end
		local currentStack = stack
		local visible
		if currentStack ~= nil and not useViewportContainer and StackPlacement.isPlacedFromLayoutOffsets(state) then
			visible = currentStack.place(host, entry.placerState, state, physical.phase)
			absolute.remove(host)
		else
			if currentStack ~= nil then
				currentStack.remove(host)
			end
			visible =
				absolute.place(host, entry.placerState, container, state, not useViewportContainer, physical.phase)
		end
		if not visible then
			ReparentableHost.clearSelection(host)
		end
		entry.host = host
		local presented = physical.phase == HostPresentationPhase.Presented
		local measurable = configuration.selfSizing or state.pinnedPosition ~= nil
		local measured = presented and measurable
		entry.measuring = measured
		if measurable and not presented then
			measurement.pause(itemView, host)
		else
			measurement.measure(itemView, host, if measured then state else nil)
		end
		reportPresentation(itemView, entry, if presented then state.assignment else nil)
	end

	-- Creates, replaces, or removes the stack to match the configuration.
	-- Callers re-apply every entry afterwards.
	local function syncStack()
		local container = configuration.container
		local spacing = configuration.stackedSpacing
		local current = stack
		local wanted = spacing ~= nil and container ~= nil
		if
			current ~= nil
			and wanted
			and current.matches(container :: Instance, configuration.axis, spacing :: number, configuration.selfSizing)
		then
			return
		end
		if current ~= nil then
			for itemView, entry in entries do
				if entry.host ~= nil and current.isStacked(entry.host) then
					if FFlagViewRecyclerReact084 then
						leaveHost(itemView, entry)
					else
						detachHost(itemView, entry)
					end
				end
			end
			current.destroy()
			stack = nil
		end
		if wanted then
			local nextStack = StackPlacement.new(
				container :: Instance,
				configuration.axis,
				spacing :: number,
				configuration.selfSizing
			)
			if lastRecord ~= nil then
				nextStack.setWindow(lastRecord, getCanvasOriginOffset())
			end
			stack = nextStack
		end
	end

	local function releaseEntryIfVacant(itemView: ItemView, entry: Entry<T>)
		if entry.physicalState == nil and entries[itemView] == entry then
			entries[itemView] = nil
			trackedItemViewCount -= 1
		end
	end

	syncStack()

	return {
		apply = function(itemView, state)
			assert(not destroyed, "HostPlacement: cannot apply physical state after destroy")
			local entry = getEntry(itemView)
			entry.physicalState = state
			applyPhysical(itemView, entry)
			releaseEntryIfVacant(itemView, entry)
			commitStack()
		end,
		setConfiguration = function(nextConfiguration)
			if not destroyed then
				if FFlagViewRecyclerReact084 then
					if
						nextConfiguration.container ~= configuration.container
						or nextConfiguration.viewportContainer ~= configuration.viewportContainer
					then
						vacantHosts.evacuate(isContainer)
					end
				end
				configuration = nextConfiguration
				measurement.setAxis(configuration.axis)
				absolute.setConfiguration(configuration.axis, configuration.selfSizing)
				syncStack()
				for itemView, entry in entries do
					applyPhysical(itemView, entry)
				end
				commitStack()
			end
		end,
		reposition = function()
			if destroyed then
				return
			end
			local origin = getCanvasOriginOffset()
			absolute.setOriginOffset(origin)
			if stack ~= nil then
				stack.setOriginOffset(origin)
			end
		end,
		setMountedWindow = function(record, present)
			if destroyed then
				present()
				return
			end
			lastRecord = record
			local currentStack = stack
			if currentStack == nil then
				present()
				return
			end
			currentStack.setWindow(record, getCanvasOriginOffset())
			presentingWindow = true
			local presented, failure = pcall(present)
			presentingWindow = false
			if stack == currentStack then
				local stale: { [GuiObject]: true } = {}
				for _, host in currentStack.getStaleHosts() do
					stale[host] = true
				end
				for itemView, entry in entries do
					if entry.host ~= nil and stale[entry.host] then
						applyPhysical(itemView, entry)
					end
				end
				currentStack.commit()
			end
			if not presented then
				error(failure, 0)
			end
		end,
		cancelPendingMeasurements = function()
			measurement.cancelPending()
		end,
		hasDestroyedHost = (
			if FFlagViewRecyclerReact084
				then function()
					-- Placing a Host parents it and nothing here unparents it, so a
					-- placed Host without a Parent was destroyed with its container.
					for _, entry in entries do
						if entry.host ~= nil and entry.host.Parent == nil then
							return true
						end
					end
					return false
				end
				else (
					if FFlagViewRecyclerReact08
						then function()
							-- Placing a Host parents it and only `detachHost` unparents it, so a
							-- placed Host without a Parent was destroyed with its container.
							for _, entry in entries do
								if entry.host ~= nil and entry.host.Parent == nil then
									return true
								end
							end
							return false
						end
						else nil
				)
		),
		getTrackedItemViewCount = function()
			return trackedItemViewCount
		end,
		isPrePaintPassConnected = function()
			return measurement.isPassConnected()
		end,
		getPrePaintReadCount = function()
			return measurement.getPassReadCount()
		end,
		destroy = function()
			if destroyed then
				return
			end
			destroyed = true
			measurement.destroy()
			for itemView, entry in entries do
				if FFlagViewRecyclerReact084 then
					leaveHost(itemView, entry)
				else
					detachHost(itemView, entry)
				end
			end

			if FFlagViewRecyclerReact084 then
				vacantHosts.evacuate(isContainer)
			end
			absolute.destroy()
			if stack ~= nil then
				stack.destroy()
				stack = nil
			end
			table.clear(entries)
			trackedItemViewCount = 0
		end,
	}
end

return HostPlacement
