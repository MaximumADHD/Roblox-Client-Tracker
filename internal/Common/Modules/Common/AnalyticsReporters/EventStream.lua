--[[
	Specialized reporter for RBX Event Ingest data.
	Useful for tracking explicit user interactions with screens and guis.
]]

local UserInputService = game:GetService("UserInputService")

local function getPlatformTarget()
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


local EventStream = {}
EventStream.__index = EventStream

-- reportingService - (object) any object that defines the same functions for Event Stream as AnalyticsService
function EventStream.new(reportingService)
	local rsType = type(reportingService)
	assert(rsType == "table" or rsType == "userdata", "Unexpected value for reportingService")

	local self = {
		_reporter = reportingService,
		_isEnabled = true,
	}
	setmetatable(self, EventStream)

	return self
end

-- isEnabled : (boolean)
function EventStream:setEnabled(isEnabled)
	assert(type(isEnabled) == "boolean", "Expected isEnabled to be a boolean")
	self._isEnabled = isEnabled
end

-- eventContext : (string) the location or context in which the event is occurring.
-- eventName : (string) the name corresponding to the type of event to be reported. "screenLoaded" for example.
-- additionalArgs : (optional, map<string, Value>) table for additional information to appear in the event stream.
function EventStream:setRBXEvent(eventContext, eventName, additionalArgs)
	local target = getPlatformTarget()
	additionalArgs = additionalArgs or {}

	assert(type(eventContext) == "string", "Expected eventContext to be a string")
	assert(type(eventName) == "string", "Expected eventName to be a string")
	assert(type(additionalArgs) == "table", "Expected additionalArgs to be a table")
	assert(self._isEnabled, "This reporting service is disabled")

	-- This function fires reports to the server right away
	self._reporter:SetRBXEvent(target, eventContext, eventName, additionalArgs)
end


-- eventContext : (string) the location or context in which the event is occurring.
-- eventName : (string) the name corresponding to the type of event to be reported. "screenLoaded" for example.
-- additionalArgs : (optional, map<string, Value>) map for extra keys to appear in the event stream.
function EventStream:setRBXEventStream(eventContext, eventName, additionalArgs)
	local target = getPlatformTarget()
	additionalArgs = additionalArgs or {}

	assert(type(eventContext) == "string", "Expected eventContext to be a string")
	assert(type(eventName) == "string", "Expected eventName to be a string")
	assert(type(additionalArgs) == "table", "Expected additionalArgs to be a table")
	assert(self._isEnabled, "This reporting service is disabled")

	-- this function sends reports to the server in batches, not real-time
	self._reporter:SetRBXEventStream(target, eventContext, eventName, additionalArgs)
end


function EventStream:releaseRBXEventStream()
	assert(self._isEnabled, "This reporting service is disabled")

	self._reporter:ReleaseRBXEventStream(getPlatformTarget())
end


-- additionalArgs : (optional, map<string, string>) table for extra keys to appear in the event stream.
function EventStream:updateHeartbeatObject(additionalArgs)
	additionalArgs = additionalArgs or {}

	assert(type(additionalArgs) == "table", "Expected additionalArgs to be a table")
	assert(self._isEnabled, "This reporting service is disabled")

	self._reporter:UpdateHeartbeatObject(additionalArgs)
end


return EventStream
