local AnalyticsService = game:GetService("RbxAnalyticsService")
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

local playSessionId = AnalyticsService:GetPlaySessionId()

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

local EventStreamActionList: { [EventNames]: GenericEvent } = {
	[EventNamesEnum.CallBarHangUpClicked] = {
		context = Contexts.ContactList,
		eventType = EventTypes.CallBarHangUpClicked,
		additionalInfo = {
			uid = localPlayer.UserId,
			universeId = game.GameId,
			placeId = game.PlaceId,
			deviceType = platform,
			playSessionId = playSessionId,
		},
		formatRulesForAdditionalInfo = {
			eventTimestampMs = Dash.identity,
			calleeUserId = Dash.identity,
			callerUserId = Dash.identity,
			callId = Dash.identity,
			callStatus = Dash.identity,
			isRetry = Dash.identity,
		},
	},
	[EventNamesEnum.PhoneBookNavigate] = {
		context = Contexts.ContactList,
		eventType = EventTypes.PhoneBookNavigate,
		additionalInfo = {
			uid = localPlayer.UserId,
			universeId = game.GameId,
			placeId = game.PlaceId,
			deviceType = platform,
			playSessionId = playSessionId,
		},
		formatRulesForAdditionalInfo = {
			eventTimestampMs = Dash.identity,
			startingPage = Dash.identity,
			destinationPage = Dash.identity,
		},
	},
	[EventNamesEnum.PhoneBookSearchClicked] = {
		context = Contexts.ContactList,
		eventType = EventTypes.PhoneBookSearchClicked,
		additionalInfo = {
			uid = localPlayer.UserId,
			universeId = game.GameId,
			placeId = game.PlaceId,
			deviceType = platform,
		},
		formatRulesForAdditionalInfo = {
			eventTimestampMs = Dash.identity,
			playSessionId = playSessionId,
		},
	},
	[EventNamesEnum.PhoneBookSearchAttempted] = {
		context = Contexts.ContactList,
		eventType = EventTypes.PhoneBookSearchAttempted,
		additionalInfo = {
			uid = localPlayer.UserId,
			universeId = game.GameId,
			placeId = game.PlaceId,
			deviceType = platform,
			playSessionId = playSessionId,
		},
		formatRulesForAdditionalInfo = {
			eventTimestampMs = Dash.identity,
			searchQueryString = Dash.identity,
		},
	},
	[EventNamesEnum.PhoneBookSearchFinished] = {
		context = Contexts.ContactList,
		eventType = EventTypes.PhoneBookSearchFinished,
		additionalInfo = {
			uid = localPlayer.UserId,
			universeId = game.GameId,
			placeId = game.PlaceId,
			deviceType = platform,
			playSessionId = playSessionId,
		},
		formatRulesForAdditionalInfo = {
			eventTimestampMs = Dash.identity,
			searchQueryString = Dash.identity,
			searchResultCount = Dash.identity,
		},
	},
	[EventNamesEnum.PhoneBookPlayerMenuOpened] = {
		context = Contexts.ContactList,
		eventType = EventTypes.PhoneBookPlayerMenuOpened,
		additionalInfo = {
			uid = localPlayer.UserId,
			universeId = game.GameId,
			placeId = game.PlaceId,
			deviceType = platform,
			playSessionId = playSessionId,
		},
		formatRulesForAdditionalInfo = {
			eventTimestampMs = Dash.identity,
			friendUserId = Dash.identity,
			searchQueryString = Dash.identity,
			itemListIndex = Dash.identity,
			isSuggestedUser = Dash.identity,
			page = Dash.identity,
		},
	},
	[EventNamesEnum.PhoneBookPlayerMenuUnfriendClicked] = {
		context = Contexts.ContactList,
		eventType = EventTypes.PhoneBookPlayerMenuUnfriendClicked,
		additionalInfo = {
			uid = localPlayer.UserId,
			universeId = game.GameId,
			placeId = game.PlaceId,
			deviceType = platform,
			playSessionId = playSessionId,
		},
		formatRulesForAdditionalInfo = {
			eventTimestampMs = Dash.identity,
			friendUserId = Dash.identity,
		},
	},
	[EventNamesEnum.PhoneBookPlayerMenuUnfriendFinished] = {
		context = Contexts.ContactList,
		eventType = EventTypes.PhoneBookPlayerMenuUnfriendFinished,
		additionalInfo = {
			uid = localPlayer.UserId,
			universeId = game.GameId,
			placeId = game.PlaceId,
			deviceType = platform,
			playSessionId = playSessionId,
		},
		formatRulesForAdditionalInfo = {
			eventTimestampMs = Dash.identity,
			friendUserId = Dash.identity,
			success = Dash.identity,
		},
	},
	[EventNamesEnum.PhoneBookPlayerMenuBlockClicked] = {
		context = Contexts.ContactList,
		eventType = EventTypes.PhoneBookPlayerMenuBlockClicked,
		additionalInfo = {
			uid = localPlayer.UserId,
			universeId = game.GameId,
			placeId = game.PlaceId,
			deviceType = platform,
			playSessionId = playSessionId,
		},
		formatRulesForAdditionalInfo = {
			eventTimestampMs = Dash.identity,
			friendUserId = Dash.identity,
		},
	},
	[EventNamesEnum.PhoneBookCallFriendClicked] = {
		context = Contexts.ContactList,
		eventType = EventTypes.PhoneBookCallFriendClicked,
		additionalInfo = {
			uid = localPlayer.UserId,
			universeId = game.GameId,
			placeId = game.PlaceId,
			deviceType = platform,
			playSessionId = playSessionId,
		},
		formatRulesForAdditionalInfo = {
			eventTimestampMs = Dash.identity,
			friendUserId = Dash.identity,
			searchQueryString = Dash.identity,
			itemListIndex = Dash.identity,
			isSuggestedUser = Dash.identity,
			page = Dash.identity,
		},
	},
	[EventNamesEnum.PhoneBookCallFriendFailed] = {
		context = Contexts.ContactList,
		eventType = EventTypes.PhoneBookCallFriendFailed,
		additionalInfo = {
			uid = localPlayer.UserId,
			universeId = game.GameId,
			placeId = game.PlaceId,
			deviceType = platform,
			playSessionId = playSessionId,
		},
		formatRulesForAdditionalInfo = {
			eventTimestampMs = Dash.identity,
			calleeUserId = Dash.identity,
			callerUserId = Dash.identity,
			errorMsg = Dash.identity,
		},
	},
}

return EventStreamActionList
