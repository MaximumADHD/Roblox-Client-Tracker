local Root = script:FindFirstAncestor("ViewRecyclerRoblox")
local Core = require(Root.Parent.ViewRecycler)
local JestGlobals = require(Root.TestDependencies).JestGlobals

local ScrollingFrameSync = require(Root.RobloxAdapter.ScrollingFrameSync)

local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local function createVirtualizerStub(options)
	local applyVirtualizerUpdate = function(_previous, _update) end
	local function snapshot()
		return {
			contentLength = options.getContentLength(),
		}
	end
	local virtualizer = {
		getSnapshot = snapshot,
		dispatch = function(command)
			if command.type == Core.VirtualizerCommandType.SetViewportSize and options.setViewportSize ~= nil then
				options.setViewportSize(command.scrollAxisLength, command.crossAxisLength)
			elseif
				command.type == Core.VirtualizerCommandType.ObserveScrollOffset
				and options.observeScrollOffset ~= nil
			then
				options.observeScrollOffset(command.observation)
			end
			return { snapshot = snapshot(), result = command.offset, effects = {} }
		end,
		query = function(query)
			if query.type == Core.VirtualizerQueryType.GetScrollState then
				return {
					scrollOffset = 0,
					viewportLength = 100,
					contentLength = options.getContentLength(),
					distanceFromEnd = options.getContentLength(),
					atStart = true,
					atEnd = false,
				}
			elseif query.type == Core.VirtualizerQueryType.GetScrollOffsetForItem then
				return 0
			end
			return nil
		end,
	}
	return virtualizer :: any,
		function(offset)
			local current = snapshot()
			applyVirtualizerUpdate(current, {
				snapshot = current,
				effects = { { type = Core.VirtualizerEffectType.ScrollPositionChanged, offset = offset } },
			})
		end,
		function(callback)
			applyVirtualizerUpdate = callback
		end
end

local function createHostHarness()
	local frame = Instance.new("ScrollingFrame")
	frame.Size = UDim2.fromOffset(120, 80)
	frame.CanvasSize = UDim2.fromOffset(120, 160)
	frame.Parent = game:GetService("CoreGui")
	game:GetService("RunService").Heartbeat:Wait()
	frame.CanvasPosition = Vector2.new(7, 25)

	local contentLength = 160
	local viewportUpdates = {}
	local userOffsets = {}
	local reconciledOffsets = {}
	local observedOffsets = {}
	local onSetViewportSize = function() end
	local virtualizer, emitProgrammaticOffset, setApplyVirtualizerUpdate = createVirtualizerStub({
		getContentLength = function()
			return contentLength
		end,
		setViewportSize = function(main, cross)
			table.insert(viewportUpdates, { main, cross })
			onSetViewportSize()
		end,
		observeScrollOffset = function(observation)
			if observation.kind == "User" then
				table.insert(userOffsets, observation.offset)
			else
				table.insert(reconciledOffsets, observation.offset)
			end
		end,
	})
	local dataSource = Core.DataSource.snapshot({}, function(item)
		return item
	end)
	local sync = ScrollingFrameSync.new({
		dispatch = virtualizer.dispatch,
		getSnapshot = virtualizer.getSnapshot,
		query = virtualizer.query,
		getInstance = function()
			return frame
		end,
		getConfiguration = function()
			return {
				axis = Core.Axis.Y,
				dataSource = dataSource,
				initialScrollAlignment = nil,
				autoScrollOnChange = nil,
				startReachedThreshold = nil,
				onStartReached = nil,
				onEndReached = nil,
				onViewportChanged = nil,
				onScrollOffsetChanged = function(offset)
					table.insert(observedOffsets, offset)
				end,
				onContentLengthChanged = nil,
			}
		end,
	})
	setApplyVirtualizerUpdate(sync.applyVirtualizerUpdate)

	return {
		frame = frame,
		sync = sync,
		viewportUpdates = viewportUpdates,
		userOffsets = userOffsets,
		reconciledOffsets = reconciledOffsets,
		observedOffsets = observedOffsets,
		connect = sync.connect,
		emitProgrammaticOffset = emitProgrammaticOffset,
		setContentLength = function(nextContentLength)
			contentLength = nextContentLength
			sync.scrollingFrameChanged()
		end,
		setOnViewportSize = function(callback)
			onSetViewportSize = callback
		end,
		observeCurrentOffset = function()
			sync.scrollingFrameChanged()
		end,
		destroy = function()
			frame:Destroy()
		end,
	}
end

