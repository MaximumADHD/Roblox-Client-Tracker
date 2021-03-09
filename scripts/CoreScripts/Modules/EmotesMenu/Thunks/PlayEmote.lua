local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")

local LocalPlayer = Players.LocalPlayer

local Thunks = script.Parent
local EmotesMenu = Thunks.Parent
local CoreScriptModules = EmotesMenu.Parent

local Actions = EmotesMenu.Actions

local Analytics = require(EmotesMenu.Analytics)
local Constants = require(EmotesMenu.Constants)
local EventStream = require(CorePackages.AppTempCommon.Temp.EventStream)
local RobloxTranslator = require(CoreScriptModules.RobloxTranslator)
local getPlayersService = require(EmotesMenu.Dependencies.getPlayersService)

local HideMenu = require(Actions.HideMenu)
local HideError = require(Actions.HideError)
local ShowError = require(Actions.ShowError)

local GetFFlagNewEmotesInGame = require(CoreGui.RobloxGui.Modules.Flags.GetFFlagNewEmotesInGame)
local EngineFeaturePlayEmoteAndGetAnimTrackByIdApiEnabled = game:GetEngineFeature("PlayEmoteAndGetAnimTrackByIdApiEnabled")

local EmotesAnalytics = Analytics.new():withEventStream(EventStream.new())

local function handlePlayFailure(store, reasonLocalizationKey)
	if reasonLocalizationKey then
		local locale = store:getState().locale
		local reason = RobloxTranslator:FormatByKeyForLocale(reasonLocalizationKey, locale)

		store:dispatch(ShowError(reason))
		delay(Constants.ErrorDisplayTimeSeconds, function()
			store:dispatch(HideError())
		end)
	end

	if not GetFFlagNewEmotesInGame() then
		-- Don't hide the menu on a play failure with the new emotes flag on
		store:dispatch(HideMenu())
	end
end

local function PlayEmote(emoteName, slotNumber, emoteAssetId, onEmotePlay, onEmoteStop)
	return function(store)
		local character = LocalPlayer.Character
		if GetFFlagNewEmotesInGame() then
			local players = getPlayersService()
			character = players.LocalPlayer.Character
		end

		if not character then
			handlePlayFailure(store, Constants.LocalizationKeys.ErrorMessages.TemporarilyUnavailable)
			return
		end

		local humanoid = character:FindFirstChildOfClass("Humanoid")
		if not humanoid then
			handlePlayFailure(store, Constants.LocalizationKeys.ErrorMessages.TemporarilyUnavailable)
			return
		end

		if humanoid.RigType ~= Enum.HumanoidRigType.R15 then
			if GetFFlagNewEmotesInGame() then
				handlePlayFailure(store, Constants.LocalizationKeys.ErrorMessages.SwitchToR15)
			else
				handlePlayFailure(store, Constants.LocalizationKeys.ErrorMessages.R15Only)
			end
			return
		end

		local animate = character:FindFirstChild("Animate")
		if not animate then
			handlePlayFailure(store, Constants.LocalizationKeys.ErrorMessages.NotSupported)
			return
		end

		local humanoidDescription = humanoid:FindFirstChildOfClass("HumanoidDescription")
		if not humanoidDescription then
			handlePlayFailure(store, Constants.LocalizationKeys.ErrorMessages.NotSupported)
			return
		end

		local playEmoteBindable = animate:FindFirstChild("PlayEmote")
		if playEmoteBindable and playEmoteBindable:IsA("BindableFunction") then
			if not GetFFlagNewEmotesInGame() then
				-- Don't hide menu when playing an emote with the new emotes flag on
				store:dispatch(HideMenu())
			end

			local playEmoteFunction = function() return humanoid:PlayEmote(emoteName) end
			if EngineFeaturePlayEmoteAndGetAnimTrackByIdApiEnabled then
				playEmoteFunction = function() return humanoid:PlayEmoteAndGetAnimTrackById(emoteAssetId) end
			end

			local success, didPlay, animationTrack = pcall(playEmoteFunction)

			if success and didPlay then
				if GetFFlagNewEmotesInGame() then
					if onEmotePlay then
						onEmotePlay()
					end
					if onEmoteStop then
						if animationTrack then
							animationTrack.Stopped:connect(onEmoteStop)
						else
							local tracks = humanoid:GetPlayingAnimationTracks()
							-- Connect onEmoteStop to the most recently added animationTrack. In this case, the desired emote
							tracks[#tracks].Stopped:connect(onEmoteStop)
						end
					end
				end
				EmotesAnalytics:onEmotePlayed(slotNumber, emoteAssetId)
			else
				if GetFFlagNewEmotesInGame() then
					handlePlayFailure(store, Constants.LocalizationKeys.ErrorMessages.AnimationPlaying)
				else
					handlePlayFailure(store, Constants.LocalizationKeys.ErrorMessages.TemporarilyUnavailable)
				end
				return
			end
		else
			handlePlayFailure(store, Constants.LocalizationKeys.ErrorMessages.NotSupported)
			return
		end
	end
end

return PlayEmote