-- Owns one ScrollingFrame's Canvas: its size, its position, and the Canvas
-- origin that absorbs scroll corrections while the host is scrolling. It
-- attributes every observed offset to User scrolling or a Programmatic write.
local FFlagViewRecyclerReact084 =
	require(script:FindFirstAncestor("ViewRecyclerRoblox").Flags).FFlagViewRecyclerReact084
local FFlagViewRecyclerReact08 = require(script:FindFirstAncestor("ViewRecyclerRoblox").Flags).FFlagViewRecyclerReact08
local Root = script:FindFirstAncestor("ViewRecyclerRoblox")
local Core = require(Root.Parent.ViewRecycler)
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local ScrollHostLifecyclePhase = require(Root.RobloxAdapter.ScrollHostLifecyclePhase)
local axisMap = require(Root.RobloxAdapter.axisMap)

local IDLE_HEARTBEATS_BEFORE_REBASE = 2
local RECENT_HOST_SCROLL_HEARTBEATS = 2
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
	stepAnimatedScroll: (deltaTime: number) -> Core.VirtualizerRecord<ItemView, T>,
	stopAnimatedScroll: () -> Core.VirtualizerRecord<ItemView, T>,
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

	local connectedHostCanvasSize: UDim2?
	if FFlagViewRecyclerReact084 then -- The connected ScrollingFrame's CanvasSize before the list wrote it, put
		-- back when the list lets go of that ScrollingFrame.
		connectedHostCanvasSize = nil
	else
		connectedHostCanvasSize = nil
		if FFlagViewRecyclerReact08 then -- The connected ScrollingFrame's CanvasSize before the list wrote it, put
			-- back when the list lets go of that ScrollingFrame.
			connectedHostCanvasSize = nil
		end
	end
	local hostConnections: { RBXScriptConnection } = {}
	local hostMutationDepth = 0
	local expectedHostWriteOffset: number? = nil
	local lastObservedLogicalOffset: number? = nil

	local lastSynchronizedHostOffset: number?
	if FFlagViewRecyclerReact084 then -- The host offset the list last synchronized, before the Canvas origin.
		lastSynchronizedHostOffset = nil
	end
	local lastNotifiedLogicalOffset: number? = nil
	local canvasOriginOffset = 0
	local idleHeartbeatCount = 0
	local idleConnection: RBXScriptConnection? = nil
	local activePointerInputs: { [InputObject]: true } = {}
	local recentHostScroll = false
	local heartbeatsSinceHostScroll = 0
	local recentHostScrollConnection: RBXScriptConnection? = nil
	local publishedCanvasHost: ScrollingFrame? = nil
	local publishedCanvasAxis: Core.Axis? = nil
	local publishedCanvasLength: number? = nil

	local publishedViewportLength: number?, animationConnection: RBXScriptConnection?
	if FFlagViewRecyclerReact084 then
		publishedViewportLength = nil
		-- Steps Core's Animated scroll while a record reports one running.
		animationConnection = nil
	end

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

		if FFlagViewRecyclerReact084 then
			lastSynchronizedHostOffset = state.scrollOffset
			notifyLogicalScrollOffset(logicalOffset)
		end
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

	local publishViewportSize
	if FFlagViewRecyclerReact084 then
		function publishViewportSize(state: HostViewportState)
			publishedViewportLength = state.viewportLength
			options.setViewportSize(state.viewportLength, state.crossAxisLength)
		end
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

	local function stopRecentHostScroll()
		recentHostScroll = false
		if recentHostScrollConnection ~= nil then
			recentHostScrollConnection:Disconnect()
			recentHostScrollConnection = nil
		end
	end

	local stopAnimationClock, syncAnimationClock, stopAnimation
	if FFlagViewRecyclerReact084 then
		function stopAnimationClock()
			if animationConnection ~= nil then
				animationConnection:Disconnect()
				animationConnection = nil
			end
		end

		function syncAnimationClock(record: Core.VirtualizerRecord<any, any>)
			if record.animatedScrollTarget == nil or lifecyclePhase ~= ScrollHostLifecyclePhase.Synchronized then
				stopAnimationClock()
			elseif animationConnection == nil then
				animationConnection = RunService.Heartbeat:Connect(function(deltaTime)
					options.stepAnimatedScroll(deltaTime)
				end)
			end
		end

		-- The reader taking hold of the host ends an Animated scroll where it is.
		function stopAnimation()
			if animationConnection ~= nil then
				options.stopAnimatedScroll()
			end
		end
	end

	-- A host scroll stays recent through the next Heartbeat, where
	-- Measurements may publish in any callback order.
	local function markRecentHostScroll()
		recentHostScroll = true
		heartbeatsSinceHostScroll = 0
		if recentHostScrollConnection == nil then
			recentHostScrollConnection = RunService.Heartbeat:Connect(function()
				heartbeatsSinceHostScroll += 1
				if heartbeatsSinceHostScroll >= RECENT_HOST_SCROLL_HEARTBEATS then
					stopRecentHostScroll()
				end
			end)
		end
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
		return recentHostScroll
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
		-- A positive origin shrinks the Canvas as it settles; shrinking first
		-- would clamp CanvasPosition at the old origin and report that offset.
		local canvasShrinks = canvasOriginOffset > 0
		setCanvasOriginOffset(0)
		if canvasShrinks then
			applyProgrammaticScrollOffset(logicalOffset)
			publishCanvas()
		else
			publishCanvas()
			applyProgrammaticScrollOffset(logicalOffset)
		end
		notifyLogicalScrollOffset(logicalOffset)
		stopIdleObservation()
	end

	local function observeUntilIdle()
		if idleConnection ~= nil or canvasOriginOffset == 0 then
			return
		end
		idleConnection = RunService.Heartbeat:Connect(function()
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
		if FFlagViewRecyclerReact084 then -- Without its clock, a motion would hold the Scroll anchor off its
			-- edges until the next scroll command. Its stopped record stops the
			-- clock.
			stopAnimation()
		end
		stopIdleObservation()
		stopRecentHostScroll()
		for _, connection in hostConnections do
			connection:Disconnect()
		end
		table.clear(hostConnections)
		table.clear(activePointerInputs)

		local host, canvasSize
		if FFlagViewRecyclerReact084 then
			host = connectedHost
			canvasSize = connectedHostCanvasSize
		else
			host, canvasSize = nil, nil
		end
		if if FFlagViewRecyclerReact084 then host ~= nil and canvasSize ~= nil else FFlagViewRecyclerReact08 then
			if FFlagViewRecyclerReact084 then
				host.CanvasSize = canvasSize
			else
				host = connectedHost
				canvasSize = connectedHostCanvasSize
				if host ~= nil and canvasSize ~= nil then
					host.CanvasSize = canvasSize
				end
				connectedHostCanvasSize = nil
			end
		end

		if FFlagViewRecyclerReact084 then
			connectedHostCanvasSize = nil
		end
		connectedHost = nil
		publishedCanvasHost = nil
		publishedCanvasAxis = nil
		publishedCanvasLength = nil

		if FFlagViewRecyclerReact084 then
			publishedViewportLength = nil
		end
		expectedHostWriteOffset = nil
		lastObservedLogicalOffset = nil

		if FFlagViewRecyclerReact084 then
			lastSynchronizedHostOffset = nil
		end
		lastNotifiedLogicalOffset = nil
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

		local refreshedState
		if FFlagViewRecyclerReact084 then
			publishViewportSize(state)
		else
			options.setViewportSize(state.viewportLength, state.crossAxisLength)

			refreshedState = nil
			if not FFlagViewRecyclerReact08 then
				refreshedState = getViewportState(instance)
			end
			-- With Immediate signals, a host write can flush layout before its
			-- CanvasPosition lands, so this sample may predate the write. The write
			-- reports its own result.
			if if FFlagViewRecyclerReact08 then hostMutationDepth == 0 else refreshedState ~= nil then
				if FFlagViewRecyclerReact08 then
					refreshedState = getViewportState(instance)
					if refreshedState ~= nil then
						state = refreshedState
					end
					reportHostWrite(state)
				else
					state = refreshedState
				end
			end
		end
		-- With Immediate signals, a host write can flush layout before its
		-- CanvasPosition lands, so this sample may predate the write. The write
		-- reports its own result.
		if if FFlagViewRecyclerReact084 then hostMutationDepth == 0 else not FFlagViewRecyclerReact08 then
			if FFlagViewRecyclerReact084 then
				refreshedState = getViewportState(instance)
				if refreshedState ~= nil then
					state = refreshedState
				end
			end
			reportHostWrite(state)
		end
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

		if FFlagViewRecyclerReact084 then
			lastSynchronizedHostOffset = state.scrollOffset
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

		local previousViewportLength
		if FFlagViewRecyclerReact084 then
			previousViewportLength = publishedViewportLength
			if isUserScroll and previousViewportLength ~= nil and state.viewportLength ~= previousViewportLength then
				-- A resize can move CanvasPosition before AbsoluteWindowSize
				-- notifies, so Core gets the new viewport before the offset. A
				-- growing window clamps the offset to the new maximum; that clamp
				-- belongs to the resize, and any other offset is still User scroll.
				local maximumOffset =
					math.max(0, axisMap.mainOf(instance.AbsoluteCanvasSize, configuration.axis) - state.viewportLength)
				local clampedByGrowth = state.viewportLength > previousViewportLength
					and math.abs(state.scrollOffset - maximumOffset) < SCROLL_BOUNDARY_EPSILON
				local userLogicalOffset = state.scrollOffset - canvasOriginOffset
				publishViewportSize(state)
				state = getViewportState(instance) or state
				if clampedByGrowth then
					reportHostWrite(state)
					isUserScroll = false
				elseif state.scrollOffset ~= userLogicalOffset + canvasOriginOffset then
					-- Core resized against its last offset, before this User
					-- scroll, and its record may have written CanvasPosition and
					-- settled the Canvas origin.
					hostMutationDepth += 1
					setHostScrollOffset(userLogicalOffset + canvasOriginOffset)
					hostMutationDepth -= 1
					state = getViewportState(instance) or state
					expectedHostWriteOffset = state.scrollOffset
				end
				logicalOffset = getLogicalScrollOffset(state)
			end
		end
		if isUserScroll and observedFromHost == true then
			-- Any host-originated offset that survived Programmatic-write
			-- attribution is User scrolling.
			markRecentHostScroll()
		end
		if isUserScroll and logicalOffset ~= lastObservedLogicalOffset then
			observeHostOffset(Core.ScrollObservationKind.User, logicalOffset)
			lastObservedLogicalOffset = logicalOffset
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

		if FFlagViewRecyclerReact084 then
			connectedHostCanvasSize = instance.CanvasSize
		else
			if FFlagViewRecyclerReact08 then
				connectedHostCanvasSize = instance.CanvasSize
			end
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
		-- Trackpad scrolling writes CanvasPosition after the bound render
		-- steps and delivers its change signal only after PreRender, so rows
		-- would trail the painted Canvas by a frame. RenderStepped connections
		-- see the write and run before every PreRender connection, including
		-- the Host measurement pass.
		table.insert(
			hostConnections,
			(if FFlagViewRecyclerReact084 then RunService.RenderStepped else instance.InputBegan):Connect(
				(
					if FFlagViewRecyclerReact084
						then function()
							if
								lifecyclePhase == ScrollHostLifecyclePhase.Synchronized
								and axisMap.mainOf(instance.CanvasPosition, configuration.axis)
									~= lastSynchronizedHostOffset
							then
								sampleConfiguration()
								synchronizeScrollOffset(instance, true)
							end
						end
						else function(input)
							if isPointerInput(input) then
								activePointerInputs[input] = true
							end
						end
				)
			)
		)

		if FFlagViewRecyclerReact084 then
			table.insert(
				hostConnections,
				instance.InputBegan:Connect(function(input)
					if isPointerInput(input) then
						activePointerInputs[input] = true
						stopAnimation()
					end
				end)
			)
			table.insert(
				hostConnections,
				instance.InputChanged:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseWheel then
						stopAnimation()
					end
				end)
			)
		end
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
		if FFlagViewRecyclerReact084 then
			syncAnimationClock(record)
		end
		if lifecyclePhase == ScrollHostLifecyclePhase.Disconnected then
			present()
			return
		end
		sampleConfiguration()
		local correction = record.scrollCorrection
		local finalScrollOffset = if record.scrollPositionChanged then record.scrollState.scrollOffset else nil
		local hostScrolling = (correction ~= 0 or canvasOriginOffset ~= 0) and isHostScrolling()
		-- While the host scrolls, a correction moves the Canvas origin instead
		-- of CanvasPosition. The origin moves before presentation so changed
		-- ItemViews are placed once, at their final position.
		local deferCorrection = correction ~= 0
			and record.scrollPositionFollowsCorrection
			and hostScrolling
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
			-- Settling writes CanvasPosition, which ends a touch fling. While
			-- the host scrolls, only a Programmatic target settles the origin;
			-- otherwise the idle observer settles it.
			if canvasOriginOffset ~= 0 and (finalScrollOffset ~= nil or not hostScrolling) then
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
