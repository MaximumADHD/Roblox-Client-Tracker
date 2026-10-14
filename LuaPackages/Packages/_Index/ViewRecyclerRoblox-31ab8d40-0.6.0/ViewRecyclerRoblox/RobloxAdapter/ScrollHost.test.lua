local Root = script:FindFirstAncestor("ViewRecyclerRoblox")
local Core = require(Root.Parent.ViewRecycler)
local JestGlobals = require(Root.TestDependencies).JestGlobals

local ScrollHost = require(Root.RobloxAdapter.ScrollHost)

local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local function noop() end

local function createRecord(contentLength, changes)
	local record = {
		mountedViews = {},
		visibleRange = { firstIndex = 0, lastIndex = 0 },
		mountedRange = { firstIndex = 0, lastIndex = 0 },
		scrollState = {
			scrollOffset = 0,
			viewportLength = 100,
			contentLength = contentLength,
			distanceFromEnd = contentLength,
			atStart = true,
			atEnd = false,
		},
		contentStartOffset = 0,
		contentLength = contentLength,
		requiresItemMeasurement = false,
		scrollCorrection = 0,
		scrollPositionChanged = false,
		scrollPositionFollowsCorrection = false,
		contentLengthChanged = false,
		startReached = false,
		endReached = false,
		dataPrefetchRequests = {},
		diagnostics = {},
	}
	for key, value in changes or {} do
		record[key] = value
	end
	return record
end

