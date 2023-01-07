local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local CollectionService = game:GetService("CollectionService")
local CoreGui = game:GetService("CoreGui")

local JestGlobals = require(VirtualEvents.Parent.Dev.JestGlobals)
local Rhodium = require(VirtualEvents.Parent.Dev.Rhodium)
local afterAll = JestGlobals.afterAll
local afterEach = JestGlobals.afterEach
local beforeAll = JestGlobals.beforeAll
local beforeEach = JestGlobals.beforeEach
local describe = JestGlobals.describe
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
local element
local mockOnEventTileActivated = jest.fn()

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

	element = withMockProviders({
		EventGridContainer = React.createElement(EventGridContainer, {
			onEventTileActivated = mockOnEventTileActivated,
		}),
	}, {
		store = store,
	})
end)

afterEach(function()
	root:unmount()
	container:Destroy()

	NetworkingVirtualEvents.GetActiveVirtualEvents.Mock.clear()
	jest.resetAllMocks()
end)

describe("FFlagEnableVirtualEvents", function()
	local prevEnableVirtualEvents
	beforeAll(function()
		prevEnableVirtualEvents = game:SetFastFlagForTesting("EnableVirtualEventsV1", true)
	end)
	afterAll(function()
		game:SetFastFlagForTesting("EnableVirtualEventsV1", prevEnableVirtualEvents)
	end)

	it("should display an empty state when no VirtualEvents are active", function()
		NetworkingVirtualEvents.GetActiveVirtualEvents.Mock.reply({
			responseBody = {
				data = {},
			},
		})

		ReactRoblox.act(function()
			root:render(element)
		end)

		local emptyIcon = container:FindFirstChild("Icon", true)
		expect(emptyIcon).toBeDefined()
	end)

	it("should display a grid when at least one VirtualEvent is active", function()
		NetworkingVirtualEvents.GetActiveVirtualEvents.Mock.reply({
			responseBody = {
				data = {
					NetworkingVirtualEvents.createMockVirtualEventResponse("1"),
					NetworkingVirtualEvents.createMockVirtualEventResponse("2"),
					NetworkingVirtualEvents.createMockVirtualEventResponse("3"),
				},
			},
		})

		ReactRoblox.act(function()
			root:render(element)
		end)

		ReactRoblox.act(function()
			store:flush()
		end)

		local tiles = CollectionService:GetTagged("EventTile")

		expect(#tiles).toBe(3)
	end)

	describe("onEventTileActivated", function()
		local tile

		beforeEach(function()
			NetworkingVirtualEvents.GetActiveVirtualEvents.Mock.reply({
				responseBody = {
					data = {
						NetworkingVirtualEvents.createMockVirtualEventResponse("1"),
					},
				},
			})

			ReactRoblox.act(function()
				root:render(element)
			end)

			ReactRoblox.act(function()
				store:flush()
			end)

			local tiles = CollectionService:GetTagged("EventTile")
			tile = Rhodium.Element.new(tiles[1])
		end)

		it("should fire on click", function()
			ReactRoblox.act(function()
				tile:click()
			end)

			expect(mockOnEventTileActivated).toHaveBeenCalled()
		end)

		it("should pass the VirtualEvent that was activated", function()
			ReactRoblox.act(function()
				tile:click()
			end)

			local calls = mockOnEventTileActivated.mock.calls[1]

			expect(calls).toBeDefined()
			expect(calls[1]).toBeDefined()
			expect(calls[1].title).toBe("Event Title")
		end)
	end)
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
