local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest
local afterEach = JestGlobals.afterEach

local isSideSheetEnabled = require(CorePackages.Workspace.Packages.InExperienceSideSheetUtils.isSideSheetEnabled)
local FFlagEnableSideSheetRobuxWidget = require(Chrome.Flags.FFlagEnableSideSheetRobuxWidget)
local shouldEnableRobuxWidget = FFlagEnableSideSheetRobuxWidget and isSideSheetEnabled
local ChromePackage = require(CorePackages.Workspace.Packages.Chrome)
local InExperienceSideSheetPackage = CorePackages.Workspace.Packages.InExperienceSideSheet

local mockSharedFlags = {
	FFlagHideHeaderForBuyRobuxInExperienceShop = false,
}

jest.mock(CorePackages.Workspace.Packages.SharedFlags, function()
	return mockSharedFlags
end)

local AVAILABLE = 2
local registeredDefinition: any
local shopAvailable = true
local shopWindowOpen = false
local activateMock = jest.fn()
local requestOpenToRobuxTabMock = jest.fn()
local setOpenedFromBuyRobuxMock = jest.fn()
local robuxWidgetComponent = function()
	return nil
end
local isIntegrationValidMock = jest.fn(function()
	return shopAvailable
end)
local isWindowOpenMock = jest.fn(function()
	return shopWindowOpen
end)
local registerMock = jest.fn(function(_self, definition)
	registeredDefinition = definition
end)

jest.mock(Chrome.Service, function()
	return {
		AvailabilitySignal = {
			Available = AVAILABLE,
		},
		activate = activateMock,
		isIntegrationValid = isIntegrationValidMock,
		isWindowOpen = isWindowOpenMock,
		register = registerMock,
	}
end)

jest.mock(CorePackages.Workspace.Packages.InExperienceShop, function()
	return {
		requestOpenToRobuxTab = requestOpenToRobuxTabMock,
		setOpenedFromBuyRobux = setOpenedFromBuyRobuxMock,
	}
end)

jest.mock(InExperienceSideSheetPackage, function()
	return {
		RobuxWidget = robuxWidgetComponent,
	}
end)

-- Short-circuit the real Constants' transitive UIBlox require. Inside
-- `jest.isolateModules` the UIBlox singleton is not re-initialized.
jest.mock(Chrome.ChromeShared.Unibar.Constants, function()
	return {
		IN_EXPERIENCE_SHOP_ID = "in_experience_shop",
	}
end)

local function loadRobuxWidget(hideHeaderFlag: boolean)
	mockSharedFlags.FFlagHideHeaderForBuyRobuxInExperienceShop = hideHeaderFlag
	registeredDefinition = nil
	registerMock:mockClear()

	jest.isolateModules(function()
		require(script.Parent.RobuxWidget)
	end)
end

loadRobuxWidget(false)

local function getOnBuyActivated(): () -> ()
	local Widget = assert(registeredDefinition.components.Widget, "Expected Robux widget component")
	local widgetElement = Widget({
		layoutOrder = 1,
		placement = ChromePackage.Enums.SideSheetPlacement.ScrollableContentTop,
	}) :: any
	return widgetElement.props.onBuyActivated
end

describe("RobuxWidget", function()
	afterEach(function()
		shopAvailable = true
		activateMock:mockClear()
		requestOpenToRobuxTabMock:mockClear()
		setOpenedFromBuyRobuxMock:mockClear()
		isIntegrationValidMock:mockClear()
	end)

	if shouldEnableRobuxWidget then
		it("SHOULD register the widget through Chrome with side-sheet metadata", function()
			expect(registerMock).toHaveBeenCalledTimes(1)
			expect(registeredDefinition).toEqual(expect.objectContaining({
				id = "RobuxWidget",
				initialAvailability = AVAILABLE,
				sideSheetPlacement = ChromePackage.Enums.SideSheetPlacement.ScrollableContentTop,
				components = expect.objectContaining({
					Widget = expect.any("function"),
				}),
			}))
		end)

		it("SHOULD activate the shop integration when it is available", function()
			loadRobuxWidget(false)
			shopAvailable = true
			shopWindowOpen = false
			activateMock:mockClear()
			requestOpenToRobuxTabMock:mockClear()

			getOnBuyActivated()()

			expect(requestOpenToRobuxTabMock).toHaveBeenCalledTimes(1)
			expect(activateMock).toHaveBeenCalledWith(expect.anything(), "in_experience_shop")
		end)

		it(
			"SHOULD flag the shop as opened from Buy Robux when it opens the shop and the hide-header flag is on",
			function()
				loadRobuxWidget(true)
				shopAvailable = true

				getOnBuyActivated()()

				expect(setOpenedFromBuyRobuxMock).toHaveBeenCalledWith(true)
			end
		)

		it(
			"SHOULD not flag the shop as opened from Buy Robux when it opens the shop and the hide-header flag is off",
			function()
				loadRobuxWidget(false)
				shopAvailable = true

				getOnBuyActivated()()

				expect(setOpenedFromBuyRobuxMock).never.toHaveBeenCalled()
			end
		)

		it("SHOULD not request the Robux tab when the shop window is already open", function()
			shopAvailable = true
			shopWindowOpen = true
			activateMock:mockClear()
			requestOpenToRobuxTabMock:mockClear()

			getOnBuyActivated()()

			expect(requestOpenToRobuxTabMock).never.toHaveBeenCalled()
			expect(activateMock).toHaveBeenCalledWith(expect.anything(), "in_experience_shop")
		end)

		it("SHOULD not activate the shop integration when it is unavailable", function()
			shopAvailable = false
			shopWindowOpen = false
			activateMock:mockClear()
			requestOpenToRobuxTabMock:mockClear()

			getOnBuyActivated()()

			expect(requestOpenToRobuxTabMock).never.toHaveBeenCalled()
			expect(setOpenedFromBuyRobuxMock).never.toHaveBeenCalled()
			expect(activateMock).never.toHaveBeenCalled()
		end)

		it(
			"SHOULD activate the shop integration when the hide-header flag is on and the integration is unavailable",
			function()
				loadRobuxWidget(true)
				shopAvailable = false

				getOnBuyActivated()()

				expect(requestOpenToRobuxTabMock).toHaveBeenCalledTimes(1)
				expect(setOpenedFromBuyRobuxMock).toHaveBeenCalledWith(true)
				expect(activateMock).toHaveBeenCalledWith(expect.anything(), "in_experience_shop")
			end
		)
	else
		it("SHOULD not register the widget", function()
			expect(registerMock).never.toHaveBeenCalled()
		end)
	end
end)