local function createVirtualizerStub(options)
	local applyVirtualizerUpdate = function(_record) end
	local current = createRecord(options.getContentLength())
	local virtualizer = {
		getCurrent = function()
			current.contentLength = options.getContentLength()
			current.scrollState.contentLength = current.contentLength
			return current
		end,
		setViewportSize = function(scrollAxisLength, crossAxisLength)
			if options.setViewportSize ~= nil then
				options.setViewportSize(scrollAxisLength, crossAxisLength)
			end
			return current
		end,
		observeScrollOffset = function(observation)
			if options.observeScrollOffset ~= nil then
				options.observeScrollOffset(observation)
			end
			return current
		end,
	}
	return virtualizer :: any,
		function(offset)
			current = createRecord(options.getContentLength(), {
				scrollPositionChanged = true,
				scrollState = {
					scrollOffset = offset,
					viewportLength = 100,
					contentLength = options.getContentLength(),
					distanceFromEnd = math.max(0, options.getContentLength() - offset),
					atStart = offset == 0,
					atEnd = false,
				},
			})
			applyVirtualizerUpdate(current)
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
	local canvasOriginOffsets = {}
	local presentOrigins = {}
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
	local sync
	sync = ScrollHost.new({
		observeScrollOffset = virtualizer.observeScrollOffset,
		setViewportSize = virtualizer.setViewportSize,
		getCurrent = virtualizer.getCurrent,
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
		onCanvasOriginMoved = function()
			table.insert(canvasOriginOffsets, sync.getCanvasOriginOffset())
		end,
	})
	local function present()
		table.insert(presentOrigins, sync.getCanvasOriginOffset())
	end
	setApplyVirtualizerUpdate(function(record)
		sync.applyRecord(record, present)
	end)

	return {
		frame = frame,
		sync = sync,
		viewportUpdates = viewportUpdates,
		userOffsets = userOffsets,
		reconciledOffsets = reconciledOffsets,
		observedOffsets = observedOffsets,
		canvasOriginOffsets = canvasOriginOffsets,
		presentOrigins = presentOrigins,
		connect = sync.connect,
		emitProgrammaticOffset = emitProgrammaticOffset,
		emitCorrection = function(delta, offset, nextContentLength, finalProgrammaticOffset)
			contentLength = nextContentLength
			local finalOffset = finalProgrammaticOffset or offset
			local update = createRecord(nextContentLength, {
				scrollCorrection = delta,
				scrollPositionChanged = true,
				scrollPositionFollowsCorrection = finalProgrammaticOffset == nil,
				contentLengthChanged = true,
				scrollState = {
					scrollOffset = finalOffset,
					viewportLength = 100,
					contentLength = nextContentLength,
					distanceFromEnd = math.max(0, nextContentLength - finalOffset),
					atStart = finalOffset == 0,
					atEnd = false,
				},
			})
			sync.applyRecord(update, present)
		end,
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

describe("ScrollHost", function()
	it("does not write CanvasPosition when a correction arrives during host scrolling", function()
		local harness = createHostHarness()
		local disconnect = harness.connect()
		table.clear(harness.canvasOriginOffsets)
		table.clear(harness.presentOrigins)
		harness.frame.CanvasPosition = Vector2.new(7, 20)
		harness.frame.CanvasPosition = Vector2.new(7, 25)

		harness.emitCorrection(40, 65, 200, nil)

		expect(harness.frame.CanvasPosition.Y).toBe(25)
		expect(harness.frame.CanvasSize.Y.Offset).toBe(160)
		-- The origin is final before presentation, then placed Hosts move once.
		expect(harness.presentOrigins).toEqual({ -40 })
		expect(harness.canvasOriginOffsets).toEqual({ -40 })
		disconnect()
		harness.destroy()
	end)

	it("settles a deferred correction after host scrolling becomes idle", function()
		local harness = createHostHarness()
		local disconnect = harness.connect()
		table.clear(harness.canvasOriginOffsets)
		harness.frame.CanvasPosition = Vector2.new(7, 20)
		harness.frame.CanvasPosition = Vector2.new(7, 25)

		harness.emitCorrection(40, 65, 200)
		game:GetService("RunService").Heartbeat:Wait()
		expect(harness.frame.CanvasPosition.Y).toBe(25)

		for _ = 1, 60 do
			if harness.frame.CanvasPosition.Y == 65 then
				break
			end
			game:GetService("RunService").Heartbeat:Wait()
		end

		expect(harness.frame.CanvasPosition.Y).toBe(65)
		expect(harness.frame.CanvasSize.Y.Offset).toBe(200)
		expect(harness.canvasOriginOffsets).toEqual({ -40, 0 })
		disconnect()
		harness.destroy()
	end)

	it("publishes added Canvas immediately when correction arrives at the leading boundary", function()
		local harness = createHostHarness()
		local disconnect = harness.connect()
		table.clear(harness.canvasOriginOffsets)
		harness.frame.CanvasPosition = Vector2.new(7, 10)
		harness.frame.CanvasPosition = Vector2.new(7, 0)

		harness.emitCorrection(40, 40, 200)

		expect(harness.frame.CanvasPosition.Y).toBe(40)
		expect(harness.frame.CanvasSize.Y.Offset).toBe(200)
		expect(harness.canvasOriginOffsets).toEqual({})
		disconnect()
		harness.destroy()
	end)

	it("does not defer an explicit Programmatic target that follows a correction", function()
		local harness = createHostHarness()
		local disconnect = harness.connect()
		table.clear(harness.canvasOriginOffsets)
		harness.frame.CanvasPosition = Vector2.new(7, 100)

		harness.emitCorrection(40, 140, 200, 0)

		expect(harness.frame.CanvasPosition.Y).toBe(0)
		expect(harness.frame.CanvasSize.Y.Offset).toBe(200)
		expect(harness.canvasOriginOffsets).toEqual({})
		disconnect()
		harness.destroy()
	end)

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
		local virtualizer, _, setApplyVirtualizerUpdate = createVirtualizerStub({
			getContentLength = function()
				return contentLength
			end,
		})
		local dataSource = Core.DataSource.snapshot({}, function(item)
			return item
		end)
		local sync
		sync = ScrollHost.new({
			observeScrollOffset = virtualizer.observeScrollOffset,
			setViewportSize = virtualizer.setViewportSize,
			getCurrent = virtualizer.getCurrent,
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
					onStartReached = function()
						table.insert(writes, "start")
					end,
					onEndReached = function()
						table.insert(writes, "end")
					end,
					onViewportChanged = nil,
					onScrollOffsetChanged = nil,
					onContentLengthChanged = function()
						table.insert(writes, "length")
					end,
				}
			end,
		})
		setApplyVirtualizerUpdate(function(record)
			sync.applyRecord(record, noop)
		end)
		local disconnect = sync.connect()
		table.clear(writes)

		contentLength = 200
		sync.applyRecord(
			createRecord(200, {
				scrollPositionChanged = true,
				contentLengthChanged = true,
				startReached = true,
				endReached = true,
				scrollState = {
					scrollOffset = 80,
					viewportLength = 100,
					contentLength = 200,
					distanceFromEnd = 120,
					atStart = false,
					atEnd = false,
				},
			}),
			noop
		)

		expect(writes).toEqual({ "canvas", "position", "length", "start", "end" })
		expect(canvasPosition.Y).toBe(80)
		disconnect()
	end)

	it("does not read AbsoluteWindowSize after writing CanvasSize", function()
		local contentLength = 160
		local absoluteCanvasSize = Vector2.new(100, 160)
		local canvasPosition = Vector2.zero
		local canvasWritten = false
		local windowReads = 0
		local windowReadsAfterCanvasWrite = 0
		local frame
		frame = setmetatable({}, {
			__index = function(_, key)
				if key == "AbsoluteWindowSize" then
					windowReads += 1
					if canvasWritten then
						windowReadsAfterCanvasWrite += 1
					end
					return Vector2.new(100, 100)
				elseif key == "AbsoluteCanvasSize" then
					return absoluteCanvasSize
				elseif key == "CanvasPosition" then
					return canvasPosition
				end
				return nil
			end,
			__newindex = function(_, key, value)
				if key == "CanvasSize" then
					canvasWritten = true
					absoluteCanvasSize = Vector2.new(value.X.Offset, value.Y.Offset)
				elseif key == "CanvasPosition" then
					canvasPosition = Vector2.new(value.X, value.Y)
				else
					rawset(frame, key, value)
				end
			end,
		})
		local virtualizer, _, setApplyVirtualizerUpdate = createVirtualizerStub({
			getContentLength = function()
				return contentLength
			end,
		})
		local dataSource = Core.DataSource.snapshot({}, function(item)
			return item
		end)
		local sync
		sync = ScrollHost.new({
			observeScrollOffset = virtualizer.observeScrollOffset,
			setViewportSize = virtualizer.setViewportSize,
			getCurrent = virtualizer.getCurrent,
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
		setApplyVirtualizerUpdate(function(record)
			sync.applyRecord(record, noop)
		end)
		local disconnect = sync.connect()
		canvasWritten = false
		windowReads = 0
		windowReadsAfterCanvasWrite = 0

		contentLength = 240
		sync.applyRecord(
			createRecord(240, {
				contentLengthChanged = true,
			}),
			noop
		)

		expect(canvasWritten).toBe(true)
		expect(windowReads).toBe(0)
		expect(windowReadsAfterCanvasWrite).toBe(0)

		canvasWritten = false
		sync.applyRecord(
			createRecord(240, {
				contentLengthChanged = true,
			}),
			noop
		)
		expect(canvasWritten).toBe(false)
		disconnect()
	end)

	it("reports a CanvasSize clamp as a Programmatic write without resampling the window", function()
		local contentLength = 400
		local absoluteCanvasSize = Vector2.new(100, 400)
		local canvasPosition = Vector2.new(0, 300)
		local canvasWritten = false
		local windowReadsAfterCanvasWrite = 0
		local observed = {}
		local frame
		frame = setmetatable({}, {
			__index = function(_, key)
				if key == "AbsoluteWindowSize" then
					if canvasWritten then
						windowReadsAfterCanvasWrite += 1
					end
					return Vector2.new(100, 100)
				elseif key == "AbsoluteCanvasSize" then
					return absoluteCanvasSize
				elseif key == "CanvasPosition" then
					return canvasPosition
				end
				return nil
			end,
			__newindex = function(_, key, value)
				if key == "CanvasSize" then
					canvasWritten = true
					absoluteCanvasSize = Vector2.new(value.X.Offset, value.Y.Offset)
					canvasPosition = Vector2.new(
						canvasPosition.X,
						math.clamp(canvasPosition.Y, 0, math.max(0, absoluteCanvasSize.Y - 100))
					)
				elseif key == "CanvasPosition" then
					canvasPosition = Vector2.new(value.X, value.Y)
				else
					rawset(frame, key, value)
				end
			end,
		})
		local virtualizer, _, setApplyVirtualizerUpdate = createVirtualizerStub({
			getContentLength = function()
				return contentLength
			end,
			observeScrollOffset = function(observation)
				table.insert(observed, observation)
			end,
		})
		local dataSource = Core.DataSource.snapshot({}, function(item)
			return item
		end)
		local sync
		sync = ScrollHost.new({
			observeScrollOffset = virtualizer.observeScrollOffset,
			setViewportSize = virtualizer.setViewportSize,
			getCurrent = virtualizer.getCurrent,
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
		setApplyVirtualizerUpdate(function(record)
			sync.applyRecord(record, noop)
		end)
		local disconnect = sync.connect()
		canvasPosition = Vector2.new(0, 300)
		canvasWritten = false
		windowReadsAfterCanvasWrite = 0
		table.clear(observed)

		contentLength = 150
		sync.applyRecord(
			createRecord(150, {
				contentLengthChanged = true,
			}),
			noop
		)

		expect(canvasPosition.Y).toBe(50)
		expect(observed).toEqual({
			{ kind = Core.ScrollObservationKind.Programmatic, offset = 50 },
		})
		expect(windowReadsAfterCanvasWrite).toBe(0)
		disconnect()
	end)

	it("routes viewport and User-scroll events through Core observations and callbacks", function()
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
		local sync
		sync = ScrollHost.new({
			observeScrollOffset = virtualizer.observeScrollOffset,
			setViewportSize = virtualizer.setViewportSize,
			getCurrent = virtualizer.getCurrent,
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
		local sync
		sync = ScrollHost.new({
			observeScrollOffset = virtualizer.observeScrollOffset,
			setViewportSize = virtualizer.setViewportSize,
			getCurrent = virtualizer.getCurrent,
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
