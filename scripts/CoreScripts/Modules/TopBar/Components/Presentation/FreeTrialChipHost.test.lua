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
local slotNaturalWidth = 80
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
}
jest.mock(Packages.InExperienceShop, function()
	local React = require(CorePackages.Packages.React)
	shopExports.FreeTrialTopBarSlot = function(props)
		local maxWidth = props.maxWidth
		local width = if typeof(maxWidth) == "number" then math.min(slotNaturalWidth, maxWidth) else slotNaturalWidth
		local label = if typeof(maxWidth) == "number" then tostring(maxWidth) else "unset"
		return React.createElement("TextButton", {
			Text = label,
			Size = UDim2.fromOffset(width, 24),
			[React.Tag] = "data-testid=FreeTrialTopBarSlot",
			[React.Event.Activated] = props.onActivated,
		})
	end
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

local FreeTrialChipHost = require(script.Parent.FreeTrialChipHost)
local ChromeConstants = require(Chrome.ChromeShared.Unibar.Constants)

local HOST_WIDTH = 188

local function renderHost()
	local screen
	act(function()
		screen = RTL.render(React.createElement("Frame", {
			Size = UDim2.fromOffset(400, 80),
		}, {
			Host = React.createElement(FreeTrialChipHost, {
				position = UDim2.new(1, -12, 0, 0),
				size = UDim2.new(0.5, -12, 0, 36),
			}),
		}))
	end)
	return screen
end

local function clickChip(screen)
	local chip = screen.getByTestId("FreeTrialTopBarSlot")
	waitUntil(function()
		return chip.AbsoluteSize.X > 0
	end)
	RTL.fireEvent.click(chip)
end

local function rightEdge(gui: GuiObject): number
	return gui.AbsolutePosition.X + gui.AbsoluteSize.X
end

local function waitForMeasuredChip(screen)
	waitUntil(function()
		local host = screen.queryByTestId("FreeTrialChipHost")
		local slot = screen.queryByTestId("FreeTrialTopBarSlot")
		return host ~= nil and slot ~= nil and host.AbsoluteSize.X > 0 and slot.AbsoluteSize.X > 0 and slot.Text ~= "unset"
	end)
end

beforeEach(function()
	chromeEnabled = true
	slotNaturalWidth = 80
	shopExports.FFlagCenterInExperienceShopWindow = FFlagCenterInExperienceShopWindow
	toggleWindow.mockClear()
	toggleInExperienceShopWindow.mockClear()
end)

if not FFlagEnableFreeTrialTopBarChip then
	it("renders nothing when the chip flag is off", function()
		local screen = renderHost()
		expect(screen.queryByTestId("FreeTrialTopBarSlot")).toBeNil()
	end)
end

if FFlagEnableFreeTrialTopBarChip then
	it("caps the chip at the host width", function()
		local screen = renderHost()
		local function widthIsSet(): boolean
			local slot = screen.queryByTestId("FreeTrialTopBarSlot")
			return slot ~= nil and slot.Text ~= "unset"
		end
		waitUntil(widthIsSet)
		expect(tonumber(screen.getByTestId("FreeTrialTopBarSlot").Text)).toBe(HOST_WIDTH)
	end)

	it("pins a short chip to the host's right edge", function()
		local screen = renderHost()
		waitForMeasuredChip(screen)
		local host = screen.getByTestId("FreeTrialChipHost")
		local slot = screen.getByTestId("FreeTrialTopBarSlot")
		expect(slot.AbsoluteSize.X).toBe(80)
		expect(slot.AbsoluteSize.X < host.AbsoluteSize.X).toBe(true)
		expect(rightEdge(slot)).toBeCloseTo(rightEdge(host))
	end)

	it("pins a width-capped chip to the host's right edge", function()
		slotNaturalWidth = 400
		local screen = renderHost()
		waitForMeasuredChip(screen)
		local host = screen.getByTestId("FreeTrialChipHost")
		local slot = screen.getByTestId("FreeTrialTopBarSlot")
		expect(slot.AbsoluteSize.X).toBe(HOST_WIDTH)
		expect(rightEdge(slot)).toBeCloseTo(rightEdge(host))
	end)

	it("does not open the shop when Chrome is off", function()
		chromeEnabled = false
		local screen = renderHost()
		clickChip(screen)
		expect(toggleWindow).never.toHaveBeenCalled()
		expect(toggleInExperienceShopWindow).never.toHaveBeenCalled()
	end)

	if FFlagCenterInExperienceShopWindow then
		it("opens the centered shop window", function()
			local screen = renderHost()
			clickChip(screen)
			expect(toggleInExperienceShopWindow).toHaveBeenCalledTimes(1)
			expect(toggleWindow).never.toHaveBeenCalled()
		end)
	end

	-- allOn turns both flags on, so the direct toggle is not a matrix point.
	it("toggles the chrome shop window when the centered window is off", function()
		shopExports.FFlagCenterInExperienceShopWindow = false
		local screen = renderHost()
		clickChip(screen)
		expect(toggleWindow).toHaveBeenCalledTimes(1)
		expect(toggleWindow).toHaveBeenCalledWith(ChromeConstants.IN_EXPERIENCE_SHOP_ID)
		expect(toggleInExperienceShopWindow).never.toHaveBeenCalled()
	end)
end
