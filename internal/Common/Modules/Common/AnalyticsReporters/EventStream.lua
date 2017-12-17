--[[
	Specialized reporter for RBX Event Ingest data.
	Useful for tracking explicit user interactions with screens and guis.
]]

local BaseReporter = require(script.Parent.BaseReporter)
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
setmetatable(EventStream, { __index = BaseReporter })
EventStream.__index = EventStream

-- reportingService - (object) any object that defines the same functions for Event Stream as AnalyticsService
function EventStream.new(reportingService)
	local self = BaseReporter.new("EventStream", reportingService)
	setmetatable(self, EventStream)

	return self
end


-- eventContext : (string) the location or context in which the event is occurring.
-- eventName : (string) the name corresponding to the type of event to be reported. "screenLoaded" for example.
-- additionalArgs : (optional, map<string, Value>) table for additional information to appear in the event stream.
function EventStream:SetRBXEvent(eventContext, eventName, additionalArgs)
	-- NOTE - This function fires reports to the server in real-time
	local funcName = "SetRBXEvent"
	local target = getPlatformTarget()
	additionalArgs = additionalArgs or {}

	-- validate the input and calling convention
	self:CheckBadCallingConvention(funcName)

	self:CheckForTypeError("eventContext", "string", eventContext)
	self:CheckForTypeError("eventName", "string", eventName)
	self:CheckForTypeError("additionalArgs", "table", additionalArgs)

	self:CheckDisabledModule(funcName, eventContext, eventName, additionalArgs)

	-- report to the server in real time
	self._reporter:SetRBXEvent(target, eventContext, eventName, additionalArgs)
end


-- eventContext : (string) the location or context in which the event is occurring.
-- eventName : (string) the name corresponding to the type of event to be reported. "screenLoaded" for example.
-- additionalArgs : (optional, map<string, Value>) map for extra keys to appear in the event stream.
function EventStream:SetRBXEventStream(eventContext, eventName, additionalArgs)
	-- NOTE - this function sends reports to the server in batches, not real-time
	local funcName = "SetRBXEventStream"
	local target = getPlatformTarget()
	additionalArgs = additionalArgs or {}

	-- validate the input and calling convention
	self:CheckBadCallingConvention(funcName)

	self:CheckForTypeError("eventContext", "string", eventContext)
	self:CheckForTypeError("eventName", "string", eventName)
	self:CheckForTypeError("additionalArgs", "table", additionalArgs)

	self:CheckDisabledModule(funcName, eventContext, eventName, additionalArgs)

	-- queue up the report
	self._reporter:SetRBXEventStream(target, eventContext, eventName, additionalArgs)
end


-- additionalArgs : (optional, map<string, string>) table for extra keys to appear in the event stream.
function EventStream:UpdateHeartbeatObject(additionalArgs)
	local funcName = "UpdateHeartbeatObject"

	-- validate the input and calling convention
	self:CheckBadCallingConvention(funcName)

	if additionalArgs ~= nil then
		self:CheckForTypeError("additionalArgs", "table", additionalArgs)
	end

	self:CheckDisabledModule(funcName, additionalArgs)

	-- report the heartbeat
	self._reporter:UpdateHeartbeatObject(additionalArgs)
end


-- eventContext : (string) the location or context in which the event is occurring.
-- buttonName : (string) the name of the pressed button
-- extraData : (optional, string) contextual info about the button, when multiple buttons have the same name.
function EventStream:ReportButtonPressed(eventContext, buttonName, extraData)
	local funcName = "ReportButtonPressed"
	local eventName = "buttonClick"
	local additionalArgs = {
		btn = buttonName
	}

	-- validate the input and calling convention
	self:CheckBadCallingConvention(funcName)
	self:CheckForTypeError("eventContext", "string", eventContext)
	self:CheckForTypeError("buttonName", "string", buttonName)

	if extraData ~= nil then
		self:CheckForTypeError("extraData", "string", extraData)

		additionalArgs.cstm = extraData
	end

	self:CheckDisabledModule(funcName, eventContext, buttonName, extraData)

	-- fire the report
	self:SetRBXEventStream(eventContext, eventName, additionalArgs)
end


-- eventContext : (string) the location or context in which the event is occurring.
-- field : (string) the name of the validated field.
-- errorText : (string) the error message displayed.
function EventStream:ReportFormFieldValidated(eventContext, field, errorText)
	local funcName = "ReportFormFieldValidated"
	local eventName = "formFieldValidation"
	local additionalArgs = {
		field = field,
		error = errorText
	}

	-- validate the input and calling convention
	self:CheckBadCallingConvention(funcName)
	self:CheckForTypeError("eventContext", "string", eventContext)
	self:CheckForTypeError("field", "string", field)
	self:CheckForTypeError("errorText", "string", errorText)
	self:CheckDisabledModule(funcName, eventContext, field, errorText)

	-- send the report
	self:SetRBXEventStream(eventContext, eventName, additionalArgs)
end



-- eventContext : (string) the location or context in which the event is occurring.
function EventStream:ReportScreenLoaded(eventContext)
	local funcName = "ReportScreenLoaded"
	local eventName = "screenLoaded"

	-- validate the input and calling convention
	self:CheckBadCallingConvention(funcName)
	self:CheckForTypeError("eventContext", "string", eventContext)
	self:CheckDisabledModule(funcName, eventContext)

	-- fire the report
	self:SetRBXEventStream(eventContext, eventName, nil)
end


return EventStream
