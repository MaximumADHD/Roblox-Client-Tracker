--!nonstrict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local AnalyticsService = game:GetService("RbxAnalyticsService")

local LocalPlayer = Players.LocalPlayer

local Thunks = script.Parent
local EmotesMenu = Thunks.Parent

local Actions = EmotesMenu.Actions

local Analytics = require(EmotesMenu.Analytics)
local Constants = require(EmotesMenu.Constants)

local EventStream = require(CorePackages.Workspace.Packages.Analytics).AnalyticsReporters.EventStream

local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)
local MaybeSendEmoteFailureAnalyticsFromPlayer =
	require(CoreGui.RobloxGui.Modules.EmotesMenu.Utility.MaybeSendEmoteFailureAnalyticsFromPlayer)

local HideMenu = require(Actions.HideMenu)
local HideError = require(Actions.HideError)
local ShowError = require(Actions.ShowError)

local EmotesAnalytics = Analytics.new():withEventStream(EventStream.new(AnalyticsService))

local function handlePlayFailure(store, errorType, slotNumber, emoteAssetId)
	if errorType then
		EmotesAnalytics:onEmoteFailed(slotNumber, emoteAssetId, errorType)

		local locale = store:getState().locale
		local reasonLocalizationKey = Constants.LocalizationKeys.ErrorMessages[errorType]
		local reason = RobloxTranslator:FormatByKeyForLocale(reasonLocalizationKey, locale)

		store:dispatch(ShowError(reason))
		delay(Constants.ErrorDisplayTimeSeconds, function()
			store:dispatch(HideError())
		end)
	end

	store:dispatch(HideMenu())
end

local function PlayEmote(emoteName, slotNumber, emoteAssetId, onEmotePlay, onEmoteStop)
	return function(store)
		local localPlayer = LocalPlayer
		local didFail = MaybeSendEmoteFailureAnalyticsFromPlayer(localPlayer, function(errorType)
			handlePlayFailure(store, errorType, slotNumber, emoteAssetId)
		end)
		if didFail then
			return
		end

		store:dispatch(HideMenu())

		local humanoid = localPlayer.Character:FindFirstChildOfClass("Humanoid")
		local playEmoteFunction = function()
			return humanoid:PlayEmoteAndGetAnimTrackById(emoteAssetId)
		end

		local success, didPlay, _animationTrack = pcall(playEmoteFunction)

		if success and didPlay then
			EmotesAnalytics:onEmotePlayed(slotNumber, emoteAssetId)
		else
			handlePlayFailure(store, Constants.ErrorTypes.TemporarilyUnavailable, slotNumber, emoteAssetId)
			return
		end
	end
end

return PlayEmote
