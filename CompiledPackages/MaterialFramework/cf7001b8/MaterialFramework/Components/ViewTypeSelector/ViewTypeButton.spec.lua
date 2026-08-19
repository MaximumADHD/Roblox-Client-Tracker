local main = script:FindFirstAncestor("MaterialFramework")
local Packages = main.Parent

local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)
local JestGlobals = require(Packages.Dev.JestGlobals)

local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect

local mockContext = require(main.TestHelpers.mockContext)

local Constants = require(main.Util.Constants)
local ViewType = require(main.Enums.ViewType)

local ViewTypeButton = require(script.Parent.ViewTypeButton)

local function expectRenderedContent(container: Instance)
	local anyDescendant = false
	for _ in container:GetDescendants() do
		anyDescendant = true
		break
	end
	expect(anyDescendant).toBe(true)
end

--- Minimal style matching ViewTypeSelector / Stylizer shape for ViewTypeButton.
local function testStyle()
	return {
		BackgroundColor = Color3.fromRGB(40, 40, 40),
		GridIcon = "rbxassetid://0",
		IconColor = Color3.new(1, 1, 1),
		IconSize = 16,
		ItemSize = UDim2.fromOffset(120, 32),
		ListIcon = "rbxassetid://0",
		SliderAnchorPoint = Vector2.new(0, 0),
		SliderPosition = UDim2.fromOffset(8, 40),
		SliderSize = UDim2.fromOffset(104, 20),
	}
end

describe("ViewTypeButton", function()
	it("should render grid option with grid size slider", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local element = mockContext({
			Button = React.createElement(ViewTypeButton, {
				GridSize = 100,
				LayoutOrder = 1,
				OnClick = function() end,
				OnGridSizeChanged = function(_size: number) end,
				Style = testStyle(),
				Text = "Grid",
				ViewType = ViewType.Grid,
			}),
		})
		ReactRoblox.act(function()
			root:render(element)
		end)
		expectRenderedContent(container)
		ReactRoblox.act(function()
			root:unmount()
		end)
	end)

	it("should render list option without grid size slider", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local element = mockContext({
			Button = React.createElement(ViewTypeButton, {
				GridSize = Constants.GRID_SIZE_MIN,
				LayoutOrder = 2,
				OnClick = function() end,
				OnGridSizeChanged = function(_size: number) end,
				Style = testStyle(),
				Text = "List",
				ViewType = ViewType.List,
			}),
		})
		ReactRoblox.act(function()
			root:render(element)
		end)
		expectRenderedContent(container)
		ReactRoblox.act(function()
			root:unmount()
		end)
	end)
end)
