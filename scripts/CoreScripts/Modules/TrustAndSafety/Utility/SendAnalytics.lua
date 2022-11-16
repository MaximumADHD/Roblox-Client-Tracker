--!nonstrict
local CorePackages = game:GetService("CorePackages")
local UserInputService = game:GetService("UserInputService")
local EventIngestService = game:GetService("EventIngestService")

local GetFFlagShareGetPlatformTargetImpl = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagShareGetPlatformTargetImpl

local getPlatformTarget = nil
if GetFFlagShareGetPlatformTargetImpl() then
	getPlatformTarget = require(CorePackages.Workspace.Packages.Analytics).getPlatformTarget
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


return function(eventContext, eventName, eventTable)
	assert(type(eventContext) == "string", "Expected eventContext to be a string")
	assert(type(eventName) == "string", "Expected eventName to be a string")
	assert(type(eventTable) == "table", "Expected eventTable to be a table")

	local target = getPlatformTarget()

	if not eventTable then
		eventTable = {}
	end
	eventTable["universeId"] = tostring(game.GameId)

	EventIngestService:sendEventDeferred(target, eventContext, eventName, eventTable)
end

