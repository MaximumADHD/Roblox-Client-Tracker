local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local CrossExperienceVoice = require(CorePackages.Workspace.Packages.CrossExperienceVoice)
local GetFFlagEnablePartyIconInChrome =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnablePartyIconInChrome
local GetFFlagEnableCrossExpVoice = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableCrossExpVoice

local ChromeService = require(script.Parent.Parent.Parent.Service)
local PartyMicIcon = require(script.Parent.PartyMicIcon)
local Constants = require(script.Parent.Constants)
local SignalLib = require(CorePackages.Workspace.Packages.AppCommonLib)
local Signal = SignalLib.Signal

local CrossExperienceVoiceManager = CrossExperienceVoice.CrossExperienceVoiceManager.default

local isLocalPlayerMuted = nil
local isVoiceConnected = false

local isLocalPlayerMutedSignal = Signal.new()
local isVoiceConnectedSignal = Signal.new()

isLocalPlayerMutedSignal:connect(function(isMuted)
	isLocalPlayerMuted = isMuted
end)

isVoiceConnectedSignal:connect(function(isConnected)
	isVoiceConnected = isConnected
end)

local integration = nil

if GetFFlagEnablePartyIconInChrome() and GetFFlagEnableCrossExpVoice() then
	integration = ChromeService:register({
		id = Constants.TOGGLE_MIC_INTEGRATION_ID,
		label = "CoreScripts.TopBar.ToggleMic",
		activated = function()
			local userId = Players and Players.LocalPlayer and Players.LocalPlayer.UserId or -1
			if userId ~= -1 and isVoiceConnected and isLocalPlayerMuted ~= nil then
				if isLocalPlayerMuted then
					CrossExperienceVoiceManager:unmuteVoiceParticipant(userId)
				else
					CrossExperienceVoiceManager:muteVoiceParticipant(userId)
				end
			end
		end,
		components = {
			Icon = function()
				return PartyMicIcon({
					isLocalPlayerMutedSignal = isLocalPlayerMutedSignal,
					isVoiceConnectedSignal = isVoiceConnectedSignal,
				})
			end,
		},
		initialAvailability = ChromeService.AvailabilitySignal.Unavailable,
	})
end

return integration
