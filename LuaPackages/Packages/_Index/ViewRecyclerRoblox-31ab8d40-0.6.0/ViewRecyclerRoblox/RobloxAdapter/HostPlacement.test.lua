local Root = script:FindFirstAncestor("ViewRecyclerRoblox")
local Core = require(Root.Parent.ViewRecycler)
local JestGlobals = require(Root.TestDependencies).JestGlobals

local HostPlacement = require(Root.RobloxAdapter.HostPlacement)
local HostPresentationPhase = require(Root.RobloxAdapter.HostPresentationPhase)
local RunService = game:GetService("RunService")

local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local function assignment(key: string, tokenId: number, index: number?)
	return {
		key = key,
		value = key,
		_testId = tokenId,
		_index = index,
	}
end

local function intent(current, options)
	options = options or {}
	return {
		assignment = current,
		index = current._index,
		itemRevision = options.itemRevision or 0,
		pinnedPosition = options.pinnedPosition,
		itemLayout = {
			startOffset = options.startOffset or 10,
			length = options.length or 40,
		},
		canvasPlacement = options.canvasPlacement or {},
		viewportPlacement = options.viewportPlacement,
		contentStartOffset = options.contentStartOffset or 5,
	}
end

local function hostState(host, current, phase)
	return {
		host = host,
		phase = phase or HostPresentationPhase.Presented,
		state = intent(current),
	}
end

local function createHostPlacement(container, options)
	options = options or {}
	local measurements = {}
	local presentations = {}
	local placement = HostPlacement.new({
		getCanvasOriginOffset = options.getCanvasOriginOffset,
		container = container,
		viewportContainer = options.viewportContainer,
		axis = options.axis or Core.Axis.Y,
		selfSizing = options.selfSizing == true,
		stackedSpacing = options.stackedSpacing,
		onItemMeasurements = function(batch)
			for _, measurement in batch do
				table.insert(measurements, measurement)
			end
		end,
		onItemViewPresentationChanged = options.onItemViewPresentationChanged or function(itemView, current)
			table.insert(presentations, {
				itemView = itemView,
				assignment = current,
			})
		end,
	})
	return placement, measurements, presentations
end

-- An empty Host reads a zero length, which is trusted only once rendered.
local function waitPastRender()
	RunService.PreRender:Wait()
	RunService.Heartbeat:Wait()
	task.wait()
end

local function apply(placement, itemView, state, placementIntent)
	if state == nil then
		placement.apply(itemView, nil)
	else
		state.state = placementIntent
		placement.apply(itemView, state)
	end
end

