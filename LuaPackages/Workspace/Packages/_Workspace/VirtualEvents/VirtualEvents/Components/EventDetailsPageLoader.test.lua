local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local CoreGui = game:GetService("CoreGui")

local JestGlobals = require(VirtualEvents.Parent.Dev.JestGlobals)
local afterEach = JestGlobals.afterEach
local beforeEach = JestGlobals.beforeEach
local expect = JestGlobals.expect
local it = JestGlobals.it
local TestUtils = require(VirtualEvents.Parent.Dev.TestUtils)
local withMockProviders = require(VirtualEvents.withMockProviders)
local GraphQLServer = require(VirtualEvents.Parent.GraphQLServer)
local Http = require(VirtualEvents.Parent.Http)
local Rodux = require(VirtualEvents.Parent.Rodux)
local React = require(VirtualEvents.Parent.React)
local ReactRoblox = require(VirtualEvents.Parent.ReactRoblox)
local installReducer = require(VirtualEvents.installReducer)
local network = require(VirtualEvents.network)
local VirtualEventModel = network.NetworkingVirtualEvents.VirtualEventModel
local ExperienceMediaModel = require(VirtualEvents.Models.ExperienceMediaModel)
local ExperienceDetailsModel = require(VirtualEvents.Models.ExperienceDetailsModel)
local EventDetailsPageLoader = require(script.Parent.EventDetailsPageLoader)
local getFFlagVirtualEventsGraphQL = require(VirtualEvents.Parent.SharedFlags).getFFlagVirtualEventsGraphQL

local RetrievalStatus = Http.Enum.RetrievalStatus

local container
local root
local store

local reducer = Rodux.combineReducers({
	VirtualEvents = installReducer(),
})

local virtualEvent = VirtualEventModel.mock("123456789")
local universeId = tostring(virtualEvent.universeId)
local media = ExperienceMediaModel.mock()
local details = ExperienceDetailsModel.mock()

local mockResolvers = {
	Query = {
		virtualEvent = function(_root, args)
			local virtualEvent = (VirtualEventModel.mock(args.id) :: any) :: GraphQLServer.VirtualEvent

			virtualEvent.eventTime = {
				startUtc = DateTime.now():ToIsoDate(),
				endUtc = DateTime.now():ToIsoDate(),
			}

			return virtualEvent
		end,
	},
}

beforeEach(function()
	container = Instance.new("ScreenGui")
	container.Parent = CoreGui

	root = ReactRoblox.createRoot(container)

	store = Rodux.Store.new(reducer, {
		VirtualEvents = {
			events = {
				[virtualEvent.id] = virtualEvent,
			},
			media = {
				[universeId] = {
					media,
				},
			},
			experienceDetails = {
				[universeId] = details,
			},
		},
	}, {
		Rodux.thunkMiddleware,
	})
end)

afterEach(function()
	root:unmount()
	container:Destroy()
end)

it("should display the EventDetailsPage when the VirtualEvent loads", function()
	local element = withMockProviders({
		EventDetailsPageLoader = React.createElement(EventDetailsPageLoader, {
			virtualEventId = virtualEvent.id,
			currentTime = DateTime.now(),
			mockNetworkStatus = if getFFlagVirtualEventsGraphQL()
				then nil
				else network.RoduxNetworking.Enum.NetworkStatus.Done,
		}),
	}, {
		store = store,
		mockResolvers = mockResolvers,
	})

	ReactRoblox.act(function()
		root:render(element)
	end)

	-- Wait for the VirtualEvent to be fetched so the page can load
	TestUtils.waitUntil(function()
		return container:FindFirstChild("EventDetailsPage", true) ~= nil
	end, 1)

	local page = container:FindFirstChild("EventDetailsPage", true)

	expect(#container:GetChildren()).toBe(1)
	expect(page).toBeDefined()
end)

it("should display an error screen if the VirtualEvent doesn't exist", function()
	local element = withMockProviders({
		EventDetailsPageLoader = React.createElement(EventDetailsPageLoader, {
			virtualEventId = virtualEvent.id,
			currentTime = DateTime.now(),
			mockNetworkStatus = if getFFlagVirtualEventsGraphQL()
				then RetrievalStatus.Failed
				else network.RoduxNetworking.Enum.NetworkStatus.Failed,
		}),
	}, {
		store = store,
		mockResolvers = mockResolvers,
	})

	ReactRoblox.act(function()
		root:render(element)
	end)

	local page = container:FindFirstChild("EventNotFound", true)

	expect(#container:GetChildren()).toBe(1)
	expect(page).toBeDefined()
end)

return {}
