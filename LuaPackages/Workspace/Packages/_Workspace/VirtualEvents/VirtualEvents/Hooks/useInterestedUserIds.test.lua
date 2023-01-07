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
local useInterestedUserIds = require(script.Parent.useInterestedUserIds)

local container
local root
local store
local element
local interestedUserIds
local fetchingStatus

local reducer = Rodux.combineReducers({
	VirtualEvents = installReducer(),
})

local function TestHook()
	interestedUserIds, fetchingStatus = useInterestedUserIds("1")
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

	expect(interestedUserIds).toEqual({})
	expect(fetchingStatus).toBe(network.RoduxNetworking.Enum.NetworkStatus.NotStarted)
end)

it("should return an array of IDs for users that are interested in the event", function()
	local data: { types.RsvpResponse } = {
		{
			userId = 1,
			rsvpStatus = "going",
		},
		{
			userId = 2,
			rsvpStatus = "notGoing",
		},
		{
			userId = 3,
			rsvpStatus = "maybeGoing",
		},
		{
			userId = 4,
			rsvpStatus = "none",
		},
		{
			userId = 5,
			rsvpStatus = "going",
		},
	}
	local going1 = data[1]
	local going2 = data[5]

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

	expect(#interestedUserIds).toBe(2)
	expect(interestedUserIds).toEqual(expect.arrayContaining({ tostring(going1.userId), tostring(going2.userId) }))
	expect(fetchingStatus).toBe(network.RoduxNetworking.Enum.NetworkStatus.Done)
end)

return {}
