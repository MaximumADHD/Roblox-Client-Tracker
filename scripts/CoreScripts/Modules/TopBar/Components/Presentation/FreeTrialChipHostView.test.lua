local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local RTL = require(CorePackages.Packages.Dev.ReactTestingLibrary)
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe, it, expect = JestGlobals.describe, JestGlobals.it, JestGlobals.expect
local act = require(CorePackages.Packages.ReactRoblox).act

local FreeTrialChipHostView = require(script.Parent.FreeTrialChipHostView)

local POSITION = UDim2.new(1, -12, 0, 4)

local slotHostVisible: (boolean | React.Binding<boolean>)? = nil

local function MockSlot(props: FreeTrialChipHostView.SlotProps)
	slotHostVisible = props.hostVisible
	return React.createElement("TextButton", {
		Size = UDim2.fromOffset(80, 24),
		Text = "",
		[React.Tag] = "data-testid=FreeTrialTopBarSlot",
	})
end

local function renderView(props: FreeTrialChipHostView.Props)
	local screen
	act(function()
		screen = RTL.render(React.createElement("Frame", {
			Size = UDim2.fromOffset(400, 80),
		}, {
			Host = React.createElement(FreeTrialChipHostView, props),
		}))
	end)
	return screen
end

local function hostProps(overrides: {
	zIndex: number?,
	visible: (boolean | React.Binding<boolean>)?,
}): FreeTrialChipHostView.Props
	return {
		position = POSITION,
		size = UDim2.fromOffset(188, 36),
		zIndex = if overrides.zIndex ~= nil then overrides.zIndex else 2,
		visible = overrides.visible,
		maxWidth = 188,
		onAbsoluteSizeChanged = function() end,
		onActivated = function() end,
		slot = MockSlot,
	}
end

describe("FreeTrialChipHostView", function()
	it("anchors the host frame to the given top-right position", function()
		local screen = renderView(hostProps({}))
		local host = screen.getByTestId("FreeTrialChipHost")
		expect(host.AnchorPoint).toBe(Vector2.new(1, 0))
		expect(host.Position).toBe(POSITION)
	end)

	it("draws the host at the given zIndex", function()
		local screen = renderView(hostProps({ zIndex = 2 }))
		expect(screen.getByTestId("FreeTrialChipHost").ZIndex).toBe(2)
	end)

	it("hides the host when visible is false", function()
		local screen = renderView(hostProps({ visible = false }))
		expect(screen.getByTestId("FreeTrialChipHost").Visible).toBe(false)
	end)

	it("passes a hidden host through to the slot", function()
		renderView(hostProps({ visible = false }))
		expect(slotHostVisible).toBe(false)
	end)

	it("passes the host visibility binding through to the slot", function()
		local visible = React.createBinding(false)
		renderView(hostProps({ visible = visible }))
		expect(slotHostVisible).toBe(visible)
	end)
end)
