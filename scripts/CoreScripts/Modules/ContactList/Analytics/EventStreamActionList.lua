local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

local Dash = require(CorePackages.Packages.Dash)
local SocialLuaAnalytics = require(CorePackages.Workspace.Packages.SocialLuaAnalytics)

local Enums = SocialLuaAnalytics.Analytics.Enums

local Contexts = Enums.Contexts
local EventTypes = Enums.EventTypes

local EventNamesEnum = require(script.Parent.EventNamesEnum)
type EventNames = EventNamesEnum.EventNames

local localPlayer = Players.LocalPlayer :: Player

local platformEnum = UserInputService:GetPlatform()

local platform

if platformEnum == Enum.Platform.Windows or platformEnum == Enum.Platform.OSX then
	platform = "desktop"
elseif platformEnum == Enum.Platform.IOS then
	platform = "ios"
elseif platformEnum == Enum.Platform.Android then
	platform = "android"
elseif
	platformEnum == Enum.Platform.XBox360
	or platformEnum == Enum.Platform.PS3
	or platformEnum == Enum.Platform.PS4
	or platformEnum == Enum.Platform.XBoxOne
	or platformEnum == Enum.Platform.WiiU
then
	platform = "console"
else
	platform = "other"
end

type GenericEvent = {
	context: any,
	eventType: any,
	additionalInfo: any?,
	formatRulesForAdditionalInfo: any?,
}

-- Generates timestamp in ms
local function generateTimestamp(): number
	return os.time() * 1000
end

local EventStreamActionList: { [EventNames]: GenericEvent } = {
	[EventNamesEnum.CallBarHangUpClicked] = {
		context = Contexts.ContactList,
		eventType = EventTypes.CallBarHangUpClicked,
		additionalInfo = {
			uid = localPlayer.UserId,
			universeId = game.GameId,
			placeId = game.PlaceId,
			deviceType = platform,
			timestamp_ms = generateTimestamp(),
		},
		formatRulesForAdditionalInfo = {
			calleeUserId = Dash.identity,
			callerUserId = Dash.identity,
			callId = Dash.identity,
			callStatus = Dash.identity,
		},
	},
}

return EventStreamActionList
