--!nonstrict

local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local JestGlobals = require(CorePackages.JestGlobals)
local jestExpect = JestGlobals.expect
local jest = JestGlobals.jest

local onBlockButtonActivated = require(script.Parent.onBlockButtonActivated)
local Promise = require(CorePackages.Promise)

local GetFFlagEnableBlockAnalyticsSource = require(RobloxGui.Modules.Flags.GetFFlagEnableBlockAnalyticsSource)

return function()
	beforeAll(function(c)
		c.analyticsActionMock, c.analyticsAction = jest.fn()
		c.analytics = {
			action = c.analyticsAction
		}

		if GetFFlagEnableBlockAnalyticsSource() then
			c.promise = onBlockButtonActivated(
				{ 
					UserId = 10, 
					Name = "Foo",
					DisplayName = "Bar", 
				},
				c.analytics,
				"",
				{
					RobloxTranslator = {
						FormatByKey = function()
							return "string"
						end
					}
				}
			)
		else
			c.promise = onBlockButtonActivated(
				{ 
					UserId = 10, 
					Name = "Foo",
					DisplayName = "Bar", 
				},
				c.analytics,
				{
					RobloxTranslator = {
						FormatByKey = function()
							return "string"
						end
					}
				}
			)
		end
	end)

	it("SHOULD return a Promise", function(c)
		jestExpect(c.promise).never.toBeNil()
		jestExpect(Promise.is(c.promise)).toBe(true)
	end)

	it("SHOULD call analytics with blockUserButtonClick event", function(c)
			jestExpect(c.analyticsActionMock).toHaveBeenCalledTimes(1)
			jestExpect(c.analyticsActionMock).toHaveBeenCalledWith(
				c.analytics,
				"SettingsHub",
				"blockUserButtonClick",
				{blockeeUserId = 10, source = if GetFFlagEnableBlockAnalyticsSource() then "" else nil}
			)
	end)
end
