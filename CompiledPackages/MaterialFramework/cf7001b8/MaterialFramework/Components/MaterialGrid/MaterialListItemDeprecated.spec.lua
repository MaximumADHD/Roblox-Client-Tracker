-- Smoke test in isolation with CustomPreview (avoids MaterialPreview/ForwardRef in Jest).

local main = script:FindFirstAncestor("MaterialFramework")
local Packages = main.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)
local JestGlobals = require(Packages.Dev.JestGlobals)
local ReactTestingLibrary = require(Packages.Dev.ReactTestingLibrary)

local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect

local render = ReactTestingLibrary.render
local fireEvent = ReactTestingLibrary.fireEvent

local mockContext = require(main.TestHelpers.mockContext)
local guiTestUtils = require(main.TestHelpers.waitForGuiLayout)
local waitForGuiLayout = guiTestUtils.waitForGuiLayout
local treeHasAnyInstance = guiTestUtils.treeHasAnyInstance

local MaterialListItemDeprecated = require(script.Parent.MaterialListItemDeprecated)

local defaultStyle = {
	ListItemBackgroundColor = Color3.fromRGB(40, 40, 40),
	ListItemSpacing = 8,
	TextSize = 14,
}

local function stubCustomPreview(props: { Size: UDim2 })
	return React.createElement("Frame", {
		Name = "MaterialListItemDeprecatedSpecStubPreview",
		BackgroundTransparency = 1,
		Size = props.Size,
	})
end

local function createTestElement(overrides: { [string]: any }?)
	local props = Dash.join({
		CustomPreview = stubCustomPreview,
		LayoutOrder = 1,
		Material = Enum.Material.Mud,
		OnClick = function() end,
		OnRightClick = function() end,
		Position = UDim2.new(),
		Size = UDim2.new(0, 200, 0, 40),
		Style = defaultStyle,
		Text = "Mud",
	}, overrides or {})

	return mockContext({
		Row = React.createElement(MaterialListItemDeprecated, props),
	})
end

local function expectRenderedContent(container: Instance)
	expect(treeHasAnyInstance(container)).toBe(true)
end

local function findFirstNamedDescendant(root: Instance, name: string): Instance?
	for _, d in root:GetDescendants() do
		if d.Name == name then
			return d
		end
	end
	return nil
end

local function firstGuiButtonUnder(root: Instance): GuiButton?
	for _, d in root:GetDescendants() do
		if d:IsA("GuiButton") then
			return d
		end
	end
	return nil
end

describe("MaterialListItemDeprecated", function()
	describe("with CustomPreview (no MaterialPreview)", function()
		it("should mount stub preview, label, and fire OnClick", function()
			local clickCount = 0
			local onClick = function()
				clickCount += 1
			end
			local result = render(createTestElement({ OnClick = onClick }))
			waitForGuiLayout(result.container)

			expectRenderedContent(result.container)
			expect(findFirstNamedDescendant(result.container, "MaterialListItemDeprecatedSpecStubPreview")).never.toBeNil()

			local foundLabel: TextLabel? = nil
			for _, d in result.container:GetDescendants() do
				if d:IsA("TextLabel") and (d :: TextLabel).Text == "Mud" then
					foundLabel = d :: TextLabel
					break
				end
			end
			expect(foundLabel).never.toBeNil()

			local button = firstGuiButtonUnder(result.container)
			expect(button).never.toBeNil()
			fireEvent.click(button :: GuiButton)
			expect(clickCount).toBe(1)
		end)
	end)
end)
