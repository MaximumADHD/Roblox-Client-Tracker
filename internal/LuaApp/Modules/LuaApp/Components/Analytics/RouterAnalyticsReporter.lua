local RunService = game:GetService("RunService")

local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Signal = require(Modules.Common.Signal)
local Roact = require(Modules.Common.Roact)
local PageHeartbeatTimer = require(Modules.LuaApp.Components.Analytics.PageHeartbeatTimer)
local AppPage = require(Modules.LuaApp.AppPage)

local RoactAnalyticsAppRouter = require(Modules.LuaApp.Services.RoactAnalyticsAppRouter)
local RoactServices = require(Modules.LuaApp.RoactServices)

local RouterAnalyticsReporter = Roact.Component:extend("RouterAnalyticsReporter")

function RouterAnalyticsReporter:init()
	self.sendHeartbeatSignal = Signal.new()
end

function RouterAnalyticsReporter:render()
	local currentPage = self.props.currentPage

	return currentPage and currentPage ~= AppPage.None and Roact.createElement(PageHeartbeatTimer, {
		currentPageGoal = currentPage,
		heartBeatSignal = RunService.Heartbeat,
		sendHeartbeatSignal = self.sendHeartbeatSignal,
	})
end

function RouterAnalyticsReporter:didUpdate(oldProps)
	local currentPage = self.props.currentPage
	local analytics = self.props.analytics

	if currentPage ~= oldProps.currentPage then
		if analytics then
			analytics.reportPageChanged(currentPage)
		end
	end
end

return RoactServices.connect({
	analytics = RoactAnalyticsAppRouter,
})(RouterAnalyticsReporter)