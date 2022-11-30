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
local NetworkingVirtualEvents = network.NetworkingVirtualEvents
local types = require(VirtualEvents.types)
local useActiveVirtualEvents = require(script.Parent.useActiveVirtualEvents)

local container
local root
local store
local element
local virtualEvents: { types.VirtualEvent }
local fetchingStatus: string

local reducer = Rodux.combineReducers({
	VirtualEvents = installReducer(),
})

local function TestHook()
	virtualEvents, fetchingStatus = useActiveVirtualEvents()
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

	NetworkingVirtualEvents.GetActiveVirtualEvents.Mock.clear()
end)

it("should return an empty table before fetching", function()
	NetworkingVirtualEvents.GetActiveVirtualEvents.Mock.reply({
		responseBody = {
			data = {},
		},
	})

	ReactRoblox.act(function()
		root:render(element)
	end)

	expect(virtualEvents).toEqual({})
	expect(fetchingStatus).toEqual(network.RoduxNetworking.Enum.NetworkStatus.NotStarted)
end)

it("should order VirtualEvents by start time", function()
	local now = DateTime.now()

	local soonerEvent = NetworkingVirtualEvents.createMockVirtualEventResponse("1")
	soonerEvent.eventTime.startUtc = now:ToIsoDate()

	-- This event is a minute in the future so it should come second
	local laterEvent = NetworkingVirtualEvents.createMockVirtualEventResponse("2")
	laterEvent.eventTime.startUtc = DateTime.fromUnixTimestamp(now.UnixTimestamp + 60):ToIsoDate()

	NetworkingVirtualEvents.GetActiveVirtualEvents.Mock.reply({
		responseBody = {
			data = {
				laterEvent,
				soonerEvent,
			},
		},
	})

	ReactRoblox.act(function()
		root:render(element)
	end)

	ReactRoblox.act(function()
		store:flush()
	end)

	expect(virtualEvents[1].id).toEqual(soonerEvent.id)
	expect(virtualEvents[2].id).toEqual(laterEvent.id)
	expect(fetchingStatus).toEqual(network.RoduxNetworking.Enum.NetworkStatus.Done)
end)

it("should return an empty table if something goes wrong", function()
	NetworkingVirtualEvents.GetActiveVirtualEvents.Mock.replyWithError("failed")

	ReactRoblox.act(function()
		root:render(element)
	end)

	ReactRoblox.act(function()
		store:flush()
	end)

	expect(virtualEvents).toEqual({})
	expect(fetchingStatus).toBe(network.RoduxNetworking.Enum.NetworkStatus.Failed)
end)

return {}
