--[[
This module sends an analytic event when a user leaves an experience, which contains the final state
of all CoreGuiTypes in addition to reset/respawn button and other metadata, using EventStream (connect to Telemetry)

Author: srodriguez@roblox.com
]]

-- Services
local StarterGui = game:GetService("StarterGui")
local AnalyticsService = game:GetService("RbxAnalyticsService")
local CorePackages = game:GetService("CorePackages")

-- Modules
local EventStream = require(CorePackages.Workspace.Packages.Analytics).AnalyticsReporters.EventStream

-- Constant
local RESET_BUTTON = "ResetButtonCallback"

local CoreGuiFinalStateAnalytics = {}
CoreGuiFinalStateAnalytics.__index = CoreGuiFinalStateAnalytics

function CoreGuiFinalStateAnalytics.new()
	local self = {}
	self.evenStream = EventStream.new(AnalyticsService)
	setmetatable(self, CoreGuiFinalStateAnalytics)
	return self
end

-- sends an analytic event containing all CoreGuiType states along with other session data
function CoreGuiFinalStateAnalytics:sendCoreGuiFinalAnalytic()
	local eventContext = "core_gui_final_state"
	local eventName = "core_gui_final_state"
	local payload = {
		placeid = tostring(game.PlaceId),
		universeid = tostring(game.GameId),
		sessionid = AnalyticsService:GetSessionId()}
	-- append final states of CoreGuiTypes to payload
	for i, coreGuiType in Enum.CoreGuiType:GetEnumItems() do
		payload[coreGuiType.Name] = tostring(StarterGui:GetCoreGuiEnabled(coreGuiType))
	end
	-- append final state of reset/respawn button, get core can fail if RESET_BUTTON wasn't registered yet
	local isResetEnabled = ""
	pcall(function()
		isResetEnabled = tostring(StarterGui:GetCore(RESET_BUTTON))
	end)
	payload[RESET_BUTTON] = isResetEnabled
	self.evenStream:sendEventDeferred(eventContext, eventName, payload)
end

return CoreGuiFinalStateAnalytics
