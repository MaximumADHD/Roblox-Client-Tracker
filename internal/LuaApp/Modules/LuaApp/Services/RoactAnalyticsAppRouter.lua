--[[
	Unlike RoactAnalytics, RoactAnalyticsBottomBar is merely a consumer of the analytics implementation.
	It does not require its own setter to be called when the RoactServices ServiceProvider is initialized.
]]

local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Events = Modules.LuaApp.Analytics.Events
local pageHeartbeat = require(Events.pageHeartbeat)
local userInteractions = require(Events.userInteractions)
local RoactAnalytics = require(Modules.LuaApp.Services.RoactAnalytics)

local AppRouterAnalytics = {}
function AppRouterAnalytics.get(context)
	local analyticsImpl = RoactAnalytics.get(context)

	local analyticsConsumer = {}

	function analyticsConsumer.reportPageHeartbeat(beatInterval, luaPage)
		pageHeartbeat(analyticsImpl.EventStream, beatInterval, luaPage)
	end

	function analyticsConsumer.reportPageChanged()
		local contextName = "luaPage"
		userInteractions(analyticsImpl.EventStream, contextName)
	end

	return analyticsConsumer
end

return AppRouterAnalytics