describe("ScrollingFrameSync", function()
	it("publishes the current Canvas before a Programmatic-scroll position write", function()
		local contentLength = 100
		local absoluteCanvasSize = Vector2.new(100, 100)
		local canvasPosition = Vector2.zero
		local writes = {}
		local frame
		frame = setmetatable({
			AbsoluteWindowSize = Vector2.new(100, 100),
		}, {
			__index = function(_, key)
				if key == "AbsoluteCanvasSize" then
					return absoluteCanvasSize
				elseif key == "CanvasPosition" then
					return canvasPosition
				end
				return nil
			end,
			__newindex = function(_, key, value)
				if key == "CanvasSize" then
					table.insert(writes, "canvas")
					absoluteCanvasSize = Vector2.new(value.X.Offset, value.Y.Offset)
				elseif key == "CanvasPosition" then
					table.insert(writes, "position")
					canvasPosition =
						Vector2.new(value.X, math.clamp(value.Y, 0, math.max(0, absoluteCanvasSize.Y - 100)))
				else
					rawset(frame, key, value)
				end
			end,
		})
		local virtualizer, emitScrollPosition, setApplyVirtualizerUpdate = createVirtualizerStub({
			getContentLength = function()
				return contentLength
			end,
		})
		local dataSource = Core.DataSource.snapshot({}, function(item)
			return item
		end)
		local sync = ScrollingFrameSync.new({
			dispatch = virtualizer.dispatch,
			getSnapshot = virtualizer.getSnapshot,
			query = virtualizer.query,
			getInstance = function()
				return frame :: any
			end,
			getConfiguration = function()
				return {
					axis = Core.Axis.Y,
					dataSource = dataSource,
					initialScrollAlignment = nil,
					autoScrollOnChange = nil,
					startReachedThreshold = nil,
					onStartReached = nil,
					onEndReached = nil,
					onViewportChanged = nil,
					onScrollOffsetChanged = nil,
					onContentLengthChanged = nil,
				}
			end,
		})
		setApplyVirtualizerUpdate(sync.applyVirtualizerUpdate)
		local disconnect = sync.connect()
		table.clear(writes)

		contentLength = 200
		emitScrollPosition(80)

		expect(writes).toEqual({ "canvas", "position" })
		expect(canvasPosition.Y).toBe(80)
		disconnect()
	end)

	it("routes viewport and User-scroll events through policy and callbacks", function()
		local frame = Instance.new("ScrollingFrame")
		frame.Size = UDim2.fromOffset(100, 100)
		frame.CanvasSize = UDim2.fromOffset(100, 200)
		local viewportChanges = 0
		local userOffsets = {}
		local virtualizer = createVirtualizerStub({
			getContentLength = function()
				return 200
			end,
			observeScrollOffset = function(observation)
				table.insert(userOffsets, observation.offset)
			end,
		})
		local dataSource = Core.DataSource.snapshot({}, function(item)
			return item
		end)
		local sync = ScrollingFrameSync.new({
			dispatch = virtualizer.dispatch,
			getSnapshot = virtualizer.getSnapshot,
			query = virtualizer.query,
			getInstance = function()
				return frame
			end,
			getConfiguration = function()
				return {
					axis = Core.Axis.Y,
					dataSource = dataSource,
					initialScrollAlignment = nil,
					autoScrollOnChange = nil,
					startReachedThreshold = nil,
					onStartReached = nil,
					onEndReached = nil,
					onViewportChanged = function()
						viewportChanges += 1
					end,
					onScrollOffsetChanged = nil,
					onContentLengthChanged = nil,
				}
			end,
		})
		local disconnect = sync.connect()
		viewportChanges = 0
		table.clear(userOffsets)

		sync.scrollingFrameChanged()
		table.clear(userOffsets)
		frame.CanvasPosition = Vector2.new(0, 25)

		expect(viewportChanges).toBe(1)
		expect(userOffsets).toEqual({ 25 })
		disconnect()
		frame:Destroy()
	end)

	it("rebinds host observations and samples one configuration per event", function()
		local firstFrame = Instance.new("ScrollingFrame")
		firstFrame.Size = UDim2.fromOffset(100, 100)
		firstFrame.CanvasSize = UDim2.fromOffset(100, 300)
		local secondFrame = Instance.new("ScrollingFrame")
		secondFrame.Size = UDim2.fromOffset(100, 100)
		secondFrame.CanvasSize = UDim2.fromOffset(100, 300)
		local currentFrame = firstFrame
		local userOffsets = {}
		local virtualizer = createVirtualizerStub({
			getContentLength = function()
				return 300
			end,
			observeScrollOffset = function(observation)
				if observation.kind == "User" then
					table.insert(userOffsets, observation.offset)
				end
			end,
		})
		local dataSource = Core.DataSource.snapshot({}, function(item)
			return item
		end)
		local configuration = {
			axis = Core.Axis.Y,
			dataSource = dataSource,
			initialScrollAlignment = nil,
			autoScrollOnChange = nil,
			startReachedThreshold = nil,
			onStartReached = nil,
			onEndReached = nil,
			onViewportChanged = nil,
			onScrollOffsetChanged = nil,
			onContentLengthChanged = nil,
		}
		local samples = 0
		local sync = ScrollingFrameSync.new({
			dispatch = virtualizer.dispatch,
			getSnapshot = virtualizer.getSnapshot,
			query = virtualizer.query,
			getInstance = function()
				return currentFrame
			end,
			getConfiguration = function()
				samples += 1
				return configuration
			end,
		})
		local disconnect = sync.connect()
		table.clear(userOffsets)
		samples = 0

		firstFrame.CanvasPosition = Vector2.new(0, 25)
		expect(samples).toBe(1)
		expect(userOffsets).toEqual({ 25 })

		currentFrame = secondFrame
		sync.scrollingFrameChanged()
		table.clear(userOffsets)
		firstFrame.CanvasPosition = Vector2.new(0, 50)
		secondFrame.CanvasPosition = Vector2.new(0, 75)
		expect(userOffsets).toEqual({ 75 })

		disconnect()
		firstFrame:Destroy()
		secondFrame:Destroy()
	end)

	it("primes host state and reconnects after cleanup", function()
		local harness = createHostHarness()
		local disconnect = harness.connect()

		expect(#harness.viewportUpdates).toBeGreaterThan(0)
		expect(harness.viewportUpdates[#harness.viewportUpdates]).toEqual({
			harness.frame.AbsoluteWindowSize.Y,
			harness.frame.AbsoluteWindowSize.X,
		})
		expect(harness.reconciledOffsets[#harness.reconciledOffsets]).toBe(25)

		disconnect()
		local disconnectedPosition = harness.frame.CanvasPosition
		harness.emitProgrammaticOffset(40)
		expect(harness.frame.CanvasPosition).toBe(disconnectedPosition)

		local disconnectAgain = harness.connect()
		harness.emitProgrammaticOffset(40)
		expect(harness.frame.CanvasPosition.Y).toBe(40)
		disconnectAgain()
		harness.destroy()
	end)

	it("attributes requested and maximum-reachable offsets to Programmatic scroll", function()
		local exact = createHostHarness()
		local disconnectExact = exact.connect()
		table.clear(exact.userOffsets)
		table.clear(exact.reconciledOffsets)

		exact.emitProgrammaticOffset(40)
		exact.observeCurrentOffset()
		expect(exact.frame.CanvasPosition.Y).toBe(40)
		expect(exact.userOffsets).toEqual({})
		expect(exact.reconciledOffsets[#exact.reconciledOffsets]).toBe(40)
		disconnectExact()
		exact.destroy()

		local limited = createHostHarness()
		limited.setContentLength(100)
		local disconnectLimited = limited.connect()
		table.clear(limited.userOffsets)
		table.clear(limited.reconciledOffsets)

		limited.emitProgrammaticOffset(60)
		limited.observeCurrentOffset()
		expect(limited.frame.CanvasPosition.Y).toBe(20)
		expect(limited.userOffsets).toEqual({})
		expect(limited.reconciledOffsets[#limited.reconciledOffsets]).toBe(20)
		disconnectLimited()
		limited.destroy()
	end)

	it("retains attribution across synchronous observation and replacement requests", function()
		local harness = createHostHarness()
		harness.setContentLength(100)
		local disconnect = harness.connect()
		table.clear(harness.userOffsets)
		table.clear(harness.reconciledOffsets)

		harness.emitProgrammaticOffset(60)
		harness.emitProgrammaticOffset(15)
		harness.observeCurrentOffset()

		expect(harness.frame.CanvasPosition.Y).toBe(15)
		expect(harness.userOffsets).toEqual({})
		expect(harness.reconciledOffsets[#harness.reconciledOffsets]).toBe(15)
		disconnect()
		harness.destroy()
	end)

	it("reconciles a Canvas-size limit before accepting later User scroll", function()
		local harness = createHostHarness()
		local disconnect = harness.connect()
		table.clear(harness.userOffsets)
		table.clear(harness.reconciledOffsets)

		harness.setContentLength(90)
		expect(harness.frame.CanvasPosition.Y).toBe(10)
		expect(harness.userOffsets).toEqual({})
		expect(harness.reconciledOffsets[#harness.reconciledOffsets]).toBe(10)

		harness.frame.CanvasPosition = Vector2.new(7, 5)
		expect(harness.userOffsets).toEqual({ 5 })
		disconnect()
		harness.destroy()
	end)

	it("rereads an offset changed while viewport size updates", function()
		local harness = createHostHarness()
		local disconnect = harness.connect()
		table.clear(harness.reconciledOffsets)
		harness.setOnViewportSize(function()
			harness.frame.CanvasPosition = Vector2.new(7, 35)
		end)

		harness.sync.scrollingFrameChanged()

		expect(harness.reconciledOffsets[#harness.reconciledOffsets]).toBe(35)
		disconnect()
		harness.destroy()
	end)
end)
