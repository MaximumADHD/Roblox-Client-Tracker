local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local CoreGui = game:GetService("CoreGui")

local JestGlobals = require(VirtualEvents.Parent.Dev.JestGlobals)
local afterEach = JestGlobals.afterEach
local beforeEach = JestGlobals.beforeEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest
local Rhodium = require(VirtualEvents.Parent.Dev.Rhodium)
local React = require(VirtualEvents.Parent.React)
local Rodux = require(VirtualEvents.Parent.Rodux)
local ReactRoblox = require(VirtualEvents.Parent.ReactRoblox)
local types = require(VirtualEvents.types)
local network = require(VirtualEvents.network)
local VirtualEventModel = network.NetworkingVirtualEvents.VirtualEventModel
local installReducer = require(VirtualEvents.installReducer)
local ExperienceMediaModel = require(VirtualEvents.Models.ExperienceMediaModel)
local withMockProviders = require(VirtualEvents.withMockProviders)
local EventTile = require(script.Parent.EventTile)

local getFFlagEnableVirtualEvents = require(VirtualEvents.Parent.SharedFlags).getFFlagEnableVirtualEvents

local container
local root
local store

local mockContext: types.SponsoredEvent = {
	title = "Foo",
	name = "Foo",
	pagePath = "/sponsored/foo",
	url = "/sponsored/foo",
}

local mockMediaResponse = ExperienceMediaModel.mock()

local mockVirtualEvent = VirtualEventModel.mock("1")
local mockOnActivated = jest.fn()

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

	network.NetworkingGames.GetExperienceMedia.Mock.reply({
		responseBody = {
			data = {
				mockMediaResponse,
			},
		},
	})
end)

afterEach(function()
	root:unmount()
	container:Destroy()

	network.NetworkingGames.GetExperienceMedia.Mock.clear()

	jest.resetAllMocks()
end)

it("should render the first image of the VirtualEvent's experience", function()
	local prev = game:SetFastFlagForTesting("EnableVirtualEventsV1", true)

	local element = withMockProviders({
		EventTile = React.createElement(EventTile, {
			imageUrl = "",
			context = mockVirtualEvent,
			onActivated = mockOnActivated,
		}),
	}, {
		store = store,
	})

	ReactRoblox.act(function()
		root:render(element)
	end)

	ReactRoblox.act(function()
		store:flush()
	end)

	local eventImage = container:FindFirstChild("EventImage", true) :: ImageLabel

	expect(eventImage.Image).toMatch("rbxassetid://")

	game:SetFastFlagForTesting("EnableVirtualEventsV1", prev)
end)

if not getFFlagEnableVirtualEvents() then
	describe("props.imageUrl", function()
		it("should render the image", function()
			local imageUrl = "rbxassetid://4126499279"

			local element = withMockProviders({
				EventTile = React.createElement(EventTile, {
					imageUrl = imageUrl,
					context = mockContext,
				}, {
					store = store,
				}),
			})

			ReactRoblox.act(function()
				root:render(element)
			end)

			local image = container:FindFirstChild("EventImage", true) :: ImageLabel
			expect(image.Image).toBe(imageUrl)
		end)
	end)
end

describe("props.onActivated", function()
	it("should trigger on click", function()
		local element = withMockProviders({
			EventTile = React.createElement(EventTile, {
				imageUrl = "rbxassetid://4126499279",
				context = if getFFlagEnableVirtualEvents() then mockVirtualEvent else mockContext,
				onActivated = mockOnActivated,
			}),
		}, {
			store = store,
		})

		ReactRoblox.act(function()
			root:render(element)
		end)

		local tile = Rhodium.Element.new(container:FindFirstChild("EventTile"))

		ReactRoblox.act(function()
			tile:click()
		end)

		expect(mockOnActivated).toHaveBeenCalled()
	end)

	it("should trigger on tap", function()
		local element = withMockProviders({
			EventTile = React.createElement(EventTile, {
				imageUrl = "rbxassetid://4126499279",
				context = if getFFlagEnableVirtualEvents() then mockVirtualEvent else mockContext,
				onActivated = mockOnActivated,
			}),
		}, {
			store = store,
		})

		ReactRoblox.act(function()
			root:render(element)
		end)

		local tile = Rhodium.Element.new(container:FindFirstChild("EventTile"))

		ReactRoblox.act(function()
			tile:tap()
			task.wait()
		end)

		expect(mockOnActivated).toHaveBeenCalled()
	end)

	it("should pass the `context` prop when triggered", function()
		local mockOnActivated = jest.fn()

		local element = withMockProviders({
			EventTile = React.createElement(EventTile, {
				imageUrl = "rbxassetid://4126499279",
				context = if getFFlagEnableVirtualEvents() then mockVirtualEvent else mockContext,
				onActivated = mockOnActivated,
			}),
		}, {
			store = store,
		})

		ReactRoblox.act(function()
			root:render(element)
		end)

		local tile = Rhodium.Element.new(container:FindFirstChild("EventTile"))

		ReactRoblox.act(function()
			tile:click()
		end)

		if getFFlagEnableVirtualEvents() then
			expect(mockOnActivated).toHaveBeenCalledWith(mockVirtualEvent)
		else
			expect(mockOnActivated).toHaveBeenCalledWith(mockContext)
		end
	end)
end)

return {}
