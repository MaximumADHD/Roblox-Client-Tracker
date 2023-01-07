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
local types = require(VirtualEvents.types)
local useRsvpCounters = require(script.Parent.useRsvpCounters)

local container
local root
local store
local element
local rsvpCounters
local fetchingStatus

local reducer = Rodux.combineReducers({
	VirtualEvents = installReducer(),
})

local function TestHook()
	rsvpCounters, fetchingStatus = useRsvpCounters("1")
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

	network.NetworkingVirtualEvents.GetVirtualEventRsvpCounts.Mock.clear()
end)

it("should return default counters before fetching", function()
	ReactRoblox.act(function()
		root:render(element)
	end)

	local expected: types.RsvpCounters = {
		none = 0,
		going = 0,
		maybeGoing = 0,
		notGoing = 0,
	}

	expect(rsvpCounters).toEqual(expected)
	expect(fetchingStatus).toBe(network.RoduxNetworking.Enum.NetworkStatus.NotStarted)
end)

it("should return a table of counters for each RSVP type", function()
	local counters: types.RsvpCounters = {
		none = 0,
		going = 100,
		maybeGoing = 30,
		notGoing = 5,
	}

	network.NetworkingVirtualEvents.GetVirtualEventRsvpCounts.Mock.reply({
		responseBody = {
			counters = counters,
		},
	})

	ReactRoblox.act(function()
		root:render(element)
	end)

	ReactRoblox.act(function()
		store:flush()
	end)

	expect(rsvpCounters).toBe(counters)
	expect(fetchingStatus).toBe(network.RoduxNetworking.Enum.NetworkStatus.Done)
end)

return {}
