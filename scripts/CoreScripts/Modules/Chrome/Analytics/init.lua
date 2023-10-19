local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local CorePackages = game:GetService("CorePackages")
local useScreenSize = require(RobloxGui.Modules.Common.Hooks.useScreenSize)
local ChromeAnalytics = require(script.ChromeAnalytics)
local React = require(CorePackages.Packages.React)
local Chrome = script.Parent

local FFlagUnibarLuaOcclusionMetrics = require(Chrome.Flags.GetFFlagUnibarLuaOcclusionMetrics)()
local OcclusionMetricsManager = require(script.OcclusionMetricsManager)

local function ChromeAnalyticsListener(props): React.ReactElement?
	local analytics = ChromeAnalytics.default
	local screenSize = useScreenSize()
	analytics:setScreenSize(screenSize)

	if FFlagUnibarLuaOcclusionMetrics then
		return React.createElement(OcclusionMetricsManager)
	else
		return nil
	end
end

return ChromeAnalyticsListener
