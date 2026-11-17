local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent

local JestGlobals = require(Packages.Dev.JestGlobals)
local ReactTestingLibrary = require(Packages.Dev.ReactTestingLibrary)
local ReactTestingUtils = require(Packages.Dev.ReactTestingUtils)
local useButtonGroupFairWidth = require(script.Parent.useButtonGroupFairWidth)

local act = ReactTestingLibrary.act
local afterEach = JestGlobals.afterEach
local beforeEach = JestGlobals.beforeEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local stageHook = ReactTestingUtils.stageHook
local waitForEvents = ReactTestingUtils.waitForEvents

local FFlagStudioDialogManagerTertiaryButtonVariant =
	require(Main.SharedFlags.getFFlagStudioDialogManagerTertiaryButtonVariant)()

describe("useButtonGroupFairWidth", function()
	local screenGui: ScreenGui

	beforeEach(function()
		screenGui = Instance.new("ScreenGui")
		screenGui.Parent = game:GetService("CoreGui")
	end)

	afterEach(function()
		screenGui:Destroy()
	end)

	local function createButton(width: number, text: string): (Frame, TextLabel)
		local button = Instance.new("Frame")
		button.Size = UDim2.fromOffset(width, 20)
		button.Parent = screenGui

		local label = Instance.new("TextLabel")
		label.RichText = true
		label.Text = text
		label.Parent = button

		return button, label
	end

	-- Two 80px buttons overflow a 100px container, so the hook constrains their widths
	local function stageOverflowingButtons()
		local container = Instance.new("Frame")
		container.Size = UDim2.fromOffset(100, 20)
		container.Parent = screenGui
		local firstButton, firstLabel = createButton(80, "Learn more")
		local secondButton = createButton(80, "OK")
		waitForEvents()

		local stage = stageHook(useButtonGroupFairWidth)
		stage.render(0)
		local _, registerButton, onContainerSizeChanged = stage.get()
		act(function()
			registerButton("first", firstButton)
			registerButton("second", secondButton)
			onContainerSizeChanged(container)
		end)
		waitForEvents()

		return stage, firstLabel
	end

	if FFlagStudioDialogManagerTertiaryButtonVariant then
		it("should keep the fair widths when only the label's rich text formatting changes", function()
			local stage, label = stageOverflowingButtons()
			local buttonWidths = stage.get()
			expect(buttonWidths).never.toBeNil()

			act(function()
				label.Text = "<u>Learn more</u>"
			end)
			waitForEvents()

			buttonWidths = stage.get()
			expect(buttonWidths).never.toBeNil()
		end)
	end

	it("should re-measure when the label's content changes", function()
		local stage, label = stageOverflowingButtons()
		local buttonWidths = stage.get()
		expect(buttonWidths).never.toBeNil()

		act(function()
			label.Text = "Read the docs"
		end)
		waitForEvents()

		buttonWidths = stage.get()
		expect(buttonWidths).toBeNil()
	end)
end)
