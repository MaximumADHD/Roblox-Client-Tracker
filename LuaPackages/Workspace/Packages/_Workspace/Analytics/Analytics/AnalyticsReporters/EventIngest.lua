--[[
	Wrapper for EventIngestService.  Very similar to EventStream.lua, which wraps Analytics::EventIngest.
	The main difference is that EventIngestService includes session data in the events.

	This is meant to replace the event ingest functionality in EventStream.lua for the app eventually.
]]

local AnalyticsPackage = script:FindFirstAncestor("Analytics")
local Packages = AnalyticsPackage.Parent

local UserInputService = game:GetService("UserInputService")

local GetFFlagShareGetPlatformTargetImpl = require(Packages.SharedFlags).GetFFlagShareGetPlatformTargetImpl

local getPlatformTarget = nil
if GetFFlagShareGetPlatformTargetImpl() then
	getPlatformTarget = require(AnalyticsPackage.getPlatformTarget)
else
	function getPlatformTarget(): string
		local platformTarget = "unknownLua"
		local platformEnum = Enum.Platform.None

		-- the call to GetPlatform is wrapped in a pcall() because the Testing Service
		-- executes the scripts in the wrong authorization level
		pcall(function()
			platformEnum = UserInputService:GetPlatform()
		end)

		-- bucket the platform based on consumer platform
		local isDesktopClient = (platformEnum == Enum.Platform.Windows) or (platformEnum == Enum.Platform.OSX)

		local isMobileClient = (platformEnum == Enum.Platform.IOS) or (platformEnum == Enum.Platform.Android)
		isMobileClient = isMobileClient or (platformEnum == Enum.Platform.UWP)

		local isConsole = (platformEnum == Enum.Platform.XBox360) or (platformEnum == Enum.Platform.XBoxOne)
		isConsole = isConsole or (platformEnum == Enum.Platform.PS3) or (platformEnum == Enum.Platform.PS4)
		isConsole = isConsole or (platformEnum == Enum.Platform.WiiU)

		-- assign a target based on the form factor
		if isDesktopClient then
			platformTarget = "client"
		elseif isMobileClient then
			platformTarget = "mobile"
		elseif isConsole then
			platformTarget = "console"
		else
			-- if we don't have a name for the form factor, report it here so that we can eventually track it down
			platformTarget = platformTarget .. tostring(platformEnum)
		end

		return platformTarget
	end
end

local EventIngest = {}
EventIngest.__index = EventIngest

function EventIngest.new(eventIngestService)
	local eventIngestType = type(eventIngestService)
	assert(eventIngestType == "table" or eventIngestType == "userdata", "Unexpected value for eventIngestService")

	local self = {
		_eventIngest = eventIngestService,
	}
	setmetatable(self, EventIngest)

	return self
end

-- eventContext : (string) the location or context in which the event is occurring.
-- eventName : (string) the name corresponding to the type of event to be reported. "screenLoaded" for example.
-- additionalArgs : (optional, map<string, Value>) table for additional information to appear in the event stream.
function EventIngest:setRBXEvent(eventContext, eventName, additionalArgs)
	local target = getPlatformTarget()
	additionalArgs = additionalArgs or {}

	assert(type(eventContext) == "string", "Expected eventContext to be a string")
	assert(type(eventName) == "string", "Expected eventName to be a string")
	assert(type(additionalArgs) == "table", "Expected additionalArgs to be a table")

	self._eventIngest:SetRBXEvent(target, eventContext, eventName, additionalArgs)
end

-- eventContext : (string) the location or context in which the event is occurring.
-- eventName : (string) the name corresponding to the type of event to be reported. "screenLoaded" for example.
-- additionalArgs : (optional, map<string, Value>) map for extra keys to appear in the event stream.
function EventIngest:setRBXEventStream(eventContext, eventName, additionalArgs)
	local target = getPlatformTarget()
	additionalArgs = additionalArgs or {}

	assert(type(eventContext) == "string", "Expected eventContext to be a string")
	assert(type(eventName) == "string", "Expected eventName to be a string")
	assert(type(additionalArgs) == "table", "Expected additionalArgs to be a table")

	self._eventIngest:SetRBXEventStream(target, eventContext, eventName, additionalArgs)
end

-- eventContext : (string) the location or context in which the event is occurring.
-- eventName : (string) the name corresponding to the type of event to be reported. "screenLoaded" for example.
-- additionalArgs : (optional, map<string, Value>) map for extra keys to appear in the event stream.
function EventIngest:sendEventDeferred(eventContext, eventName, additionalArgs)
	local target = getPlatformTarget()
	additionalArgs = additionalArgs or {}

	assert(type(eventContext) == "string", "Expected eventContext to be a string")
	assert(type(eventName) == "string", "Expected eventName to be a string")
	assert(type(additionalArgs) == "table", "Expected additionalArgs to be a table")

	-- this function sends reports to the server in batches, not real-time
	self._eventIngest:SendEventDeferred(target, eventContext, eventName, additionalArgs)
end

-- eventContext : (string) the location or context in which the event is occurring.
-- eventName : (string) the name corresponding to the type of event to be reported. "screenLoaded" for example.
-- additionalArgs : (optional, map<string, Value>) map for extra keys to appear in the event stream.
function EventIngest:sendEventImmediately(eventContext, eventName, additionalArgs)
	local target = getPlatformTarget()
	additionalArgs = additionalArgs or {}

	assert(type(eventContext) == "string", "Expected eventContext to be a string")
	assert(type(eventName) == "string", "Expected eventName to be a string")
	assert(type(additionalArgs) == "table", "Expected additionalArgs to be a table")

	-- this function sends reports to the server in batches, not real-time
	self._eventIngest:SendEventImmediately(target, eventContext, eventName, additionalArgs)
end

return EventIngest
