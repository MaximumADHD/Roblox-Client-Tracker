--[[
	Used to send Analytics events.
	We can define functions here for each event in the plugin,
	using self.Senders to send the events. In this way, events
	will automatically mock for testing.

	To log analytics events to the console, enable the LogAnalytics
	debug flag boolean in the workspace.
]]

local TARGET = "studio"
local CONTEXT = "assetManager"

local Plugin = script.Parent.Parent.Parent
local UILibrary = require(Plugin.Packages.UILibrary)
local DebugFlags = require(Plugin.Src.Util.DebugFlags)

local Senders = UILibrary.Studio.Analytics

local Analytics = {}
Analytics.__index = Analytics

function Analytics.new()
	local self = {
		Senders = Senders.new({
			Target = TARGET,
			Context = CONTEXT,
			LogEvents = DebugFlags.LogAnalytics(),
		}),
		openedTimestamp = os.time(),
		ikOpenedTimestamp = os.time(),
	}
	setmetatable(self, Analytics)
	return self
end

function Analytics.mock()
	local self = {
		Senders = Senders.mock({
			Target = TARGET,
			Context = CONTEXT,
			LogEvents = DebugFlags.LogAnalytics(),
		}),
		openedTimestamp = os.time(),
		ikOpenedTimestamp = os.time(),
	}
	setmetatable(self, Analytics)
	return self
end

function Analytics:update()
	self.Senders.logEvents = DebugFlags.LogAnalytics()
end


return Analytics