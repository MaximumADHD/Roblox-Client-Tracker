--[[
This module sends an analytic event whenever a Roblox Developer enables or disables a CoreGui
Type, in addition to universe and place id metadata, using EventStream (connect to Telemetry)

Author: srodriguez@roblox.com
]]

-- Services
local StarterGui = game:GetService("StarterGui")
local AnalyticsService = game:GetService("RbxAnalyticsService")
local CorePackages = game:GetService("CorePackages")

-- Modules
local EventStream = require(CorePackages.Workspace.Packages.Analytics).AnalyticsReporters.EventStream

local CoreGuiEnableAnalytics = {}
CoreGuiEnableAnalytics.__index = CoreGuiEnableAnalytics

function CoreGuiEnableAnalytics.new()
	local self = {}
	self.evenStream = EventStream.new(AnalyticsService)

	-- sends an analytic event with coregui type and associated enabled value along with other session data
	self.sendCoreGuiAnalytic = function (coreGuiType:Enum.CoreGuiType, enabled)
		local eventContext = "core_gui_type"
		local eventName = "core_gui_type"
		local payload = {
			placeid = tostring(game.PlaceId),
			universeid = tostring(game.GameId),
			type = tostring(coreGuiType.Name), 
			enabled  = tostring(enabled),
			sessionid = AnalyticsService:GetSessionId()}
		self.evenStream:sendEventDeferred(eventContext, eventName, payload)
	end

	-- attaches a callback whenever CoreGuiType is changed
	self.signalConnection = StarterGui.CoreGuiChangedSignal:Connect(function(coreGuiType, enabled)
		self.sendCoreGuiAnalytic(coreGuiType, enabled)
	end)
	
	setmetatable(self, CoreGuiEnableAnalytics)
	return self
end

function CoreGuiEnableAnalytics:DisconnectSignal()
	self.signalConnection:Disconnect()
end


local coreGuiEnableAnalytics = CoreGuiEnableAnalytics.new()

return CoreGuiEnableAnalytics

