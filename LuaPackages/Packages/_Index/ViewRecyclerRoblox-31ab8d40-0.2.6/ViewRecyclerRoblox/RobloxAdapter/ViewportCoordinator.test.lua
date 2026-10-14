local Root = script:FindFirstAncestor("ViewRecyclerRoblox")
local Core = require(Root.Parent.ViewRecycler)
local JestGlobals = require(Root.TestDependencies).JestGlobals

local afterEach = JestGlobals.afterEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local Axis = Core.Axis
local RobloxAdapter = require(Root)
local Signals = require(Root.Parent.Signals)

type FakeGui = {
	AbsolutePosition: Vector2,
	AbsoluteSize: Vector2,
	AbsoluteWindowSize: Vector2,
	CanvasPosition: Vector2,
	Parent: FakeGui?,
	Destroying: RBXScriptSignal,
	GetPropertyChangedSignal: (self: FakeGui, property: string) -> RBXScriptSignal,
	IsDescendantOf: (self: FakeGui, ancestor: FakeGui) -> boolean,
	fire: (self: FakeGui, property: string) -> (),
	destroy: (self: FakeGui) -> (),
}

local events: { BindableEvent } = {}

local function createGui(options: {
	position: Vector2?,
	size: Vector2?,
	windowSize: Vector2?,
	canvasPosition: Vector2?,
	parent: FakeGui?,
}?): FakeGui
	local propertyEvents: { [string]: BindableEvent } = {}
	local destroying = Instance.new("BindableEvent")
	table.insert(events, destroying)
	local object = {
		AbsolutePosition = if options and options.position then options.position else Vector2.zero,
		AbsoluteSize = if options and options.size then options.size else Vector2.zero,
		AbsoluteWindowSize = if options and options.windowSize then options.windowSize else Vector2.zero,
		CanvasPosition = if options and options.canvasPosition then options.canvasPosition else Vector2.zero,
		Parent = if options then options.parent else nil,
		Destroying = destroying.Event,
	} :: any

	function object:GetPropertyChangedSignal(property: string): RBXScriptSignal
		local event = propertyEvents[property]
		if event == nil then
			event = Instance.new("BindableEvent")
			propertyEvents[property] = event
			table.insert(events, event)
		end
		return event.Event
	end

	function object:IsDescendantOf(ancestor: FakeGui): boolean
		local parent = self.Parent
		while parent ~= nil do
			if parent == ancestor then
				return true
			end
			parent = parent.Parent
		end
		return false
	end

	function object:fire(property: string)
		local event = propertyEvents[property]
		if event ~= nil then
			event:Fire()
		end
	end

	function object:destroy()
		destroying:Fire()
	end

	return object
end

local function createViewport(position: Vector2?, windowSize: Vector2?): FakeGui
	return createGui({
		position = position or Vector2.new(100, 200),
		windowSize = windowSize or Vector2.new(100, 100),
	})
end

local function createTarget(viewport: FakeGui, position: Vector2, size: Vector2): FakeGui
	return createGui({
		position = position,
		size = size,
		parent = viewport,
	})
end

afterEach(function()
	for _, event in events do
		event:Destroy()
	end
	table.clear(events)
end)

