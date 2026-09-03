local Root = script:FindFirstAncestor("ViewRecyclerRoblox")
local Core = require(Root.Parent.ViewRecycler)

local ScrollHostLifecyclePhase = require(Root.RobloxAdapter.ScrollHostLifecyclePhase)
local axisMap = require(Root.RobloxAdapter.axisMap)

local createScrollPolicyCoordinator = Core.Adapter.ScrollPolicy.createCoordinator

export type Configuration<T> = {
	axis: Core.Axis,
	dataSource: Core.DataSource<T>,
	initialScrollAlignment: Core.ScrollAlignment?,
	autoScrollOnChange: any,
	startReachedThreshold: number?,
	onStartReached: (() -> ())?,
	onEndReached: (() -> ())?,
	onViewportChanged: ((size: Vector2) -> ())?,
	onScrollOffsetChanged: ((offset: number) -> ())?,
	onContentLengthChanged: ((contentLength: number) -> ())?,
}

export type Options<ItemView, T, ItemViewType> = {
	dispatch: (Core.VirtualizerCommand<T, ItemViewType>) -> Core.VirtualizerUpdate<T, ItemViewType>,
	getSnapshot: () -> Core.VirtualizerSnapshot<T, ItemViewType>,
	query: (Core.VirtualizerQuery<ItemView>) -> any,
	getInstance: () -> ScrollingFrame?,
	getConfiguration: () -> Configuration<T>,
}

export type ScrollingFrameSync = {
	connect: () -> () -> (),
	scrollingFrameChanged: () -> (),
	configurationChanged: () -> (),
	applyVirtualizerUpdate: (Core.VirtualizerSnapshot<any, any>, Core.VirtualizerUpdate<any, any>) -> (),
	isReady: () -> boolean,
}

type HostViewportState = {
	scrollOffset: number,
	viewportLength: number,
	crossAxisLength: number,
}

type LifecyclePhase = ScrollHostLifecyclePhase.ScrollHostLifecyclePhase

local ScrollingFrameSync = {}

