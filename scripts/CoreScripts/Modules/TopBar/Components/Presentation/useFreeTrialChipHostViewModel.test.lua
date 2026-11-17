local CorePackages = game:GetService("CorePackages")
local Packages = CorePackages.Workspace.Packages

local React = require(CorePackages.Packages.React)
local RTL = require(CorePackages.Packages.Dev.ReactTestingLibrary)
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe, it, expect = JestGlobals.describe, JestGlobals.it, JestGlobals.expect
local beforeEach, jest = JestGlobals.beforeEach, JestGlobals.jest
local act = require(CorePackages.Packages.ReactRoblox).act
local waitUntil = require(Packages.TestUtils).waitUntil

local TopBar = script.Parent.Parent.Parent
local Chrome = TopBar.Parent.Chrome

local FFlagEnableFreeTrialTopBarChip = jest.requireActual(Packages.InExperienceShop.FFlagEnableFreeTrialTopBarChip)
local FFlagCenterInExperienceShopWindow =
	jest.requireActual(Packages.InExperienceShop.FFlagCenterInExperienceShopWindow)

local chromeEnabled = true
local toggleWindow = jest.fn()
local toggleInExperienceShopWindow = jest.fn()
local chromeService = {
	toggleWindow = function(_self, windowId: string)
		toggleWindow(windowId)
	end,
}

jest.mock(Packages.Chrome, function()
	return {
		Enabled = function()
			return chromeEnabled
		end,
	}
end)

local shopExports = {
	FFlagEnableFreeTrialTopBarChip = FFlagEnableFreeTrialTopBarChip,
	FFlagCenterInExperienceShopWindow = FFlagCenterInExperienceShopWindow,
	FreeTrialTopBarSlot = function()
		return nil
	end,
}
jest.mock(Packages.InExperienceShop, function()
	return shopExports
end)

jest.mock(Chrome.Integrations.InExperienceShop.ShopWindowLayout, function()
	return {
		toggleInExperienceShopWindow = toggleInExperienceShopWindow,
	}
end)

jest.mock(Chrome.Service, function()
	return chromeService
end)

local useFreeTrialChipHostViewModel = require(script.Parent.useFreeTrialChipHostViewModel)
local ChromeConstants = require(Chrome.ChromeShared.Unibar.Constants)

local PROBE_WIDTH = 188

-- React.Tag shares an untyped key with Change and Event, so each props table needs one value type.
type SizeSymbolProp = string | (rbx: GuiObject) -> ()
type ActivatedSymbolProp = string | () -> ()

type ProbeProps = {
	position: UDim2,
	size: UDim2,
	zIndex: number?,
	visible: boolean?,
}

local function Probe(props: ProbeProps): React.ReactNode
	local viewProps = useFreeTrialChipHostViewModel(props)
	if viewProps == nil then
		return nil
	end

	local widthLabel = if typeof(viewProps.maxWidth) == "number" then tostring(viewProps.maxWidth) else "unset"
	-- createElement's ReactElement does not subtype React.Node.
	return React.createElement("Frame", {
		Size = props.size,
		ZIndex = viewProps.zIndex,
		Visible = if typeof(viewProps.visible) == "boolean" then viewProps.visible else true,
		[React.Tag] = "data-testid=ViewModelProbe" :: SizeSymbolProp,
		[React.Change.AbsoluteSize] = viewProps.onAbsoluteSizeChanged :: SizeSymbolProp,
	}, {
		Activate = React.createElement("TextButton", {
			Text = widthLabel,
			Size = UDim2.fromScale(1, 1),
			[React.Tag] = "data-testid=ViewModelActivate" :: ActivatedSymbolProp,
			[React.Event.Activated] = viewProps.onActivated :: ActivatedSymbolProp,
		}),
	}) :: React.ReactNode
end

local function renderProbe(zIndex: number?, visible: boolean?)
	local screen
	act(function()
		screen = RTL.render(React.createElement("Frame", {
			Size = UDim2.fromOffset(400, 80),
		}, {
			Probe = React.createElement(Probe, {
				position = UDim2.new(1, -12, 0, 0),
				size = UDim2.fromOffset(PROBE_WIDTH, 36),
				zIndex = zIndex,
				visible = visible,
			}),
		}))
	end)
	return screen
end

local function clickProbe(screen)
	local button = screen.getByTestId("ViewModelActivate")
	waitUntil(function()
		return button.AbsoluteSize.X > 0
	end)
	RTL.fireEvent.click(button)
end

beforeEach(function()
	chromeEnabled = true
	shopExports.FFlagCenterInExperienceShopWindow = FFlagCenterInExperienceShopWindow
	toggleWindow.mockClear()
	toggleInExperienceShopWindow.mockClear()
end)

describe("useFreeTrialChipHostViewModel", function()
	if not FFlagEnableFreeTrialTopBarChip then
		it("returns no view when the slot is not exported", function()
			local screen = renderProbe()
			expect(screen.queryByTestId("ViewModelProbe")).toBeNil()
		end)
		return
	end

	it("reports the host width as the chip's max width", function()
		local screen = renderProbe()
		waitUntil(function()
			return screen.getByTestId("ViewModelActivate").Text == tostring(PROBE_WIDTH)
		end)
		expect(screen.getByTestId("ViewModelActivate").Text).toBe(tostring(PROBE_WIDTH))
	end)

	it("defaults the chip zIndex to 100", function()
		local screen = renderProbe()
		expect(screen.getByTestId("ViewModelProbe").ZIndex).toBe(100)
	end)

	it("uses the zIndex passed by the parent", function()
		local screen = renderProbe(2)
		expect(screen.getByTestId("ViewModelProbe").ZIndex).toBe(2)
	end)

	it("hides the host when visible is false", function()
		local screen = renderProbe(nil, false)
		expect(screen.getByTestId("ViewModelProbe").Visible).toBe(false)
	end)

	it("does not open the shop when Chrome is off", function()
		chromeEnabled = false
		local screen = renderProbe()
		clickProbe(screen)
		expect(toggleWindow).never.toHaveBeenCalled()
		expect(toggleInExperienceShopWindow).never.toHaveBeenCalled()
	end)

	if FFlagCenterInExperienceShopWindow then
		it("opens the centered shop window", function()
			local screen = renderProbe()
			clickProbe(screen)
			expect(toggleInExperienceShopWindow).toHaveBeenCalledTimes(1)
			expect(toggleWindow).never.toHaveBeenCalled()
		end)
	end

	-- allOn turns both flags on, so the direct toggle is not a matrix point.
	it("toggles the chrome shop window when the centered window is off", function()
		shopExports.FFlagCenterInExperienceShopWindow = false
		local screen = renderProbe()
		clickProbe(screen)
		expect(toggleWindow).toHaveBeenCalledTimes(1)
		expect(toggleWindow).toHaveBeenCalledWith(ChromeConstants.IN_EXPERIENCE_SHOP_ID)
		expect(toggleInExperienceShopWindow).never.toHaveBeenCalled()
	end)
end)
