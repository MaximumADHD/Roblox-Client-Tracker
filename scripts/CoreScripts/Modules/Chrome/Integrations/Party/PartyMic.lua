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

local observeCurrentPartyId = CrossExperienceVoice.Utils.observeCurrentPartyId

local isLocalPlayerMuted = nil
local isLocalPlayerMutedSignal = Signal.new()
isLocalPlayerMutedSignal:connect(function(isMuted)
	isLocalPlayerMuted = isMuted
end)

local integration = ChromeService:register({
	id = Constants.TOGGLE_MIC_INTEGRATION_ID,
	label = "CoreScripts.TopBar.ToggleMic",
	activated = function()
		local userId = Players and Players.LocalPlayer and Players.LocalPlayer.UserId or -1
		if userId ~= -1 and isLocalPlayerMuted ~= nil then
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
			})
		end,
	},
	initialAvailability = ChromeService.AvailabilitySignal.Unavailable,
})

if GetFFlagEnablePartyIconInChrome() and GetFFlagEnableCrossExpVoice() then
	observeCurrentPartyId(function(currentPartyId)
		-- This is technically wrong - we show mute button depending on whether user is in the party, not whether user has joined voice
		-- In case the user is in party and not joined voice for whatever reason, this button doesnt do anything
		-- Will be refactored once voice connect state is done as part of IRIS-1854
		if currentPartyId == "" then
			integration.availability:unavailable()
		else
			integration.availability:pinned()
		end
	end)
end

return integration
