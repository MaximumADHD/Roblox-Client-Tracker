local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local CoreGui = game:GetService("CoreGui")

local JestGlobals = require(VirtualEvents.Parent.Dev.JestGlobals)
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local Rhodium = require(VirtualEvents.Parent.Dev.Rhodium)
local React = require(VirtualEvents.Parent.React)
local ReactRoblox = require(VirtualEvents.Parent.ReactRoblox)
local withMockProviders = require(VirtualEvents.withMockProviders)
local EventDescription = require(script.Parent.EventDescription)

local mockDescription = "Event description goes here..."
local mockExperienceName = "Experience Name"
local mockExperienceThumbnail = "rbxassetid://7714157841"

local container
local root

beforeEach(function()
	container = Instance.new("ScreenGui")
	container.Parent = CoreGui

	root = ReactRoblox.createRoot(container)
end)

afterEach(function()
	root:unmount()
	container:Destroy()
end)

it("should set Description header and body", function()
	local element = withMockProviders({
		EventDescription = React.createElement(EventDescription, {
			description = mockDescription,
			experienceName = mockExperienceName,
			experienceThumbnail = mockExperienceThumbnail,
		}),
	})

	ReactRoblox.act(function()
		root:render(element)
	end)

	local descriptionHeader = container:FindFirstChild("DescriptionHeader", true) :: TextLabel
	local description = container:FindFirstChild("Description", true) :: TextLabel

	expect(descriptionHeader.Text).toEqual("Description")
	expect(description.Text).toEqual(mockDescription)
end)

it("should trigger onExperienceTileActivated when clicking the experience tile", function()
	local mockOnActivated = jest.fn()

	local element = withMockProviders({
		EventDescription = React.createElement(EventDescription, {
			description = mockDescription,
			experienceName = mockExperienceName,
			experienceThumbnail = mockExperienceThumbnail,
			onExperienceTileActivated = function(...)
				return mockOnActivated(...)
			end,
		}),
	})

	ReactRoblox.act(function()
		root:render(element)
	end)

	local experienceTile = container:FindFirstChild("ExperienceTile", true) :: GuiObject

	expect(experienceTile).toBeDefined()

	ReactRoblox.act(function()
		Rhodium.VirtualInput.Mouse.click(experienceTile.AbsolutePosition)
	end)

	expect(mockOnActivated).toHaveBeenCalled()
end)

return {}