describe("HostPlacement", function()
	it("applies complete physical state and completely detaches on nil", function()
		local canvas = Instance.new("ScrollingFrame")
		local host = Instance.new("Frame")
		local current = assignment("a", 1, 1)
		local placement = createHostPlacement(canvas)

		apply(placement, {}, hostState(host, current), intent(current))

		expect(host.Parent).toBe(canvas)
		expect(host.Position).toBe(UDim2.fromOffset(0, 15))
		expect(host.Size).toBe(UDim2.new(1, 0, 0, 40))
		expect(host.Visible).toBe(true)

		apply(placement, {}, nil, nil)
		-- A different ItemView is independent.
		expect(host.Parent).toBe(canvas)

		local itemView = {}
		apply(placement, itemView, hostState(host, current), intent(current))
		apply(placement, itemView, nil, nil)
		expect(host.Parent).toBeNil()
		expect(host.Position).toBe(UDim2.new())
		expect(host.Size).toBe(UDim2.new())
		expect(host.AutomaticSize).toBe(Enum.AutomaticSize.None)
		expect(host.Visible).toBe(false)

		placement.destroy()
		host:Destroy()
		canvas:Destroy()
	end)

	it("rebases Canvas placements without moving viewport-relative placements", function()
		local canvas = Instance.new("ScrollingFrame")
		local viewportOverlay = Instance.new("Frame")
		local canvasHost = Instance.new("Frame")
		local viewportHost = Instance.new("Frame")
		local canvasItem = assignment("canvas", 1, 1)
		local viewportItem = assignment("viewport", 1, 2)
		local origin = 0
		local placement = createHostPlacement(canvas, {
			viewportContainer = viewportOverlay,
			getCanvasOriginOffset = function()
				return origin
			end,
		})

		apply(placement, {}, hostState(canvasHost, canvasItem), intent(canvasItem))
		apply(
			placement,
			{},
			hostState(viewportHost, viewportItem),
			intent(viewportItem, {
				viewportPlacement = {
					mainAxisOffset = 20,
				},
			})
		)
		origin = -40
		placement.reposition()

		expect(canvasHost.Position).toBe(UDim2.fromOffset(0, -25))
		expect(viewportHost.Position).toBe(UDim2.fromOffset(0, 20))

		placement.destroy()
		canvasHost:Destroy()
		viewportHost:Destroy()
		canvas:Destroy()
		viewportOverlay:Destroy()
	end)

	it("moves Stacked Hosts with the Canvas origin without writing CanvasPosition", function()
		local screen = Instance.new("ScreenGui")
		screen.Parent = game:GetService("CoreGui")
		local canvas = Instance.new("ScrollingFrame")
		canvas.Size = UDim2.fromOffset(200, 200)
		canvas.CanvasSize = UDim2.fromOffset(0, 1000)
		canvas.CanvasPosition = Vector2.new(0, 100)
		canvas.Parent = screen
		local origin = 0
		local placement = createHostPlacement(canvas, {
			stackedSpacing = 0,
			getCanvasOriginOffset = function()
				return origin
			end,
		})
		local first = assignment("first", 1, 1)
		local second = assignment("second", 1, 2)
		local firstHost = Instance.new("Frame")
		local secondHost = Instance.new("Frame")
		local mountedViews = {
			{ state = intent(first, { startOffset = 110 }) },
			{ state = intent(second, { startOffset = 150 }) },
		}
		local function canvasOffset(host: Frame): number
			return host.AbsolutePosition.Y - canvas.AbsolutePosition.Y + canvas.CanvasPosition.Y
		end

		placement.setMountedWindow({ mountedViews = mountedViews }, function()
			apply(placement, {}, hostState(firstHost, first), mountedViews[1].state)
			apply(placement, {}, hostState(secondHost, second), mountedViews[2].state)
		end)
		expect(firstHost.Parent).never.toBe(canvas)
		expect({ canvasOffset(firstHost), canvasOffset(secondHost) }).toEqual({ 115, 155 })

		origin = -40
		placement.reposition()

		expect({ canvasOffset(firstHost), canvasOffset(secondHost) }).toEqual({ 75, 115 })
		expect(canvas.CanvasPosition.Y).toBe(100)

		placement.destroy()
		screen:Destroy()
	end)

	it("reads stacked Hosts before paint only while their placement or size changes", function()
		local screen = Instance.new("ScreenGui")
		screen.Parent = game:GetService("CoreGui")
		local canvas = Instance.new("ScrollingFrame")
		canvas.Size = UDim2.fromOffset(200, 200)
		canvas.Parent = screen
		local placement, measurements = createHostPlacement(canvas, { stackedSpacing = 0, selfSizing = true })
		local current = assignment("a", 1, 1)
		local host = Instance.new("Frame")
		local content = Instance.new("Frame")
		content.Size = UDim2.new(1, 0, 0, 30)
		content.Parent = host
		local state = intent(current, { startOffset = 0, length = 30 })
		placement.setMountedWindow({ mountedViews = { { state = state } } }, function()
			apply(placement, {}, hostState(host, current), state)
		end)
		-- The first pass marks the content rendered; the next one reads it.
		RunService.PreRender:Wait()
		RunService.PreRender:Wait()
		expect(measurements[1].length).toBe(30)

		for _ = 1, 3 do
			RunService.PreRender:Wait()
		end
		local idleReads = placement.getPrePaintReadCount()
		for _ = 1, 60 do
			RunService.PreRender:Wait()
		end
		expect(placement.getPrePaintReadCount()).toBe(idleReads)

		content.Size = UDim2.new(1, 0, 0, 45)
		RunService.PreRender:Wait()
		expect(placement.getPrePaintReadCount()).toBeGreaterThan(idleReads)
		expect(measurements[#measurements].length).toBe(45)

		placement.destroy()
		screen:Destroy()
	end)

	for _, case in
		{
			{ name = "a fixed-size", options = {} },
			{ name = "an unstacked self-sizing", options = { selfSizing = true } },
			{ name = "a stacked", options = { stackedSpacing = 0, selfSizing = true } },
		}
	do
		it(`reads a pinned Host in {case.name} list before paint only while it resizes`, function()
			local screen = Instance.new("ScreenGui")
			screen.Parent = game:GetService("CoreGui")
			local canvas = Instance.new("ScrollingFrame")
			canvas.Size = UDim2.fromOffset(200, 200)
			canvas.Parent = screen
			local placement, measurements = createHostPlacement(canvas, case.options)
			local current = assignment("pinned", 1)
			local host = Instance.new("Frame")
			local content = Instance.new("Frame")
			content.Size = UDim2.new(1, 0, 0, 30)
			content.Parent = host
			local state = intent(current, {
				pinnedPosition = Core.PinnedPosition.Start,
				canvasPlacement = { mainAxisOffset = 0 },
			})
			placement.setMountedWindow({ mountedViews = { { state = state } } }, function()
				apply(placement, {}, { host = host, phase = HostPresentationPhase.Presented, state = state }, state)
			end)
			RunService.PreRender:Wait()
			RunService.PreRender:Wait()
			expect(measurements[#measurements].length).toBe(30)

			for _ = 1, 3 do
				RunService.PreRender:Wait()
			end
			local idleReads = placement.getPrePaintReadCount()
			for _ = 1, 60 do
				RunService.PreRender:Wait()
			end
			expect(placement.getPrePaintReadCount()).toBe(idleReads)

			content.Size = UDim2.new(1, 0, 0, 45)
			RunService.PreRender:Wait()
			expect(placement.getPrePaintReadCount()).toBeGreaterThan(idleReads)
			expect(measurements[#measurements].length).toBe(45)

			placement.destroy()
			screen:Destroy()
		end)
	end

	it("connects the pre-paint pass only while it measures self-sizing Hosts", function()
		local canvas = Instance.new("ScrollingFrame")
		local uniform = createHostPlacement(canvas, { stackedSpacing = 0 })
		local measured = createHostPlacement(canvas, { stackedSpacing = 0, selfSizing = true })
		local absolute = createHostPlacement(canvas, { selfSizing = true })
		local current = assignment("a", 1, 1)
		local state = intent(current)
		local function mount(placement, itemView, host)
			placement.setMountedWindow({ mountedViews = { { state = state } } }, function()
				apply(placement, itemView, hostState(host, current), state)
			end)
		end
		local measuredView = {}
		mount(uniform, {}, Instance.new("Frame"))
		mount(measured, measuredView, Instance.new("Frame"))
		mount(absolute, {}, Instance.new("Frame"))

		expect(uniform.isPrePaintPassConnected()).toBe(false)
		expect(measured.isPrePaintPassConnected()).toBe(true)
		expect(absolute.isPrePaintPassConnected()).toBe(true)

		apply(measured, measuredView, nil, nil)
		expect(measured.isPrePaintPassConnected()).toBe(false)
		mount(measured, measuredView, Instance.new("Frame"))
		measured.destroy()
		expect(measured.isPrePaintPassConnected()).toBe(false)

		uniform.destroy()
		absolute.destroy()
		canvas:Destroy()
	end)

	it("repositions only Hosts placed against a previous origin", function()
		local canvas = Instance.new("ScrollingFrame")
		local movedHost = Instance.new("Frame")
		local stillHost = Instance.new("Frame")
		local moved = assignment("moved", 1, 1)
		local still = assignment("still", 1, 2)
		local origin = 0
		local placement = createHostPlacement(canvas, {
			getCanvasOriginOffset = function()
				return origin
			end,
		})
		local movedView = {}
		local stillView = {}

		apply(placement, movedView, hostState(movedHost, moved), intent(moved))
		apply(placement, stillView, hostState(stillHost, still), intent(still))
		expect(movedHost.Position).toBe(UDim2.fromOffset(0, 15))

		origin = -40
		apply(placement, movedView, hostState(movedHost, moved), intent(moved, { startOffset = 50 }))
		expect(movedHost.Position).toBe(UDim2.fromOffset(0, 15))
		expect(stillHost.Position).toBe(UDim2.fromOffset(0, 15))

		placement.reposition()
		expect(movedHost.Position).toBe(UDim2.fromOffset(0, 15))
		expect(stillHost.Position).toBe(UDim2.fromOffset(0, -25))

		placement.destroy()
		movedHost:Destroy()
		stillHost:Destroy()
		canvas:Destroy()
	end)

	it("applies pending visibility without reporting presentation", function()
		local canvas = Instance.new("ScrollingFrame")
		local host = Instance.new("Frame")
		local current = assignment("a", 1, 1)
		local placement = createHostPlacement(canvas)
		local itemView = {}

		apply(placement, itemView, hostState(host, current, "pending"), intent(current))
		expect(host.Parent).toBe(canvas)
		expect(host.Visible).toBe(true)

		apply(placement, itemView, hostState(host, current, "hidden"), intent(current))
		expect(host.Parent).toBe(canvas)
		expect(host.Visible).toBe(false)

		placement.destroy()
		host:Destroy()
		canvas:Destroy()
	end)

	it("reports the presented Assignment reference", function()
		local canvas = Instance.new("ScrollingFrame")
		local host = Instance.new("Frame")
		local current = assignment("a", 1, 1)
		local placement, _, presentations = createHostPlacement(canvas)
		local itemView = {}

		local state = intent(current)
		apply(placement, itemView, hostState(host, current), state)

		expect(presentations).toEqual({
			{
				itemView = itemView,
				assignment = current,
			},
		})

		placement.destroy()
		host:Destroy()
		canvas:Destroy()
	end)

	it("applies each complete physical state atomically", function()
		local canvas = Instance.new("ScrollingFrame")
		local host = Instance.new("Frame")
		local first = assignment("a", 1, 1)
		local second = assignment("b", 2, 2)
		local placement = createHostPlacement(canvas)
		local itemView = {}

		apply(placement, itemView, hostState(host, first), intent(first))
		local before = host.Position
		apply(placement, itemView, hostState(host, second), intent(second, { startOffset = 200 }))
		expect(host.Parent).toBe(canvas)
		expect(host.Position).never.toBe(before)

		placement.destroy()
		host:Destroy()
		canvas:Destroy()
	end)

	it("replaces one complete physical state with another", function()
		local canvas = Instance.new("ScrollingFrame")
		local host = Instance.new("Frame")
		local first = assignment("a", 1, 1)
		local second = assignment("a", 2, 1)
		local placement = createHostPlacement(canvas)
		local itemView = {}

		apply(placement, itemView, hostState(host, second), intent(second, { startOffset = 30 }))
		apply(placement, itemView, hostState(host, second), intent(second, { startOffset = 80 }))
		apply(placement, itemView, hostState(host, first), intent(first, { startOffset = 40 }))

		expect(host.Parent).toBe(canvas)
		expect(host.Position).toBe(UDim2.fromOffset(0, 45))

		placement.destroy()
		host:Destroy()
		canvas:Destroy()
	end)

	it("replays complete physical state after configuration replacement", function()
		local firstCanvas = Instance.new("ScrollingFrame")
		local secondCanvas = Instance.new("ScrollingFrame")
		local host = Instance.new("Frame")
		local current = assignment("a", 1, 1)
		local placement = createHostPlacement(firstCanvas)
		local itemView = {}

		apply(placement, itemView, hostState(host, current), intent(current))
		placement.setConfiguration({
			container = secondCanvas,
			viewportContainer = nil,
			axis = Core.Axis.X,
			selfSizing = false,
		})

		expect(host.Parent).toBe(secondCanvas)
		expect(host.Position).toBe(UDim2.fromOffset(15, 0))
		expect(host.Size).toBe(UDim2.new(0, 40, 1, 0))

		placement.destroy()
		host:Destroy()
		firstCanvas:Destroy()
		secondCanvas:Destroy()
	end)

	it("does not retry presentation notification after a callback exception", function()
		local canvas = Instance.new("ScrollingFrame")
		local host = Instance.new("Frame")
		local current = assignment("a", 1, 1)
		local calls = 0
		local placement = createHostPlacement(canvas, {
			onItemViewPresentationChanged = function()
				calls += 1
				if calls == 1 then
					error("presentation callback failed")
				end
			end,
		})
		local itemView = {}

		local state = hostState(host, current)
		state.state = intent(current)
		expect(function()
			placement.apply(itemView, state)
		end).toThrow("presentation callback failed")
		placement.apply(itemView, state)

		expect(calls).toBe(1)
		expect(host.Parent).toBe(canvas)
		expect(host.Visible).toBe(true)

		placement.destroy()
		host:Destroy()
		canvas:Destroy()
	end)

	it("destroys idempotently, detaches completely, and rejects late physical calls", function()
		local canvas = Instance.new("ScrollingFrame")
		local host = Instance.new("Frame")
		local current = assignment("a", 1, 1)
		local placement = createHostPlacement(canvas)
		local itemView = {}

		apply(placement, itemView, hostState(host, current), intent(current))
		placement.destroy()
		placement.destroy()

		expect(host.Parent).toBeNil()
		expect(host.Position).toBe(UDim2.new())
		expect(host.Size).toBe(UDim2.new())
		expect(host.Visible).toBe(false)
		expect(function()
			placement.apply(itemView, hostState(host, current))
		end).toThrow("cannot apply physical state after destroy")
		placement.setConfiguration({
			container = canvas,
			viewportContainer = nil,
			axis = Core.Axis.Y,
			selfSizing = false,
		})
		placement.cancelPendingMeasurements()

		host:Destroy()
		canvas:Destroy()
	end)

	it("releases an ItemView after its complete physical state is cleared", function()
		local canvas = Instance.new("ScrollingFrame")
		local host = Instance.new("Frame")
		local current = assignment("a", 1, 1)
		local placement = createHostPlacement(canvas)
		local itemView = {}

		apply(placement, itemView, hostState(host, current), intent(current))
		expect(placement.getTrackedItemViewCount()).toBe(1)
		apply(placement, itemView, nil, nil)

		expect(placement.getTrackedItemViewCount()).toBe(0)

		placement.destroy()
		host:Destroy()
		canvas:Destroy()
	end)

	it("routes viewport-relative geometry to the viewport overlay", function()
		local canvas = Instance.new("ScrollingFrame")
		local overlay = Instance.new("Frame")
		local host = Instance.new("Frame")
		local current = assignment("$start", 1, nil)
		local placement = createHostPlacement(canvas, { viewportContainer = overlay })

		apply(
			placement,
			{},
			hostState(host, current),
			intent(current, {
				length = 20,
				canvasPlacement = { mainAxisOffset = 100, mainAxisLength = 20 },
				viewportPlacement = { mainAxisOffset = 3, mainAxisLength = 20, zIndex = 2 },
				contentStartOffset = 50,
				pinnedPosition = Core.PinnedPosition.Start,
			})
		)

		expect(host.Parent).toBe(overlay)
		expect(host.Position).toBe(UDim2.fromOffset(0, 3))
		expect(host.Size).toBe(UDim2.fromScale(1, 0))

		placement.destroy()
		host:Destroy()
		overlay:Destroy()
		canvas:Destroy()
	end)

	it("measures after the next render with the exact ViewState reference", function()
		local canvas = Instance.new("ScrollingFrame")
		canvas.Size = UDim2.fromOffset(200, 200)
		local screen = Instance.new("ScreenGui")
		screen.Parent = game:GetService("CoreGui")
		canvas.Parent = screen
		local host = Instance.new("Frame")
		local current = assignment("a", 7, 1)
		local placement, measurements = createHostPlacement(canvas, { selfSizing = true })
		local pushedIntent = intent(current, { itemRevision = 4 })

		local itemView = {}
		apply(placement, itemView, hostState(host, current), pushedIntent)
		expect(#measurements).toBe(0)
		waitPastRender()

		expect(#measurements).toBe(1)
		expect(measurements[1].itemView).toBe(itemView)
		expect(measurements[1].state).toBe(pushedIntent)
		expect(measurements[1].length).toBe(0)

		placement.destroy()
		host:Destroy()
		screen:Destroy()
	end)

	it("does not re-measure a Host whose measurement identity is restated unchanged", function()
		local canvas = Instance.new("ScrollingFrame")
		canvas.Size = UDim2.fromOffset(200, 200)
		local screen = Instance.new("ScreenGui")
		screen.Parent = game:GetService("CoreGui")
		canvas.Parent = screen
		local host = Instance.new("Frame")
		local current = assignment("a", 1, 1)
		local placement, measurements = createHostPlacement(canvas, { selfSizing = true })
		local itemView = {}
		local currentState = intent(current)

		apply(placement, itemView, hostState(host, current), currentState)
		-- Placing the Host changes its AbsoluteSize, and the Measurer reports every
		-- genuine size change. Let the geometry settle before restating.
		local settled = 0
		repeat
			settled = #measurements
			waitPastRender()
		until #measurements == settled
		expect(settled).toBeGreaterThan(0)

		-- Any one Host's placement change restates the intent of every mounted Host.
		apply(placement, itemView, hostState(host, current), currentState)
		waitPastRender()

		expect(#measurements).toBe(settled)

		apply(placement, itemView, hostState(host, current), intent(current, { itemRevision = 1 }))
		waitPastRender()

		expect(#measurements).toBe(settled + 1)
		expect(measurements[settled + 1].state.itemRevision).toBe(1)

		placement.destroy()
		host:Destroy()
		screen:Destroy()
	end)

	it("rebinds separately registered Measurement dependencies", function()
		local canvas = Instance.new("ScrollingFrame")
		local host = Instance.new("Frame")
		local current = assignment("a", 1, 1)
		local firstDisconnected = false
		local secondSubscribed = false
		local firstDependencies = {
			get = function()
				return {}
			end,
			subscribe = function()
				return function()
					firstDisconnected = true
				end
			end,
		}
		local secondDependencies = {
			get = function()
				return {}
			end,
			subscribe = function()
				secondSubscribed = true
				return function() end
			end,
		}
		local placement = createHostPlacement(canvas, { selfSizing = true })
		local itemView = {}
		placement.setMeasurementDependencies(itemView, firstDependencies)
		apply(placement, itemView, hostState(host, current), intent(current))

		placement.setMeasurementDependencies(itemView, secondDependencies)

		expect(firstDisconnected).toBe(true)
		expect(secondSubscribed).toBe(true)
		placement.destroy()
		host:Destroy()
		canvas:Destroy()
	end)

	it("releases an entry used only for Measurement-dependency registration", function()
		local canvas = Instance.new("ScrollingFrame")
		local placement = createHostPlacement(canvas, { selfSizing = true })
		local itemView = {}
		local dependencies = {
			get = function()
				return {}
			end,
			subscribe = function()
				return function() end
			end,
		}

		placement.setMeasurementDependencies(itemView, dependencies)
		expect(placement.getTrackedItemViewCount()).toBe(1)
		placement.setMeasurementDependencies(itemView, nil)
		expect(placement.getTrackedItemViewCount()).toBe(0)

		placement.destroy()
		canvas:Destroy()
	end)

	it("publishes the reassigned identity after a descendant dependency attaches and becomes ready", function()
		local canvas = Instance.new("ScrollingFrame")
		canvas.Size = UDim2.fromOffset(200, 200)
		local screen = Instance.new("ScreenGui")
		screen.Parent = game:GetService("CoreGui")
		canvas.Parent = screen
		local host = Instance.new("Frame")
		local dependency = Instance.new("Frame")
		dependency.Size = UDim2.fromOffset(0, 20)
		dependency.Parent = screen
		local first = assignment("a", 1, 1)
		local second = assignment("b", 2, 2)
		local placement, measurements = createHostPlacement(canvas, { selfSizing = true })
		local dependencies = {}
		local dependenciesChanged
		local measurementDependencies = {
			get = function()
				return dependencies
			end,
			subscribe = function(callback)
				dependenciesChanged = callback
				return function() end
			end,
		}

		local itemView = {}
		placement.setMeasurementDependencies(itemView, measurementDependencies)
		apply(placement, itemView, hostState(host, first), intent(first))
		RunService.Heartbeat:Wait()
		task.wait()
		local settled = #measurements

		local secondState = intent(second)
		apply(placement, itemView, hostState(host, second), secondState)
		dependencies = { dependency }
		dependenciesChanged()
		RunService.Heartbeat:Wait()
		task.wait()
		expect(#measurements).toBe(settled)

		dependency.Size = UDim2.fromOffset(100, 20)
		for _ = 1, 3 do
			if #measurements > settled then
				break
			end
			RunService.Heartbeat:Wait()
			task.wait()
		end
		expect(#measurements).toBe(settled + 1)
		expect(measurements[settled + 1].state.assignment).toBe(second)

		apply(placement, itemView, hostState(host, second), secondState)
		RunService.Heartbeat:Wait()
		task.wait()
		expect(#measurements).toBe(settled + 1)

		placement.destroy()
		dependency:Destroy()
		host:Destroy()
		screen:Destroy()
	end)

	it("uses the latest provenance when pending measurement work survives Recycling", function()
		local canvas = Instance.new("ScrollingFrame")
		canvas.Size = UDim2.fromOffset(200, 200)
		local screen = Instance.new("ScreenGui")
		screen.Parent = game:GetService("CoreGui")
		canvas.Parent = screen
		local host = Instance.new("Frame")
		local first = assignment("a", 1, 1)
		local second = assignment("b", 2, 2)
		local placement, measurements = createHostPlacement(canvas, { selfSizing = true })
		local itemView = {}

		apply(placement, itemView, hostState(host, first), intent(first))
		apply(placement, itemView, nil, nil)
		apply(placement, itemView, hostState(host, second), intent(second, { itemRevision = 8 }))
		waitPastRender()

		expect(#measurements).toBe(1)
		expect(measurements[1].state.assignment).toBe(second)
		expect(measurements[1].state.itemRevision).toBe(8)

		placement.destroy()
		host:Destroy()
		screen:Destroy()
	end)
end)
