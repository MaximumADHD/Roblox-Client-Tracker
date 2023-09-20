local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local useScreenSize = require(RobloxGui.Modules.Common.Hooks.useScreenSize)
local ChromeAnalytics = require(script.ChromeAnalytics)

local function ChromeAnalyticsListener(props)
	local analytics = ChromeAnalytics.default
	local screenSize = useScreenSize()
	analytics:setScreenSize(screenSize)
	return nil
end

return ChromeAnalyticsListener
