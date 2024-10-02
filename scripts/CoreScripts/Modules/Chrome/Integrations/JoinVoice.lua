local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local CorePackages = game:GetService("CorePackages")

local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local VoiceConstants = require(RobloxGui.Modules.VoiceChat.Constants)
local CommonIcon = require(script.Parent.CommonIcon)
local VOICE_JOIN_PROGRESS = VoiceConstants.VOICE_JOIN_PROGRESS
local VoiceChatPromptType = require(RobloxGui.Modules.VoiceChatPrompt.PromptType)
local GetFFlagEnableJoinVoiceOnUnibar = require(script.Parent.Parent.Flags.GetFFlagEnableJoinVoiceOnUnibar)
local GetFFlagIntegratePhoneUpsellJoinVoice =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagIntegratePhoneUpsellJoinVoice

local ChromeService = require(script.Parent.Parent.Service)

local joinVoice
joinVoice = ChromeService:register({
	initialAvailability = ChromeService.AvailabilitySignal.Unavailable,
	id = "join_voice",
	label = "CoreScripts.TopBar.JoinVoice",
	activated = function()
		local SettingsHub = if GetFFlagIntegratePhoneUpsellJoinVoice()
			then require(RobloxGui.Modules.Settings.SettingsHub)
			else nil
		VoiceChatServiceManager:JoinVoice(SettingsHub)
	end,
	components = {
		Icon = function()
			return CommonIcon("icons/controls/publicAudioJoin")
		end,
	},
})

local function HideOrShowJoinVoiceButton(state)
	if state == VOICE_JOIN_PROGRESS.Suspended then
		joinVoice.availability:available()
	elseif state == VOICE_JOIN_PROGRESS.Joined then
		joinVoice.availability:unavailable()
		-- When we enable and join voice through this button, we unmute the user
		if VoiceChatServiceManager.inExpUpsellEntrypoint == VoiceConstants.IN_EXP_UPSELL_ENTRYPOINTS.JOIN_VOICE then
			VoiceChatServiceManager:ToggleMic()
			VoiceChatServiceManager:showPrompt(VoiceChatPromptType.VoiceConsentAcceptedToast)
		end
	end
end

if GetFFlagEnableJoinVoiceOnUnibar() and game:GetEngineFeature("VoiceChatSupported") then
	if GetFFlagIntegratePhoneUpsellJoinVoice() then
		task.spawn(function()
			-- Only show the join voice button if we're not in the phone upsell flow
			if VoiceChatServiceManager:ShouldShowJoinVoice() then
				-- Pin if we're already in suspended state
				joinVoice.availability:available()
			end
			VoiceChatServiceManager.VoiceJoinProgressChanged.Event:Connect(HideOrShowJoinVoiceButton)
		end)
	else
		-- Only show the join voice button if we're not in the phone upsell flow
		if VoiceChatServiceManager:ShouldShowJoinVoice() then
			-- Pin if we're already in suspended state
			joinVoice.availability:available()
		end
		VoiceChatServiceManager.VoiceJoinProgressChanged.Event:Connect(HideOrShowJoinVoiceButton)
	end
end

return joinVoice
