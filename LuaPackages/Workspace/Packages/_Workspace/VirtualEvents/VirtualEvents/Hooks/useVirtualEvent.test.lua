local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local JestGlobals = require(VirtualEvents.Parent.Dev.JestGlobals)
local afterEach = JestGlobals.afterEach
local beforeEach = JestGlobals.beforeEach
local expect = JestGlobals.expect
local it = JestGlobals.it
local TestUtils = require(VirtualEvents.Parent.Dev.TestUtils)
local GraphQLServer = require(VirtualEvents.Parent.GraphQLServer)
local Http = require(VirtualEvents.Parent.Http)
local React = require(VirtualEvents.Parent.React)
local ReactRoblox = require(VirtualEvents.Parent.ReactRoblox)
local Rodux = require(VirtualEvents.Parent.Rodux)
local installReducer = require(VirtualEvents.installReducer)
local network = require(VirtualEvents.network)
local NetworkingVirtualEvents = require(VirtualEvents.Parent.NetworkingVirtualEvents)
local VirtualEventModel = NetworkingVirtualEvents.VirtualEventModel
local withMockProviders = require(VirtualEvents.withMockProviders)
local useVirtualEvent = require(script.Parent.useVirtualEvent)
local getFFlagVirtualEventsGraphQL = require(VirtualEvents.Parent.SharedFlags).getFFlagVirtualEventsGraphQL

local RetrievalStatus = Http.Enum.RetrievalStatus

local container
local root
local store
local element
local virtualEvent
local fetchingStatus

local mockResolvers = {
	Query = {
		virtualEvent = function(_root, args)
			local newVirtualEvent = (VirtualEventModel.mock(args.id) :: any) :: GraphQLServer.VirtualEvent

			newVirtualEvent.eventTime = {
				startUtc = DateTime.now():ToIsoDate(),
				endUtc = DateTime.now():ToIsoDate(),
			}

			return newVirtualEvent
		end,
	},
}

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

	if not getFFlagVirtualEventsGraphQL() then
		store = Rodux.Store.new(reducer, nil, {
			Rodux.thunkMiddleware,
		})
	end

	element = withMockProviders({
		TestHook = React.createElement(TestHook),
	}, {
		mockResolvers = mockResolvers,
		store = store,
	})
end)

afterEach(function()
	root:unmount()
	container:Destroy()

	if not getFFlagVirtualEventsGraphQL() then
		network.NetworkingVirtualEvents.GetVirtualEvent.Mock.clear()
	end
end)

it("should return nil before fetching", function()
	ReactRoblox.act(function()
		root:render(element)
	end)

	expect(virtualEvent).toBeNil()
	if getFFlagVirtualEventsGraphQL() then
		expect(fetchingStatus).toBe(RetrievalStatus.Fetching)
	else
		expect(fetchingStatus).toBe(network.RoduxNetworking.Enum.NetworkStatus.NotStarted)
	end
end)

it("should return a VirtualEvent", function()
	if getFFlagVirtualEventsGraphQL() then
		ReactRoblox.act(function()
			root:render(element)
		end)

		TestUtils.waitUntil(function()
			return virtualEvent ~= nil
		end, 1)

		expect(virtualEvent).toBeDefined()
		expect(virtualEvent.id).toBe("1")
		expect(fetchingStatus).toBe(RetrievalStatus.Done)
	else
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
	end
end)

return {}