function ScrollingFrameSync.new<ItemView, T, ItemViewType>(options: Options<ItemView, T, ItemViewType>): ScrollingFrameSync
	local dispatch = options.dispatch
	local getSnapshot = options.getSnapshot
	local query = options.query
	local configuration = options.getConfiguration()
	local configuredAxis = configuration.axis
	local configuredDataSource = configuration.dataSource
	local lifecyclePhase: LifecyclePhase = ScrollHostLifecyclePhase.Disconnected
	local connectionGeneration = 0
	local connectedHost: ScrollingFrame? = nil
	local hostConnections: { RBXScriptConnection } = {}
	local hostMutationDepth = 0
	local expectedHostWriteOffset: number? = nil

	local function sampleConfiguration(): Configuration<T>
		configuration = options.getConfiguration()
		return configuration
	end

	local function resolveInstance(instance: ScrollingFrame?): ScrollingFrame?
		return instance or options.getInstance()
	end

	local function getViewportState(instance: ScrollingFrame?): HostViewportState?
		local frame = resolveInstance(instance)
		if frame == nil then
			return nil
		end
		local axis = configuration.axis
		return {
			scrollOffset = axisMap.mainOf(frame.CanvasPosition, axis),
			viewportLength = axisMap.mainOf(frame.AbsoluteWindowSize, axis),
			crossAxisLength = axisMap.crossOf(frame.AbsoluteWindowSize, axis),
		}
	end

	local function setHostScrollOffset(offset: number): boolean
		local frame = resolveInstance(nil)
		if frame == nil then
			return false
		end
		local position = frame.CanvasPosition
		frame.CanvasPosition = if configuration.axis == Core.Axis.X
			then Vector2.new(offset, position.Y)
			else Vector2.new(position.X, offset)
		return true
	end

	local function observeHostOffset(kind: Core.ScrollObservationKind, offset: number)
		dispatch({
			type = Core.VirtualizerCommandType.ObserveScrollOffset,
			observation = {
				kind = kind,
				offset = offset,
			},
		})
	end

	local function reportHostWrite(offset: number)
		observeHostOffset(Core.ScrollObservationKind.Programmatic, offset)
		-- A property-change notification may be delivered after the assignment
		-- returns. Retain only the sampled result, never the requested offset, so
		-- a clamped write is attributed without reconstructing host bounds.
		expectedHostWriteOffset = offset
	end

	local policy = createScrollPolicyCoordinator({
		getItemCount = function()
			return configuration.dataSource.getItemCount()
		end,
		getScrollState = function()
			return query({ type = Core.VirtualizerQueryType.GetScrollState })
		end,
		getScrollOffsetForItem = function(index, alignment)
			return query({
				type = Core.VirtualizerQueryType.GetScrollOffsetForItem,
				index = index,
				alignment = alignment,
			})
		end,
		applyScrollAnchorOffset = function(offset)
			return dispatch({ type = Core.VirtualizerCommandType.ApplyScrollAnchorOffset, offset = offset }).result
		end,
		getViewportState = getViewportState,
		getInitialScrollAlignment = function()
			return configuration.initialScrollAlignment
		end,
		getAutoScrollPolicy = function()
			return configuration.autoScrollOnChange
		end,
		getStartReachedThreshold = function()
			return configuration.startReachedThreshold
		end,
		getOnStartReached = function()
			return configuration.onStartReached
		end,
		getOnEndReached = function()
			return configuration.onEndReached
		end,
		onContentLengthChanged = function(contentLength)
			local callback = configuration.onContentLengthChanged
			if callback ~= nil then
				callback(contentLength)
			end
		end,
	})

	local function publishCanvas()
		local contentLength = getSnapshot().contentLength
		local instance = options.getInstance()
		if instance ~= nil then
			if lifecyclePhase ~= ScrollHostLifecyclePhase.Synchronized then
				instance.CanvasSize = axisMap.canvasSizeFor(contentLength, configuration.axis)
			else
				local before = getViewportState(instance)
				hostMutationDepth += 1
				instance.CanvasSize = axisMap.canvasSizeFor(contentLength, configuration.axis)
				local state = getViewportState(instance)
				if before ~= nil and state ~= nil and state.scrollOffset ~= before.scrollOffset then
					reportHostWrite(state.scrollOffset)
				end
				hostMutationDepth -= 1
			end
		end
		return contentLength
	end

	local function applyProgrammaticScrollOffset(offset: number)
		if lifecyclePhase ~= ScrollHostLifecyclePhase.Synchronized then
			return
		end
		assert(
			offset == offset and offset ~= math.huge and offset ~= -math.huge,
			"ScrollingFrameSync: invalid offset"
		)
		hostMutationDepth += 1
		setHostScrollOffset(offset)
		local frame = resolveInstance(nil)
		local state = getViewportState(frame)
		-- Roblox applies CanvasPosition synchronously, including host clamping.
		-- Report the sampled result once; Core owns the resulting reconciliation.
		if state ~= nil then
			reportHostWrite(state.scrollOffset)
		end
		hostMutationDepth -= 1
	end

	local function disconnectHost()
		for _, connection in hostConnections do
			connection:Disconnect()
		end
		table.clear(hostConnections)
		connectedHost = nil
		expectedHostWriteOffset = nil
	end

	local function synchronizeViewport(instance: ScrollingFrame)
		if lifecyclePhase ~= ScrollHostLifecyclePhase.Synchronized then
			return
		end
		local state = getViewportState(instance)
		if state == nil then
			return
		end
		dispatch({
			type = Core.VirtualizerCommandType.SetViewportSize,
			scrollAxisLength = state.viewportLength,
			crossAxisLength = state.crossAxisLength,
		})
		local refreshedState = getViewportState(instance)
		if refreshedState ~= nil then
			state = refreshedState
		end
		reportHostWrite(state.scrollOffset)
		policy.onViewportChanged()
		policy.checkEdges()
		local callback = configuration.onViewportChanged
		if callback ~= nil then
			callback(instance.AbsoluteWindowSize)
		end
	end

	local function synchronizeScrollOffset(instance: ScrollingFrame)
		if lifecyclePhase ~= ScrollHostLifecyclePhase.Synchronized then
			return
		end
		local state = getViewportState(instance)
		if state == nil then
			return
		end
		local isUserScroll = hostMutationDepth == 0
		if isUserScroll and expectedHostWriteOffset ~= nil then
			local expectedOffset = expectedHostWriteOffset :: number
			if math.abs(state.scrollOffset - expectedOffset) < 0.5 then
				isUserScroll = false
			else
				expectedHostWriteOffset = nil
			end
		end
		if isUserScroll then
			observeHostOffset(Core.ScrollObservationKind.User, state.scrollOffset)
			policy.onScrollOffsetChanged()
		end
		policy.checkEdges()
		local callback = configuration.onScrollOffsetChanged
		if callback ~= nil then
			callback(state.scrollOffset)
		end
	end

	local function connectHost(instance: ScrollingFrame?)
		if connectedHost == instance then
			return
		end
		disconnectHost()
		connectedHost = instance
		if instance == nil or typeof(instance) ~= "Instance" then
			return
		end
		table.insert(
			hostConnections,
			instance:GetPropertyChangedSignal("AbsoluteWindowSize"):Connect(function()
				sampleConfiguration()
				publishCanvas()
				synchronizeViewport(instance)
			end)
		)
		table.insert(
			hostConnections,
			instance:GetPropertyChangedSignal("CanvasPosition"):Connect(function()
				sampleConfiguration()
				synchronizeScrollOffset(instance)
			end)
		)
	end

	local function scrollingFrameChanged()
		if lifecyclePhase == ScrollHostLifecyclePhase.Disconnected then
			return
		end
		sampleConfiguration()
		local instance = options.getInstance()
		connectHost(instance)
		if instance ~= nil then
			publishCanvas()
			synchronizeViewport(instance)
			synchronizeScrollOffset(instance)
		end
	end

	local function configurationChanged()
		local nextConfiguration = sampleConfiguration()
		local dataSourceChanged = nextConfiguration.dataSource ~= configuredDataSource
		local axisChanged = nextConfiguration.axis ~= configuredAxis
		configuredDataSource = nextConfiguration.dataSource
		configuredAxis = nextConfiguration.axis
		if dataSourceChanged then
			policy.onDataSourceReplaced()
		end
		if lifecyclePhase ~= ScrollHostLifecyclePhase.Disconnected and axisChanged then
			local instance = options.getInstance()
			if instance ~= nil then
				publishCanvas()
				synchronizeViewport(instance)
				synchronizeScrollOffset(instance)
			end
		end
		if lifecyclePhase ~= ScrollHostLifecyclePhase.Disconnected then
			policy.checkEdges()
		end
	end

	local function connect(): () -> ()
		assert(lifecyclePhase == ScrollHostLifecyclePhase.Disconnected, "ScrollingFrameSync: already connected")
		connectionGeneration += 1
		local generation = connectionGeneration
		sampleConfiguration()
		configuredAxis = configuration.axis
		configuredDataSource = configuration.dataSource
		lifecyclePhase = ScrollHostLifecyclePhase.Priming
		connectHost(options.getInstance())
		local succeeded, failure = pcall(function()
			lifecyclePhase = ScrollHostLifecyclePhase.Synchronized
			policy.onContentLengthChanged(publishCanvas())
			local instance = options.getInstance()
			if instance ~= nil then
				synchronizeViewport(instance)
				synchronizeScrollOffset(instance)
			end
		end)
		if not succeeded then
			lifecyclePhase = ScrollHostLifecyclePhase.Disconnected
			disconnectHost()
			error(failure, 0)
		end
		local disconnected = false
		return function()
			if disconnected then
				return
			end
			disconnected = true
			if lifecyclePhase ~= ScrollHostLifecyclePhase.Disconnected and connectionGeneration == generation then
				lifecyclePhase = ScrollHostLifecyclePhase.Disconnected
				disconnectHost()
			end
		end
	end

	return {
		connect = connect,
		scrollingFrameChanged = scrollingFrameChanged,
		configurationChanged = configurationChanged,
		applyVirtualizerUpdate = function(previousSnapshot, update)
			if lifecyclePhase == ScrollHostLifecyclePhase.Disconnected then
				return
			end
			sampleConfiguration()
			if previousSnapshot.contentLength ~= update.snapshot.contentLength then
				policy.onContentLengthChanged(publishCanvas())
			end
			for _, effect in update.effects do
				if effect.type == Core.VirtualizerEffectType.ScrollPositionChanged then
					-- Publish current bounds before the synchronous host write.
					publishCanvas()
					applyProgrammaticScrollOffset(effect.offset)
				elseif effect.type == Core.VirtualizerEffectType.DataSourceChanged then
					policy.onDataSourceChanged(effect.changeBatch, effect.before)
				end
			end
		end,
		isReady = function()
			sampleConfiguration()
			return getViewportState(nil) ~= nil
		end,
	}
end

return ScrollingFrameSync
