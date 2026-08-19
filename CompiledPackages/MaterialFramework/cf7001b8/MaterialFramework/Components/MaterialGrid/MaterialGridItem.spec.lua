-- Verifies the label scrim color is gated by getFFlagMaterialGridItemLabelFoundationStyle:
-- off keeps the legacy hardcoded surface color; on switches to the Style-driven value.

local main = script:FindFirstAncestor("MaterialFramework")
local Packages = main.Parent

local React = require(Packages.React)
local JestGlobals = require(Packages.Dev.JestGlobals)
local ReactTestingLibrary = require(Packages.Dev.ReactTestingLibrary)

local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect

local render = ReactTestingLibrary.render

local mockContext = require(main.TestHelpers.mockContext)
local guiTestUtils = require(main.TestHelpers.waitForGuiLayout)
local waitForGuiLayout = guiTestUtils.waitForGuiLayout

local getFFlagMaterialGridItemLabelFoundationStyle = require(main.Flags.getFFlagMaterialGridItemLabelFoundationStyle)

local MaterialGridItem = require(script.Parent.MaterialGridItem)

local LABEL_SCRIM_SURFACE_0 = Color3.fromHex("#121215")
local STYLE_SCRIM_COLOR = Color3.fromRGB(10, 20, 30)

local defaultStyle = {
	GridItemBackgroundColor = Color3.fromRGB(40, 40, 40),
	GridItemBackgroundColorApplied = Color3.fromRGB(50, 50, 50),
	GridItemBackgroundColorHovered = Color3.fromRGB(55, 55, 55),
	GridItemBorderColor = Color3.fromRGB(60, 60, 60),
	GridItemBorderColorSelected = Color3.fromRGB(70, 70, 70),
	GridItemCornerRadius = UDim.new(0, 6),
	GridItemLabelPadding = { PaddingBottom = UDim.new(0, 6), PaddingLeft = UDim.new(0, 6) },
	ItemLabelScrimColor = STYLE_SCRIM_COLOR,
	ItemLabelTextColor = Color3.new(1, 1, 1),
	ShimmerSizeOffset = 2,
	TextSize = 14,
	TooltipDelay = 0.3,
}

local function stubCustomPreview(props: { Size: UDim2 })
	return React.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = props.Size,
	})
end

local function createTestElement()
	return mockContext({
		Item = React.createElement(MaterialGridItem, {
			CanvasPosition = Vector2.new(),
			CustomPreview = stubCustomPreview,
			GridItemSize = 128,
			OnClick = function() end,
			Position = UDim2.new(),
			ShowGridLabels = true,
			Size = UDim2.new(0, 128, 0, 128),
			Style = defaultStyle,
			Text = "Grass",
		}),
	})
end

describe("MaterialGridItem label scrim", function()
	it("uses the scrim color matching the current flag state", function()
		local result = render(createTestElement())
		waitForGuiLayout(result.container)

		local expectedColor = if getFFlagMaterialGridItemLabelFoundationStyle()
			then STYLE_SCRIM_COLOR
			else LABEL_SCRIM_SURFACE_0

		local scrim = result.getByTestId("MaterialGridItemScrim") :: Frame
		expect(scrim.BackgroundColor3).toEqual(expectedColor)
	end)
end)
