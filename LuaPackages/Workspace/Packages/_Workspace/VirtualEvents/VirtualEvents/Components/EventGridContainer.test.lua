local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local CoreGui = game:GetService("CoreGui")

local JestGlobals = require(VirtualEvents.Parent.Dev.JestGlobals)
local afterAll = JestGlobals.afterAll
local afterEach = JestGlobals.afterEach
local beforeAll = JestGlobals.beforeAll
local beforeEach = JestGlobals.beforeEach
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest
local Rodux = require(VirtualEvents.Parent.Rodux)
local React = require(VirtualEvents.Parent.React)
local ReactRoblox = require(VirtualEvents.Parent.ReactRoblox)
local installReducer = require(VirtualEvents.installReducer)
local network = require(VirtualEvents.network)
local NetworkingVirtualEvents = network.NetworkingVirtualEvents
local withMockProviders = require(VirtualEvents.withMockProviders)
local EventGridContainer = require(script.Parent.EventGridContainer)

local container
local root
local store

local reducer = Rodux.combineReducers({
	VirtualEvents = installReducer(),
})

beforeAll(function()
	network.NetworkingGames.GetExperienceMedia.Mock.reply({
		responseBody = {
			data = {},
		},
	})
end)

afterAll(function()
	network.NetworkingGames.GetExperienceMedia.Mock.clear()
end)

beforeEach(function()
	container = Instance.new("ScreenGui")
	container.Parent = CoreGui

	root = ReactRoblox.createRoot(container)

	store = Rodux.Store.new(reducer, nil, {
		Rodux.thunkMiddleware,
	})
end)

afterEach(function()
	root:unmount()
	container:Destroy()

	NetworkingVirtualEvents.GetActiveVirtualEvents.Mock.clear()
	jest.resetAllMocks()
end)

it("should create and destroy without errors", function()
	NetworkingVirtualEvents.GetActiveVirtualEvents.Mock.reply({
		responseBody = {
			data = {},
		},
	})

	local element = withMockProviders({
		EventGridContainer = React.createElement(EventGridContainer),
	}, {
		store = store,
	})

	expect(function()
		ReactRoblox.act(function()
			root:render(element)
		end)
	end).never.toThrow()
end)

it("should create and destroy without errors with all props", function()
	NetworkingVirtualEvents.GetActiveVirtualEvents.Mock.reply({
		responseBody = {
			data = {},
		},
	})

	local element = withMockProviders({
		EventGridContainer = React.createElement(EventGridContainer, {
			sponsoredEvents = {
				{
					name = "some event",
					title = "some event",
					pagePath = "/sponsored/SomeEvent",
					url = "/sponsored/SomeEvent",
					imageUrl = "rbxassetid://4126499279",
				},
			},
			onButtonActivated = function() end,
			position = UDim2.fromScale(0.5, 0.5),
			size = UDim2.fromScale(1, 1),
		}),
	}, {
		store = store,
	})

	expect(function()
		ReactRoblox.act(function()
			root:render(element)
		end)
	end).never.toThrow()
end)

return {}
