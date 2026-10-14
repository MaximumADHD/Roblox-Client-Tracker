-- Owns one ScrollingFrame's Canvas: its size, its position, and the Canvas
-- origin that absorbs scroll corrections while the host is scrolling. It
-- attributes every observed offset to User scrolling or a Programmatic write.
local Root = script:FindFirstAncestor("ViewRecyclerRoblox")
local Core = require(Root.Parent.ViewRecycler)
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local ScrollHostLifecyclePhase = require(Root.RobloxAdapter.ScrollHostLifecyclePhase)
local axisMap = require(Root.RobloxAdapter.axisMap)

local IDLE_HEARTBEATS_BEFORE_REBASE = 2
local SCROLL_BOUNDARY_EPSILON = 0.5
local SCROLL_VELOCITY_EPSILON = 0.5

export type Configuration<T> = {
	axis: Core.Axis,
	onStartReached: (() -> ())?,
	onEndReached: (() -> ())?,
	onViewportChanged: ((size: Vector2) -> ())?,
	onScrollOffsetChanged: ((offset: number) -> ())?,
	onContentLengthChanged: ((contentLength: number) -> ())?,
}

export type Options<ItemView, T, ItemViewType> = {
	observeScrollOffset: (Core.ScrollObservation) -> Core.VirtualizerRecord<ItemView, T>,
	setViewportSize: (number, number) -> Core.VirtualizerRecord<ItemView, T>,
	getCurrent: () -> Core.VirtualizerRecord<ItemView, T>,
	getInstance: () -> ScrollingFrame?,
	getConfiguration: () -> Configuration<T>,
	-- Placed Hosts must move to the current Canvas origin.
	onCanvasOriginMoved: (() -> ())?,
}

export type ScrollHost = {
	connect: () -> () -> (),
	scrollingFrameChanged: () -> (),
	configurationChanged: () -> (),
	-- Applies one Virtualizer record. `present` places the record's changed
	-- ItemViews after the Canvas origin for this record is final.
	applyRecord: (record: Core.VirtualizerRecord<any, any>, present: () -> ()) -> (),
	getCanvasOriginOffset: () -> number,
	isReady: () -> boolean,
}

type HostViewportState = {
	scrollOffset: number,
	viewportLength: number,
	crossAxisLength: number,
}

type LifecyclePhase = ScrollHostLifecyclePhase.ScrollHostLifecyclePhase

local ScrollHost = {}

local function normalizeScrollOffset(scrollOffset: number, viewportLength: number, contentLength: number): number
	return math.clamp(scrollOffset, 0, math.max(0, contentLength - viewportLength))
end

