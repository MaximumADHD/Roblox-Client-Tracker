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
local ReactRoblox = require(VirtualEvents.Parent.ReactRoblox)
local types = require(VirtualEvents.types)
local network = require(VirtualEvents.network)
local withMockProviders = require(VirtualEvents.withMockProviders)
local EventTile = require(script.Parent.EventTile)

local container
local root

local mockContext: types.SponsoredEvent = {
	title = "Foo",
	name = "Foo",
	pagePath = "/sponsored/foo",
	url = "/sponsored/foo",
}

local mockOnActivated = jest.fn()

beforeEach(function()
	container = Instance.new("ScreenGui")
	container.Parent = CoreGui

	root = ReactRoblox.createRoot(container)
end)

afterEach(function()
	root:unmount()
	container:Destroy()

	network.NetworkingGames.GetExperienceMedia.Mock.clear()

	jest.resetAllMocks()
end)

describe("props.imageUrl", function()
	it("should render the image", function()
		local imageUrl = "rbxassetid://4126499279"

		local element = withMockProviders({
			EventTile = React.createElement(EventTile, {
				imageUrl = imageUrl,
				context = mockContext,
			}),
		})

		ReactRoblox.act(function()
			root:render(element)
		end)

		local image = container:FindFirstChild("EventImage", true) :: ImageLabel
		expect(image.Image).toBe(imageUrl)
	end)
end)

describe("props.onActivated", function()
	it("should trigger on click", function()
		local element = withMockProviders({
			EventTile = React.createElement(EventTile, {
				imageUrl = "rbxassetid://4126499279",
				context = mockContext,
				onActivated = mockOnActivated,
			}),
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
				context = mockContext,
				onActivated = mockOnActivated,
			}),
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
				context = mockContext,
				onActivated = mockOnActivated,
			}),
		})

		ReactRoblox.act(function()
			root:render(element)
		end)

		local tile = Rhodium.Element.new(container:FindFirstChild("EventTile"))

		ReactRoblox.act(function()
			tile:click()
		end)

		expect(mockOnActivated).toHaveBeenCalledWith(mockContext)
	end)
end)

return {}