describe("ViewportCoordinator", function()
	it("uses half-open viewport boundaries", function()
		local viewport = createViewport()
		local target = createTarget(viewport, Vector2.new(100, 300), Vector2.new(10, 10))
		local values = {}
		local coordinator = RobloxAdapter.ViewportCoordinator.new({ axis = Axis.Y })
		coordinator.setViewport(viewport :: any)
		coordinator.register(target :: any, function(active)
			table.insert(values, active)
		end)

		target.AbsolutePosition = Vector2.new(100, 299)
		target:fire("AbsolutePosition")
		target.AbsolutePosition = Vector2.new(100, 190)
		target:fire("AbsolutePosition")
		target.AbsolutePosition = Vector2.new(100, 191)
		target:fire("AbsolutePosition")

		expect(values).toEqual({ true, false, true })
		coordinator.destroy()
	end)

	it("activates targets inside the configured overscan margin", function()
		local viewport = createViewport()
		local target = createTarget(viewport, Vector2.new(100, 310), Vector2.new(10, 10))
		local values = {}
		local coordinator = RobloxAdapter.ViewportCoordinator.new({
			axis = Axis.Y,
			activationMargin = 20,
		})
		coordinator.setViewport(viewport :: any)
		coordinator.register(target :: any, function(active)
			table.insert(values, active)
		end)

		target.AbsolutePosition = Vector2.new(100, 320)
		target:fire("AbsolutePosition")

		expect(values).toEqual({ true, false })
		coordinator.destroy()
	end)

	it("retains active targets beyond the activation margin", function()
		local viewport = createViewport()
		local target = createTarget(viewport, Vector2.new(100, 305), Vector2.new(10, 10))
		local values = {}
		local coordinator = RobloxAdapter.ViewportCoordinator.new({
			axis = Axis.Y,
			activationMargin = 10,
			retentionMargin = 30,
		})
		coordinator.setViewport(viewport :: any)
		coordinator.register(target :: any, function(active)
			table.insert(values, active)
		end)

		target.AbsolutePosition = Vector2.new(100, 325)
		target:fire("AbsolutePosition")
		target.AbsolutePosition = Vector2.new(100, 330)
		target:fire("AbsolutePosition")
		target.AbsolutePosition = Vector2.new(100, 325)
		target:fire("AbsolutePosition")

		expect(values).toEqual({ true, false })
		coordinator.destroy()
	end)

	it("batches simultaneous exits before entries", function()
		local viewport = createViewport()
		local first = createTarget(viewport, Vector2.new(100, 200), Vector2.new(10, 100))
		local second = createTarget(viewport, Vector2.new(100, 300), Vector2.new(10, 100))
		local firstActive, setFirstActive = Signals.createSignal(false)
		local secondActive, setSecondActive = Signals.createSignal(false)
		local callbackOrder = {}
		local observedStates = {}
		local disconnectEffect = Signals.createEffect(function(scope)
			table.insert(observedStates, `{firstActive(scope)}:{secondActive(scope)}`)
		end)
		local coordinator = RobloxAdapter.ViewportCoordinator.new({ axis = Axis.Y })
		coordinator.setViewport(viewport :: any)
		coordinator.register(first :: any, function(active)
			table.insert(callbackOrder, `first:{active}`)
			setFirstActive(active)
		end)
		coordinator.register(second :: any, function(active)
			table.insert(callbackOrder, `second:{active}`)
			setSecondActive(active)
		end)
		table.clear(callbackOrder)
		table.clear(observedStates)

		viewport.CanvasPosition = Vector2.new(0, 100)
		second.AbsolutePosition = Vector2.new(100, 200)
		second:fire("AbsolutePosition")

		expect(callbackOrder).toEqual({ "first:false", "second:true" })
		expect(observedStates).toEqual({ "false:true" })
		table.clear(callbackOrder)
		first.AbsolutePosition = Vector2.new(100, 100)
		first:fire("AbsolutePosition")
		viewport:fire("CanvasPosition")
		expect(callbackOrder).toEqual({})
		coordinator.destroy()
		disconnectEffect()
	end)

	it("reacts to viewport and target geometry changes", function()
		local viewport = createViewport()
		local target = createTarget(viewport, Vector2.new(100, 180), Vector2.new(10, 20))
		local values = {}
		local coordinator = RobloxAdapter.ViewportCoordinator.new({ axis = Axis.Y })
		coordinator.setViewport(viewport :: any)
		coordinator.register(target :: any, function(active)
			table.insert(values, active)
		end)

		target.AbsoluteSize = Vector2.new(10, 21)
		target:fire("AbsoluteSize")
		target.AbsolutePosition = Vector2.new(100, 300)
		target:fire("AbsolutePosition")
		viewport.AbsoluteWindowSize = Vector2.new(100, 101)
		viewport:fire("AbsoluteWindowSize")
		viewport.AbsoluteWindowSize = Vector2.new(100, 100)
		viewport:fire("AbsoluteWindowSize")

		expect(values).toEqual({ true, false, true, false })
		coordinator.destroy()
	end)

	it("coordinates horizontal viewports", function()
		local viewport = createViewport(Vector2.new(50, 80), Vector2.new(200, 40))
		local target = createTarget(viewport, Vector2.new(249, 80), Vector2.new(10, 10))
		local values = {}
		local coordinator = RobloxAdapter.ViewportCoordinator.new({ axis = Axis.X })
		coordinator.setViewport(viewport :: any)
		coordinator.register(target :: any, function(active)
			table.insert(values, active)
		end)

		target.AbsolutePosition = Vector2.new(250, 80)
		target:fire("AbsolutePosition")

		expect(values).toEqual({ true, false })
		coordinator.destroy()
	end)

	it("unregisters idempotently and synchronously deactivates", function()
		local viewport = createViewport()
		local target = createTarget(viewport, Vector2.new(100, 200), Vector2.new(10, 10))
		local values = {}
		local coordinator = RobloxAdapter.ViewportCoordinator.new({ axis = Axis.Y })
		coordinator.setViewport(viewport :: any)
		local unregister = coordinator.register(target :: any, function(active)
			table.insert(values, active)
		end)

		unregister()
		unregister()
		target.AbsolutePosition = Vector2.new(100, 400)
		target:fire("AbsolutePosition")

		expect(values).toEqual({ true, false })
		coordinator.destroy()
	end)

	it("releases the old viewport before acquiring the replacement and nil", function()
		local firstViewport = createViewport()
		local secondViewport = createViewport(Vector2.new(400, 500))
		local first = createTarget(firstViewport, Vector2.new(100, 200), Vector2.new(10, 10))
		local second = createTarget(secondViewport, Vector2.new(400, 500), Vector2.new(10, 10))
		local values = {}
		local coordinator = RobloxAdapter.ViewportCoordinator.new({ axis = Axis.Y })
		coordinator.register(first :: any, function(active)
			table.insert(values, `first:{active}`)
		end)
		coordinator.register(second :: any, function(active)
			table.insert(values, `second:{active}`)
		end)

		coordinator.setViewport(firstViewport :: any)
		table.clear(values)
		coordinator.setViewport(secondViewport :: any)
		coordinator.setViewport(nil)

		expect(values).toEqual({ "first:false", "second:true", "second:false" })
		coordinator.destroy()
	end)

	it("disconnects viewport and target observers when destroyed", function()
		local viewport = createViewport()
		local target = createTarget(viewport, Vector2.new(100, 200), Vector2.new(10, 10))
		local values = {}
		local coordinator = RobloxAdapter.ViewportCoordinator.new({ axis = Axis.Y })
		coordinator.setViewport(viewport :: any)
		coordinator.register(target :: any, function(active)
			table.insert(values, active)
		end)

		coordinator.destroy()
		coordinator.destroy()
		target.AbsolutePosition = Vector2.new(100, 400)
		target:fire("AbsolutePosition")
		viewport.CanvasPosition = Vector2.new(0, 100)
		viewport:fire("CanvasPosition")
		coordinator.setViewport(viewport :: any)

		expect(values).toEqual({ true, false })
	end)
end)
