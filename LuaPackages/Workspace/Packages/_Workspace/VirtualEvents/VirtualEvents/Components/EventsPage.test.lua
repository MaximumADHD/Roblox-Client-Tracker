-- Remove this file with FFlagRemoveEventsPageFromMoreTab

local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local CoreGui = game:GetService("CoreGui")

local JestGlobals = require(VirtualEvents.Parent.Dev.JestGlobals)
local afterEach = JestGlobals.afterEach
local beforeEach = JestGlobals.beforeEach
local expect = JestGlobals.expect
local it = JestGlobals.it
local Rodux = require(VirtualEvents.Parent.Rodux)
local React = require(VirtualEvents.Parent.React)
local ReactRoblox = require(VirtualEvents.Parent.ReactRoblox)
local network = require(VirtualEvents.network)
local RoduxNetworking = network.RoduxNetworking
local types = require(VirtualEvents.types)
local installReducer = require(VirtualEvents.installReducer)
local withMockProviders = require(VirtualEvents.withMockProviders)
local EventsPage = require(script.Parent.EventsPage)

local container
local root
local store

local reducer = Rodux.combineReducers({
	VirtualEvents = installReducer(),
})

beforeEach(function()
	container = Instance.new("ScreenGui")
	container.Parent = CoreGui

	root = ReactRoblox.createRoot(container)

	store = Rodux.Store.new(reducer, nil, {
		Rodux.thunkMiddleware,
	})

	network.NetworkingVirtualEvents.GetActiveVirtualEvents.Mock.reply({
		responseBody = {
			data = {},
		},
	})

	network.NetworkingSponsoredEvents.GetSponsoredEvents.Mock.reply({
		responseBody = {
			data = {},
		},
	})
end)

afterEach(function()
	root:unmount()
	container:Destroy()

	network.NetworkingVirtualEvents.GetActiveVirtualEvents.Mock.clear()
	network.NetworkingSponsoredEvents.GetSponsoredEvents.Mock.clear()
end)

local function EventsPageWithServices(props: EventsPage.Props)
	return withMockProviders({
		EventsPage = React.createElement(EventsPage, props),
	}, {
		store = store,
	})
end

it("should display a loading state when fetching", function()
	local element = React.createElement(EventsPageWithServices, {
		mockDataStatus = RoduxNetworking.Enum.NetworkStatus.Fetching,
	})

	ReactRoblox.act(function()
		root:render(element)
	end)

	local eventsPage = container:FindFirstChild("EventsPage")

	expect(#eventsPage:GetChildren()).toBe(1)
	expect(eventsPage:FindFirstChildOfClass("ImageLabel")).toBeDefined()
end)

it("should display a failure state when data could not be fetched", function()
	local element = React.createElement(EventsPageWithServices, {
		mockDataStatus = RoduxNetworking.Enum.NetworkStatus.Failed,
	})

	ReactRoblox.act(function()
		root:render(element)
	end)

	local eventsPage = container:FindFirstChild("EventsPage")
	local text = eventsPage:FindFirstChild("Text", true) :: TextLabel

	expect(text).toBeDefined()
	expect(text.Text).toBe("No internet connection")
end)

it("should display the events when data is loaded", function()
	local element = React.createElement(EventsPageWithServices, {
		mockDataStatus = RoduxNetworking.Enum.NetworkStatus.Done,
	})

	ReactRoblox.act(function()
		root:render(element)
	end)

	local eventGridContainer = container:FindFirstChild("EventGridContainer", true)

	expect(eventGridContainer).toBeDefined()
end)

it("should only display events that pass validation", function()
	local goodEvent: types.SponsoredEvent = {
		name = "Good Event",
		title = "Good Event",
		pagePath = "/sponsored/good-event",
		url = "/sponsored/good-event",
		imageUrl = "https://images.rbxcdn.com/ecf1f303830daecfb69f2388c72cb6b8",
	}

	local badEvent: types.SponsoredEvent = {
		name = "Bad Event",
		title = "Bad Event",
		pagePath = "/sponsored/bad-event",
		url = "/sponsored/bad-event",
	}

	local element = withMockProviders({
		EventsPage = React.createElement(EventsPage, {
			mockDataStatus = RoduxNetworking.Enum.NetworkStatus.Done,
		}),
	}, {
		initialStoreState = {
			VirtualEvents = {
				legacy = {
					goodEvent,
					badEvent,
				},
			},
		},
	})

	ReactRoblox.act(function()
		root:render(element)
	end)

	local eventGridContainer = container:FindFirstChild("EventGridContainer", true)

	expect(eventGridContainer).toBeDefined()

	local tiles = 0
	for _, descendant in eventGridContainer:GetDescendants() do
		if descendant.Name == "EventImage" then
			tiles += 1
		end
	end

	expect(tiles).toBe(1)
end)

return {}
