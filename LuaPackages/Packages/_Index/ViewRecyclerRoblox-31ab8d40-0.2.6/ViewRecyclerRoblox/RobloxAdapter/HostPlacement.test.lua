local Root = script:FindFirstAncestor("ViewRecyclerRoblox")
local Core = require(Root.Parent.ViewRecycler)
local JestGlobals = require(Root.TestDependencies).JestGlobals

local HostPlacement = require(Root.RobloxAdapter.HostPlacement)
local HostPresentationPhase = require(Root.RobloxAdapter.HostPresentationPhase)
local RunService = game:GetService("RunService")

local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local function assignment(key: string, generation: number, index: number?)
	return {
		key = key,
		index = index,
		value = key,
		generation = generation,
	}
end

local function intent(current, options)
	options = options or {}
	return {
		assignment = current,
		itemLayout = {
			startOffset = options.startOffset or 10,
			length = options.length or 40,
		},
		canvasPlacement = options.canvasPlacement or {},
		viewportPlacement = options.viewportPlacement,
		contentStartOffset = options.contentStartOffset or 5,
		measurementIdentity = {
			itemKey = current.key,
			itemIndex = current.index,
			assignmentGeneration = current.generation,
			itemRevision = options.itemRevision or 0,
			pinnedPosition = options.pinnedPosition,
		},
	}
end

local function hostState(host, current, phase, visible)
	return {
		host = host,
		assignment = current,
		phase = phase or HostPresentationPhase.Presented,
		visible = if visible == nil then true else visible,
	}
end

local function createHostPlacement(container, options)
	options = options or {}
	local measurements = {}
	local presentations = {}
	local placement = HostPlacement.new({
		container = container,
		viewportContainer = options.viewportContainer,
		axis = options.axis or Core.Axis.Y,
		selfSizing = options.selfSizing == true,
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

local function apply(placement, itemView, state, placementIntent)
	placement.applyHostState(itemView, state)
	placement.applyPlacementIntent(itemView, placementIntent)
end

describe("HostPlacement", function()
	it("applies complete physical state and completely detaches on nil Host state", function()
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

	it("applies pending visibility without reporting presentation", function()
		local canvas = Instance.new("ScrollingFrame")
		local host = Instance.new("Frame")
		local current = assignment("a", 1, 1)
		local placement = createHostPlacement(canvas)
		local itemView = {}

		apply(placement, itemView, hostState(host, current, "pending", true), intent(current))
		expect(host.Parent).toBe(canvas)
		expect(host.Visible).toBe(true)

		apply(placement, itemView, hostState(host, current, "hidden", false), intent(current))
		expect(host.Parent).toBe(canvas)
		expect(host.Visible).toBe(false)

		placement.destroy()
		host:Destroy()
		canvas:Destroy()
	end)

	it("rejects a stale Placement intent without disturbing the current host", function()
		local canvas = Instance.new("ScrollingFrame")
		local host = Instance.new("Frame")
		local first = assignment("a", 1, 1)
		local second = assignment("b", 2, 2)
		local placement = createHostPlacement(canvas)
		local itemView = {}

		apply(placement, itemView, hostState(host, first), intent(first))
		local before = host.Position
		apply(placement, itemView, hostState(host, second), intent(first, { startOffset = 200 }))
		expect(host.Parent).toBe(canvas)
		expect(host.Position).toBe(before)

		placement.destroy()
		host:Destroy()
		canvas:Destroy()
	end)

	it("rejects stale Host state after a newer Placement-intent generation", function()
		local canvas = Instance.new("ScrollingFrame")
		local host = Instance.new("Frame")
		local first = assignment("a", 1, 1)
		local second = assignment("a", 2, 1)
		local placement = createHostPlacement(canvas)
		local itemView = {}

		apply(placement, itemView, hostState(host, second), intent(second, { startOffset = 30 }))
		placement.applyPlacementIntent(itemView, intent(second, { startOffset = 80 }))
		local before = host.Position
		placement.applyHostState(itemView, hostState(host, first))

		expect(host.Parent).toBe(canvas)
		expect(host.Position).toBe(before)

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

	it("restores presentation notification after a callback exception", function()
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

		placement.applyHostState(itemView, hostState(host, current))
		expect(function()
			placement.applyPlacementIntent(itemView, intent(current))
		end).toThrow("presentation callback failed")
		placement.applyPlacementIntent(itemView, intent(current))

		expect(calls).toBe(2)
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
			placement.applyHostState(itemView, hostState(host, current))
		end).toThrow("cannot apply Host state after destroy")
		expect(function()
			placement.applyPlacementIntent(itemView, intent(current))
		end).toThrow("cannot apply Placement intent after destroy")
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

	it("measures one Heartbeat later with immutable pushed provenance", function()
		local canvas = Instance.new("ScrollingFrame")
		canvas.Size = UDim2.fromOffset(200, 200)
		local screen = Instance.new("ScreenGui")
		screen.Parent = game:GetService("CoreGui")
		canvas.Parent = screen
		local host = Instance.new("Frame")
		local current = assignment("a", 7, 1)
		local placement, measurements = createHostPlacement(canvas, { selfSizing = true })
		local pushedIntent = intent(current, { itemRevision = 4 })

		apply(placement, {}, hostState(host, current), pushedIntent)
		pushedIntent.measurementIdentity.itemRevision = 99
		expect(#measurements).toBe(0)
		RunService.Heartbeat:Wait()
		task.wait()

		expect(#measurements).toBe(1)
		expect(measurements[1].itemKey).toBe("a")
		expect(measurements[1].assignmentGeneration).toBe(7)
		expect(measurements[1].itemRevision).toBe(4)
		expect(measurements[1].length).toBe(0)

		placement.destroy()
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
		RunService.Heartbeat:Wait()
		task.wait()

		expect(#measurements).toBe(1)
		expect(measurements[1].itemKey).toBe("b")
		expect(measurements[1].assignmentGeneration).toBe(2)
		expect(measurements[1].itemRevision).toBe(8)

		placement.destroy()
		host:Destroy()
		screen:Destroy()
	end)
end)
