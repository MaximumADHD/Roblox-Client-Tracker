return function()	
	local Packages = script:FindFirstAncestor("Packages")
	local jest = require(Packages.Dev.JestRoblox).Globals
	local expect = jest.expect

	local DeveloperTools = require(Packages.DeveloperTools)
	local Roact17TargetWatcher = require(Packages.DeveloperTools.Roact17.Classes.Roact17TargetWatcher)

	local targetWorker,
		mockBridge,
		mockAgent,
		mockRenderer,
		mockHook

	local inspector, listeners

	beforeEach(function()
		inspector = DeveloperTools.forLibrary("TestLibrary", {})
		mockBridge = {}
		function mockBridge:addListener(name, handler)
			listeners[name] = handler
		end
		mockAgent = {}
		mockRenderer = {}
		function mockRenderer:getDisplayNameForRoot()
			return "Howdy"
		end
		mockHook = {
			rendererInterfaces = {mockRenderer}
		}
		function mockAgent:inspectElement(id: number) end
		local mockStore = {}
		function mockStore:getRoots()
			return {10}
		end
		function mockStore:addListener(name, handler)
			listeners[name] = handler
		end
		function mockStore:getRendererIDForElement()
			return 1
		end
		listeners = {}
		targetWorker = Roact17TargetWatcher.new(inspector, {
			bridge = mockBridge,
			agent = mockAgent,
			store = mockStore,
			hook = mockHook,
		}, 1)

	end)

	describe("Roact17Profiler", function()
		it('can attach to and later disconnect from a Roact17 tree', function()
			listeners.roots()
			local targetId = targetWorker.rootToTarget[10]
			local target = inspector.targets[targetId]
			target.listener.onEvent("TEST")
			expect(tostring(inspector.workers[targetId])).toBe("Roact17Worker")
			listeners.shutdown()
			expect(inspector.workers[targetId]).toBe(nil)
		end)
	end)
end
