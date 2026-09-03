local ChromeShared = script:FindFirstAncestor("ChromeShared")

local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect
local jest = JestGlobals.jest
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach

local ChromeUtils = require(ChromeShared.Service.ChromeUtils)
local activityVisible = ChromeUtils.ObservableValue.new(false)

jest.mock(ChromeShared.Service, function()
	return {
		nineDotActivityIndicatorVisible = function()
			return activityVisible
		end,
	}
end)

local NineDotNotificationBadge = require(script.Parent.NineDotNotificationBadge)

local container: Frame
local root: any
local capturedBadgeProps: any = nil

local function NotificationBadgeSpy(props)
	capturedBadgeProps = props
	return nil
end

local function renderBadge()
	ReactRoblox.act(function()
		root:render(React.createElement(NineDotNotificationBadge, {
			iconHostProps = {
				integration = {
					id = "nine_dot",
					component = function()
						return nil
					end,
					integration = {} :: any,
					activated = function() end,
					order = 0,
					children = {},
				},
				minBadgeCount = 0,
			},
			NotificationBadge = NotificationBadgeSpy,
		}))
	end)
end

describe("NineDotNotificationBadge", function()
	beforeEach(function()
		activityVisible:set(false)
		capturedBadgeProps = nil
		container = Instance.new("Frame")
		root = ReactRoblox.createRoot(container)
	end)

	afterEach(function()
		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("SHOULD hide the activity indicator WHEN Chrome has not requested it", function()
		renderBadge()

		expect(capturedBadgeProps.showNineDotActivityIndicator).toBe(false)
		expect(capturedBadgeProps.integration.id).toBe("nine_dot")
	end)

	it("SHOULD show the activity indicator WHEN Chrome requests it", function()
		activityVisible:set(true)
		renderBadge()

		expect(capturedBadgeProps.showNineDotActivityIndicator).toBe(true)
	end)

	it("SHOULD update the activity indicator WHEN Chrome visibility changes", function()
		renderBadge()
		expect(capturedBadgeProps.showNineDotActivityIndicator).toBe(false)

		ReactRoblox.act(function()
			activityVisible:set(true)
		end)

		expect(capturedBadgeProps.showNineDotActivityIndicator).toBe(true)
	end)
end)