function ScrollHost.new<ItemView, T, ItemViewType>(options: Options<ItemView, T, ItemViewType>): ScrollHost
	local getCurrent = options.getCurrent
	local configuration = options.getConfiguration()
	local configuredAxis = configuration.axis
	local lifecyclePhase: LifecyclePhase = ScrollHostLifecyclePhase.Disconnected
	local connectionGeneration = 0
	local connectedHost: ScrollingFrame? = nil
	local hostConnections: { RBXScriptConnection } = {}
	local hostMutationDepth = 0
	local expectedHostWriteOffset: number? = nil
	local lastObservedLogicalOffset: number? = nil
	local lastNotifiedLogicalOffset: number? = nil
	local canvasOriginOffset = 0
	local idleHeartbeatCount = 0
	local idleConnection: RBXScriptConnection? = nil
	local activePointerInputs: { [InputObject]: true } = {}
	local hostScrollObservedSinceIdleCheck = false
	local publishedCanvasHost: ScrollingFrame? = nil
	local publishedCanvasAxis: Core.Axis? = nil
	local publishedCanvasLength: number? = nil

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
		options.observeScrollOffset({
			kind = kind,
			offset = offset,
		})
	end

	local function getLogicalScrollOffset(state: HostViewportState): number
		return normalizeScrollOffset(
			state.scrollOffset - canvasOriginOffset,
			state.viewportLength,
			getCurrent().contentLength
		)
	end

	local function notifyLogicalScrollOffset(logicalOffset: number)
		local callback = configuration.onScrollOffsetChanged
		if callback ~= nil and logicalOffset ~= lastNotifiedLogicalOffset then
			callback(logicalOffset)
			lastNotifiedLogicalOffset = logicalOffset
		end
	end

	local function setCanvasOriginOffset(offset: number, reposition: boolean?)
		if canvasOriginOffset == offset then
			return
		end
		canvasOriginOffset = offset
		local callback = options.onCanvasOriginMoved
		if callback ~= nil and reposition ~= false then
			callback()
		end
	end

	local function reportHostWrite(state: HostViewportState)
		local logicalOffset = getLogicalScrollOffset(state)
		observeHostOffset(Core.ScrollObservationKind.Programmatic, logicalOffset)
		-- A property-change notification may be delivered after the assignment
		-- returns. Retain only the sampled result, never the requested offset, so
		-- a clamped write is attributed without reconstructing host bounds.
		expectedHostWriteOffset = state.scrollOffset
		lastObservedLogicalOffset = logicalOffset
	end

	local function publishCanvas()
		local contentLength = math.max(0, getCurrent().contentLength + canvasOriginOffset)
		local instance = options.getInstance()
		if instance ~= nil then
			local sameCanvas = publishedCanvasHost == instance and publishedCanvasAxis == configuration.axis
			local previousLength = if sameCanvas then publishedCanvasLength else nil
			if previousLength == contentLength then
				return contentLength
			elseif lifecyclePhase ~= ScrollHostLifecyclePhase.Synchronized or previousLength == nil then
				instance.CanvasSize = axisMap.canvasSizeFor(contentLength, configuration.axis)
			elseif contentLength >= previousLength then
				-- Growing the Canvas cannot clamp CanvasPosition. Avoid sampling
				-- AbsoluteWindowSize, which would synchronously flush UI layout.
				hostMutationDepth += 1
				instance.CanvasSize = axisMap.canvasSizeFor(contentLength, configuration.axis)
				hostMutationDepth -= 1
			else
				-- Sample window size before CanvasSize. Reading AbsoluteWindowSize
				-- after that write forces a synchronous layout flush. If the new
				-- Canvas is shorter, apply the host's clamp inside this mutation.
				local before = getViewportState(instance)
				hostMutationDepth += 1
				instance.CanvasSize = axisMap.canvasSizeFor(contentLength, configuration.axis)
				if before ~= nil then
					local clampedOffset =
						math.clamp(before.scrollOffset, 0, math.max(0, contentLength - before.viewportLength))
					if clampedOffset ~= before.scrollOffset then
						setHostScrollOffset(clampedOffset)
						reportHostWrite({
							scrollOffset = clampedOffset,
							viewportLength = before.viewportLength,
							crossAxisLength = before.crossAxisLength,
						})
					end
				end
				hostMutationDepth -= 1
			end
			publishedCanvasHost = instance
			publishedCanvasAxis = configuration.axis
			publishedCanvasLength = contentLength
		end
		return contentLength
	end

	local function applyProgrammaticScrollOffset(offset: number)
		if lifecyclePhase ~= ScrollHostLifecyclePhase.Synchronized then
			return
		end
		assert(offset == offset and offset ~= math.huge and offset ~= -math.huge, "ScrollHost: invalid offset")
		hostMutationDepth += 1
		setHostScrollOffset(offset)
		local frame = resolveInstance(nil)
		local state = getViewportState(frame)
		-- Roblox applies CanvasPosition synchronously, including host clamping.
		-- Report the sampled result once; Core owns the resulting reconciliation.
		if state ~= nil then
			reportHostWrite(state)
		end
		hostMutationDepth -= 1
	end

	local function stopIdleObservation()
		if idleConnection ~= nil then
			idleConnection:Disconnect()
			idleConnection = nil
		end
		idleHeartbeatCount = 0
	end

	local function getScrollVelocity(frame: ScrollingFrame): number
		return axisMap.mainOf(frame:GetScrollVelocity(), configuration.axis)
	end

	local function isHostScrolling(): boolean
		if next(activePointerInputs) ~= nil then
			return true
		end
		local frame = resolveInstance(nil)
		if frame == nil then
			return false
		end
		if math.abs(getScrollVelocity(frame)) >= SCROLL_VELOCITY_EPSILON then
			return true
		end
		return hostScrollObservedSinceIdleCheck
	end

	local function isAtLeadingScrollBoundary(): boolean
		local frame = resolveInstance(nil)
		return frame ~= nil and axisMap.mainOf(frame.CanvasPosition, configuration.axis) <= SCROLL_BOUNDARY_EPSILON
	end

	local function settleCanvasOriginOffset(targetLogicalOffset: number?)
		if canvasOriginOffset == 0 then
			stopIdleObservation()
			return
		end
		local state = getViewportState(nil)
		if state == nil then
			return
		end
		local logicalOffset = targetLogicalOffset or getLogicalScrollOffset(state)
		setCanvasOriginOffset(0)
		publishCanvas()
		applyProgrammaticScrollOffset(logicalOffset)
		notifyLogicalScrollOffset(logicalOffset)
		stopIdleObservation()
	end

	local function observeUntilIdle()
		if idleConnection ~= nil or canvasOriginOffset == 0 then
			return
		end
		idleConnection = RunService.Heartbeat:Connect(function()
			local hostScrollObserved = hostScrollObservedSinceIdleCheck
			hostScrollObservedSinceIdleCheck = false
			if hostScrollObserved then
				idleHeartbeatCount = 0
				return
			end
			if isHostScrolling() then
				idleHeartbeatCount = 0
				return
			end
			idleHeartbeatCount += 1
			if idleHeartbeatCount >= IDLE_HEARTBEATS_BEFORE_REBASE then
				settleCanvasOriginOffset(nil)
			end
		end)
	end

	local function disconnectHost()
		stopIdleObservation()
		for _, connection in hostConnections do
			connection:Disconnect()
		end
		table.clear(hostConnections)
		table.clear(activePointerInputs)
		connectedHost = nil
		publishedCanvasHost = nil
		publishedCanvasAxis = nil
		publishedCanvasLength = nil
		expectedHostWriteOffset = nil
		lastObservedLogicalOffset = nil
		lastNotifiedLogicalOffset = nil
		hostScrollObservedSinceIdleCheck = false
		setCanvasOriginOffset(0)
	end

	local function synchronizeViewport(instance: ScrollingFrame)
		if lifecyclePhase ~= ScrollHostLifecyclePhase.Synchronized then
			return
		end
		local state = getViewportState(instance)
		if state == nil then
			return
		end
		options.setViewportSize(state.viewportLength, state.crossAxisLength)
		local refreshedState = getViewportState(instance)
		if refreshedState ~= nil then
			state = refreshedState
		end
		reportHostWrite(state)
		local callback = configuration.onViewportChanged
		if callback ~= nil then
			callback(instance.AbsoluteWindowSize)
		end
	end

	local function synchronizeScrollOffset(instance: ScrollingFrame, observedFromHost: boolean?)
		if lifecyclePhase ~= ScrollHostLifecyclePhase.Synchronized then
			return
		end
		local state = getViewportState(instance)
		if state == nil then
			return
		end
		local logicalOffset = getLogicalScrollOffset(state)
		local isUserScroll = hostMutationDepth == 0
		if isUserScroll and expectedHostWriteOffset ~= nil then
			local expectedOffset = expectedHostWriteOffset :: number
			if math.abs(state.scrollOffset - expectedOffset) < 0.5 then
				isUserScroll = false
			else
				expectedHostWriteOffset = nil
			end
		end
		if isUserScroll and logicalOffset ~= lastObservedLogicalOffset then
			observeHostOffset(Core.ScrollObservationKind.User, logicalOffset)
			lastObservedLogicalOffset = logicalOffset
		end
		if isUserScroll and observedFromHost == true then
			-- Any host-originated offset that survived Programmatic-write
			-- attribution is User scrolling. The idle observer consumes this
			-- latch itself so callback registration order cannot erase activity.
			hostScrollObservedSinceIdleCheck = true
		end
		if isUserScroll and canvasOriginOffset ~= 0 then
			idleHeartbeatCount = 0
			if state.scrollOffset <= SCROLL_BOUNDARY_EPSILON then
				settleCanvasOriginOffset(nil)
			end
		end
		notifyLogicalScrollOffset(logicalOffset)
	end

	local function isPointerInput(input: InputObject): boolean
		return input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1
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
				synchronizeScrollOffset(instance, true)
			end)
		)
		table.insert(
			hostConnections,
			instance.InputBegan:Connect(function(input)
				if isPointerInput(input) then
					activePointerInputs[input] = true
				end
			end)
		)
		table.insert(
			hostConnections,
			instance.InputEnded:Connect(function(input)
				activePointerInputs[input] = nil
			end)
		)
		table.insert(
			hostConnections,
			UserInputService.InputEnded:Connect(function(input)
				activePointerInputs[input] = nil
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
		local axisChanged = nextConfiguration.axis ~= configuredAxis
		configuredAxis = nextConfiguration.axis
		if lifecyclePhase ~= ScrollHostLifecyclePhase.Disconnected and axisChanged then
			local instance = options.getInstance()
			if instance ~= nil then
				publishCanvas()
				synchronizeViewport(instance)
				synchronizeScrollOffset(instance)
			end
		end
	end

	local function connect(): () -> ()
		assert(lifecyclePhase == ScrollHostLifecyclePhase.Disconnected, "ScrollHost: already connected")
		connectionGeneration += 1
		local generation = connectionGeneration
		sampleConfiguration()
		configuredAxis = configuration.axis
		lifecyclePhase = ScrollHostLifecyclePhase.Priming
		connectHost(options.getInstance())
		local succeeded, failure = pcall(function()
			lifecyclePhase = ScrollHostLifecyclePhase.Synchronized
			publishCanvas()
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

	local function applyRecord(record: Core.VirtualizerRecord<any, any>, present: () -> ())
		if lifecyclePhase == ScrollHostLifecyclePhase.Disconnected then
			present()
			return
		end
		sampleConfiguration()
		local correction = record.scrollCorrection
		local finalScrollOffset = if record.scrollPositionChanged then record.scrollState.scrollOffset else nil
		-- While the host scrolls, a correction moves the Canvas origin instead
		-- of CanvasPosition. The origin moves before presentation so changed
		-- ItemViews are placed once, at their final position.
		local deferCorrection = correction ~= 0
			and record.scrollPositionFollowsCorrection
			and (canvasOriginOffset ~= 0 or isHostScrolling())
			and not isAtLeadingScrollBoundary()

		if deferCorrection then
			setCanvasOriginOffset(canvasOriginOffset - correction, false)
			present()
			-- Unchanged ItemViews still sit at the previous origin.
			if options.onCanvasOriginMoved ~= nil then
				options.onCanvasOriginMoved()
			end
			publishCanvas()
			idleHeartbeatCount = 0
			observeUntilIdle()
			if finalScrollOffset ~= nil then
				lastObservedLogicalOffset = finalScrollOffset
				notifyLogicalScrollOffset(finalScrollOffset)
			end
		else
			present()
			if canvasOriginOffset ~= 0 then
				settleCanvasOriginOffset(finalScrollOffset)
			else
				if record.scrollPositionChanged or record.contentLengthChanged then
					publishCanvas()
				end
				if finalScrollOffset ~= nil then
					applyProgrammaticScrollOffset(finalScrollOffset)
				end
			end
		end
		if record.contentLengthChanged then
			local callback = configuration.onContentLengthChanged
			if callback ~= nil then
				callback(record.contentLength)
			end
		end
		-- Application notifications observe the committed host mutation.
		if record.startReached and configuration.onStartReached ~= nil then
			configuration.onStartReached()
		end
		if record.endReached and configuration.onEndReached ~= nil then
			configuration.onEndReached()
		end
	end

	return {
		connect = connect,
		scrollingFrameChanged = scrollingFrameChanged,
		configurationChanged = configurationChanged,
		applyRecord = applyRecord,
		getCanvasOriginOffset = function()
			return canvasOriginOffset
		end,
		isReady = function()
			sampleConfiguration()
			return getViewportState(nil) ~= nil
		end,
	}
end

return ScrollHost
