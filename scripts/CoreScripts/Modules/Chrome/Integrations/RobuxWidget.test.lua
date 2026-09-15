local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local isSideSheetEnabled = require(CorePackages.Workspace.Packages.InExperienceSideSheetUtils.isSideSheetEnabled)
local FFlagEnableSideSheetRobuxWidget = require(Chrome.Flags.FFlagEnableSideSheetRobuxWidget)
local shouldEnableRobuxWidget = FFlagEnableSideSheetRobuxWidget and isSideSheetEnabled
local ChromePackage = require(CorePackages.Workspace.Packages.Chrome)
local InExperienceSideSheetPackage = CorePackages.Workspace.Packages.InExperienceSideSheet

local AVAILABLE = 2
local registeredDefinition: any
local shopAvailable = true
local activateMock = jest.fn()
local requestOpenToRobuxTabMock = jest.fn()
local robuxWidgetComponent = function()
	return nil
end
local isIntegrationValidMock = jest.fn(function()
	return shopAvailable
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
		register = registerMock,
	}
end)

jest.mock(CorePackages.Workspace.Packages.InExperienceShop, function()
	return {
		requestOpenToRobuxTab = requestOpenToRobuxTabMock,
	}
end)

jest.mock(InExperienceSideSheetPackage, function()
	return {
		RobuxWidget = robuxWidgetComponent,
	}
end)

require(script.Parent.RobuxWidget)

local function getOnBuyActivated(): () -> ()
	local Widget = assert(registeredDefinition.components.Widget, "Expected Robux widget component")
	local widgetElement = Widget({
		layoutOrder = 1,
		placement = ChromePackage.Enums.SideSheetPlacement.ScrollableContentTop,
	}) :: any
	return widgetElement.props.onBuyActivated
end

describe("RobuxWidget", function()
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
			shopAvailable = true
			activateMock:mockClear()
			requestOpenToRobuxTabMock:mockClear()

			getOnBuyActivated()()

			expect(requestOpenToRobuxTabMock).toHaveBeenCalledTimes(1)
			expect(activateMock).toHaveBeenCalledWith(expect.anything(), "in_experience_shop")
		end)

		it("SHOULD not activate the shop integration when it is unavailable", function()
			shopAvailable = false
			activateMock:mockClear()
			requestOpenToRobuxTabMock:mockClear()

			getOnBuyActivated()()

			expect(requestOpenToRobuxTabMock).never.toHaveBeenCalled()
			expect(activateMock).never.toHaveBeenCalled()
		end)
	else
		it("SHOULD not register the widget", function()
			expect(registerMock).never.toHaveBeenCalled()
		end)
	end
end)
