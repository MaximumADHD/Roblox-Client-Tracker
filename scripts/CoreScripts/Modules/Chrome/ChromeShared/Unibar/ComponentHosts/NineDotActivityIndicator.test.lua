local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local Foundation = require(CorePackages.Packages.Foundation)
local ReactTestingLibrary = require(CorePackages.Packages.Dev.ReactTestingLibrary)
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)

local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it
local afterEach = JestGlobals.afterEach

local NineDotActivityIndicator = require(script.Parent.NineDotActivityIndicator)

local function renderIndicator(visible: boolean, hasNotificationBadge: boolean)
	return ReactTestingLibrary.render(React.createElement(Foundation.FoundationProvider, {
		colorMode = Foundation.Enums.ColorMode.Dark,
	}, {
		Indicator = React.createElement(NineDotActivityIndicator, {
			hasNotificationBadge = hasNotificationBadge,
			position = UDim2.fromOffset(24, 8),
			visible = visible,
		}),
	}))
end

describe("NineDotActivityIndicator", function()
	afterEach(function()
		ReactTestingLibrary.cleanup()
	end)

	it("SHOULD render when requested without a notification badge", function()
		local result = renderIndicator(true, false)

		expect(result.getByTestId("nine-dot-activity-indicator")).never.toBeNil()
	end)

	it("SHOULD hide when the caller clears visibility", function()
		local result = renderIndicator(false, false)

		expect(result.queryByTestId("nine-dot-activity-indicator")).toBeNil()
	end)

	it("SHOULD give the notification badge priority", function()
		local result = renderIndicator(true, true)

		expect(result.queryByTestId("nine-dot-activity-indicator")).toBeNil()
	end)
end)
