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
local types = require(VirtualEvents.types)
local network = require(VirtualEvents.network)
local useRsvps = require(script.Parent.useRsvps)

local container
local root
local store
local element
local rsvps
local fetchingStatus

local reducer = Rodux.combineReducers({
	VirtualEvents = installReducer(),
})

local function TestHook()
	rsvps, fetchingStatus = useRsvps("1")
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

	network.NetworkingVirtualEvents.GetVirtualEventRsvps.Mock.clear()
end)

it("should return an empty table before fetching", function()
	ReactRoblox.act(function()
		root:render(element)
	end)

	expect(rsvps).toEqual({})
	expect(fetchingStatus).toBe(network.RoduxNetworking.Enum.NetworkStatus.NotStarted)
end)

it("should return the RSVP state", function()
	local userId = -1
	local data: { types.RsvpResponse } = {
		{
			userId = userId,
			rsvpStatus = "going",
		},
	}

	network.NetworkingVirtualEvents.GetVirtualEventRsvps.Mock.reply({
		responseBody = {
			data = data,
		},
	})

	ReactRoblox.act(function()
		root:render(element)
	end)

	ReactRoblox.act(function()
		store:flush()
	end)

	expect(rsvps[tostring(userId)]).toEqual(data[1])
	expect(fetchingStatus).toBe(network.RoduxNetworking.Enum.NetworkStatus.Done)
end)

return {}
