local AnalyticsService = game:GetService("RbxAnalyticsService")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local SETTINGS_HUB_INVITE_RELEASE_STREAM_TIME = 10

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

function EventStream.new(overridePlatformTarget, overrideAnalyticsImpl)
	local self = {}
	setmetatable(self, EventStream)

	self._analyticsImpl = overrideAnalyticsImpl or AnalyticsService
	self._platformTarget = overridePlatformTarget or getPlatformTarget()

	return self
end

function EventStream:setRBXEventStream(eventContext, eventName, additionalArgs)
	additionalArgs = additionalArgs or {}
	-- this function sends reports to the server in batches, not real-time
	self._analyticsImpl:SetRBXEventStream(self._platformTarget, eventContext, eventName, additionalArgs)

	if not self.timerSteppedConnection then
		local lastGameTime = time()
		self.timerSteppedConnection = RunService.Stepped:Connect(function(gameTime)
			if gameTime - lastGameTime > SETTINGS_HUB_INVITE_RELEASE_STREAM_TIME then
				self:releaseRBXEventStream()
			end
		end)
	end
end

-- eventContext : (string) the location or context in which the event is occurring.
-- eventName : (string) the name corresponding to the type of event to be reported. "screenLoaded" for example.
-- additionalArgs : (optional, map<string, Value>) map for extra keys to appear in the event stream.
function EventStream:sendEventDeferred(eventContext, eventName, additionalArgs)
	additionalArgs = additionalArgs or {}

	assert(type(eventContext) == "string", "Expected eventContext to be a string")
	assert(type(eventName) == "string", "Expected eventName to be a string")
	assert(type(additionalArgs) == "table", "Expected additionalArgs to be a table")

	-- this function sends reports to the server in batches, not real-time
	self._analyticsImpl:SendEventDeferred(self._platformTarget, eventContext, eventName, additionalArgs)
end


function EventStream:releaseRBXEventStream()
	self._analyticsImpl:ReleaseRBXEventStream(self._platformTarget)
	if self.timerSteppedConnection then
		self.timerSteppedConnection:Disconnect()
		self.timerSteppedConnection = nil
	end
end

return EventStream
