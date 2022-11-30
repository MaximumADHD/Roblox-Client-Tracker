local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local JestGlobals = require(VirtualEvents.Parent.Dev.JestGlobals)
local afterEach = JestGlobals.afterEach
local beforeEach = JestGlobals.beforeEach
local expect = JestGlobals.expect
local it = JestGlobals.it
local React = require(VirtualEvents.Parent.React)
local ReactRoblox = require(VirtualEvents.Parent.ReactRoblox)
local RoactRodux = require(VirtualEvents.Parent.RoactRodux)
local Rodux = require(VirtualEvents.Parent.Rodux)
local installReducer = require(VirtualEvents.installReducer)
local network = require(VirtualEvents.network)
local NetworkingVirtualEvents = require(VirtualEvents.Parent.NetworkingVirtualEvents)
local useVirtualEvent = require(script.Parent.useVirtualEvent)

local container
local root
local store
local element
local virtualEvent
local fetchingStatus

local reducer = Rodux.combineReducers({
	VirtualEvents = installReducer(),
})

local function TestHook()
	virtualEvent, fetchingStatus = useVirtualEvent("1")
	return nil
end

beforeEach(function()
	container = Instance.new("ScreenGui")
	root = ReactRoblox.createRoot(container)

	store = Rodux.Store.new(reducer, nil, {
		Rodux.thunkMiddleware,
	})

	element = React.createElement(RoactRodux.StoreProvider, {
		store = store,
	}, {
		TestHook = React.createElement(TestHook),
	})
end)

afterEach(function()
	root:unmount()
	container:Destroy()

	network.NetworkingVirtualEvents.GetVirtualEvent.Mock.clear()
end)

it("should return nil before fetching", function()
	ReactRoblox.act(function()
		root:render(element)
	end)

	expect(virtualEvent).toBeNil()
	expect(fetchingStatus).toBe(network.RoduxNetworking.Enum.NetworkStatus.NotStarted)
end)

it("should return a VirtualEvent", function()
	network.NetworkingVirtualEvents.GetVirtualEvent.Mock.reply({
		responseBody = NetworkingVirtualEvents.createMockVirtualEventResponse("1"),
	})

	ReactRoblox.act(function()
		root:render(element)
	end)

	ReactRoblox.act(function()
		store:flush()
	end)

	expect(virtualEvent).toBeDefined()
	expect(virtualEvent.id).toBe("1")
	expect(fetchingStatus).toBe(network.RoduxNetworking.Enum.NetworkStatus.Done)
end)

return {}
