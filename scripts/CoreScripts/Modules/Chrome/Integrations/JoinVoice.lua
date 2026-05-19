local Chrome = script:FindFirstAncestor("Chrome")

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local Foundation = require(CorePackages.Packages.Foundation)
local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local VoiceConstants = require(RobloxGui.Modules.VoiceChat.Constants)
local CommonIcon = require(Chrome.Integrations.CommonIcon)
local CommonFtuxTooltip = require(Chrome.Integrations.CommonFtuxTooltip)
local Constants = require(Chrome.ChromeShared.Unibar.Constants)
local VOICE_JOIN_PROGRESS = VoiceConstants.VOICE_JOIN_PROGRESS
local VoiceChatPromptType = require(RobloxGui.Modules.VoiceChatPrompt.PromptType)
local observeCurrentContextId = require(CorePackages.Workspace.Packages.CrossExperience).Utils.observeCurrentContextId
local GetIcon = require(CorePackages.Workspace.Packages.VoiceChat).Utils.GetIcon
local CEV_CONTEXT_ID =
	require(CorePackages.Workspace.Packages.CrossExperience).Constants.AUDIO_FOCUS_MANAGEMENT.CEV.CONTEXT_ID
local GetFFlagEnableConnectDisconnectInSettingsAndChrome =
	require(RobloxGui.Modules.Flags.GetFFlagEnableConnectDisconnectInSettingsAndChrome)
local GetFFlagIntegratePhoneUpsellJoinVoice =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagIntegratePhoneUpsellJoinVoice
local GetFFlagFixSeamlessVoiceIntegrationWithPrivateVoice =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagFixSeamlessVoiceIntegrationWithPrivateVoice
local GetFFlagEnableVoiceUxUpdates = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableVoiceUxUpdates
local GetFFlagVoiceChatLogConnectionSource =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagVoiceChatLogConnectionSource

local ChromeSharedFlags = require(Chrome.ChromeShared.Flags)
local FFlagTokenizeUnibarConstantsWithStyleProvider = ChromeSharedFlags.FFlagTokenizeUnibarConstantsWithStyleProvider
local FFlagCheckShouldShowJoinVoiceInEvent = game:DefineFastFlag("CheckShouldShowJoinVoiceInEvent", false)

local FFlagReplaceJoinVoiceIconToMuted = game:DefineFastFlag("ReplaceJoinVoiceIconToMuted", false)
local FIntJoinVoiceFtuxShowDelayMs = game:DefineFastInt("JoinVoiceFtuxShowDelayMs", 1000)
local FIntJoinVoiceFtuxDismissDelayMs = game:DefineFastInt("JoinVoiceFtuxDismissDelayMs", 5000)
local FIntUnibarJoinVoiceTooltipPriority = game:DefineFastInt("UnibarJoinVoiceTooltipPriority", 1000)
local FFlagEnableChromeJoinVoiceTooltip = game:DefineFastFlag("EnableChromeJoinVoiceTooltip", false)

local ChromeService = require(Chrome.Service)
local UnibarStyle = require(CorePackages.Workspace.Packages.Chrome).UnibarStyle

local ChromePackage = require(CorePackages.Workspace.Packages.Chrome)
local SideSheetPlacement = ChromePackage.Enums.SideSheetPlacement

local isPrivateVoiceFocused = false
local wasJoinVoiceSeenInThisPlaySession = false
local lastKnownIntegrationAvailability: number = ChromeService.AvailabilitySignal.Unavailable

function getShouldShowJoinVoiceTooltip(): boolean
	local ageVerificationOverlay = VoiceChatServiceManager:FetchAgeVerificationOverlay()
	local shouldShow = not wasJoinVoiceSeenInThisPlaySession
		and ageVerificationOverlay
		and ageVerificationOverlay.showJoinVoiceUpsellTooltip
	wasJoinVoiceSeenInThisPlaySession = true
	return shouldShow
end

local joinVoice
joinVoice = ChromeService:register({
	initialAvailability = ChromeService.AvailabilitySignal.Unavailable,
	id = "join_voice",
	label = "CoreScripts.TopBar.JoinVoice",
	sideSheetPlacement = SideSheetPlacement.Unibar,
	activated = function()
		local SettingsHub = if GetFFlagIntegratePhoneUpsellJoinVoice()
			then require(RobloxGui.Modules.Settings.SettingsHub)
			else nil
		if GetFFlagVoiceChatLogConnectionSource() then
			VoiceChatServiceManager.pendingConnectionSource = VoiceConstants.VOICE_CONNECTION_SOURCE.IN_EXPERIENCE
		end
		VoiceChatServiceManager:JoinVoice(SettingsHub)
	end,
	components = {
		Icon = function()
			local unibarStyle
			local iconSize
			if FFlagTokenizeUnibarConstantsWithStyleProvider then
				unibarStyle = UnibarStyle.use()
				iconSize = unibarStyle.ICON_SIZE
			else
				iconSize = Constants.ICON_SIZE
			end
			local iconName = "icons/controls/publicAudioJoin"
			if FFlagReplaceJoinVoiceIconToMuted then
				iconName = GetIcon("Muted", "MicLight")
			end
			if FFlagEnableChromeJoinVoiceTooltip then
				local shouldShowTooltip = getShouldShowJoinVoiceTooltip()
				return React.createElement(Foundation.View, {
					Size = UDim2.new(0, iconSize, 0, iconSize),
				}, {
					Icon = CommonIcon(iconName),
					Tooltip = CommonFtuxTooltip({
						id = "JOIN_VOICE",
						priority = FIntUnibarJoinVoiceTooltipPriority,
						isIconVisible = shouldShowTooltip,
						dismissOnOutsideInput = true,
						headerKey = "CoreScripts.FTUX.Heading.JoinVoice",
						bodyKey = "CoreScripts.FTUX.Label.JoinVoiceDescription",
						showDelay = FIntJoinVoiceFtuxShowDelayMs,
						dismissDelay = FIntJoinVoiceFtuxDismissDelayMs,
						onDismissed = function()
							pcall(function()
								VoiceChatServiceManager:RecordUserSeenModal(
									VoiceConstants.MODAL_IDS.IN_EXP_JOIN_VOICE_UPSELL
								)
							end)
						end,
					}),
				})
			end
			return CommonIcon(iconName) :: any
		end,
	},
})

if GetFFlagFixSeamlessVoiceIntegrationWithPrivateVoice() then
	return joinVoice
end

local function setAvailability(availability: number)
	lastKnownIntegrationAvailability = availability
	if not isPrivateVoiceFocused then
		if availability == ChromeService.AvailabilitySignal.Available then
			joinVoice.availability:available()
		elseif availability == ChromeService.AvailabilitySignal.Unavailable then
			joinVoice.availability:unavailable()
		end
	end
end

local function HideOrShowJoinVoiceButton(state)
	if
		state == VOICE_JOIN_PROGRESS.Suspended
		and (not FFlagCheckShouldShowJoinVoiceInEvent or VoiceChatServiceManager:ShouldShowJoinVoice())
	then
		setAvailability(ChromeService.AvailabilitySignal.Available)
	elseif state == VOICE_JOIN_PROGRESS.Joined then
		setAvailability(ChromeService.AvailabilitySignal.Unavailable)
		-- When we enable and join voice through this button, we unmute the user
		if VoiceChatServiceManager.inExpUpsellEntrypoint == VoiceConstants.IN_EXP_UPSELL_ENTRYPOINTS.JOIN_VOICE then
			VoiceChatServiceManager:ToggleMic()
			VoiceChatServiceManager:showPrompt(VoiceChatPromptType.VoiceConsentAcceptedToast)
		end
	end
end
observeCurrentContextId(function(contextId)
	local isVoiceFocused = contextId == CEV_CONTEXT_ID
	if isPrivateVoiceFocused ~= isVoiceFocused then
		isPrivateVoiceFocused = isVoiceFocused
		if isPrivateVoiceFocused then
			lastKnownIntegrationAvailability = joinVoice.availability:get()
			joinVoice.availability:unavailable()
		else
			setAvailability(lastKnownIntegrationAvailability)
		end
	end
end)

if game:GetEngineFeature("VoiceChatSupported") then
	if GetFFlagIntegratePhoneUpsellJoinVoice() then
		task.spawn(function()
			-- Only show the join voice button if we're not in the phone upsell flow
			if VoiceChatServiceManager:ShouldShowJoinVoice() then
				setAvailability(ChromeService.AvailabilitySignal.Available)
			end
			VoiceChatServiceManager.VoiceJoinProgressChanged.Event:Connect(HideOrShowJoinVoiceButton)
		end)
	else
		-- Only show the join voice button if we're not in the phone upsell flow
		if VoiceChatServiceManager:ShouldShowJoinVoice() then
			setAvailability(ChromeService.AvailabilitySignal.Available)
		end
		VoiceChatServiceManager.VoiceJoinProgressChanged.Event:Connect(HideOrShowJoinVoiceButton)
	end
	if GetFFlagEnableConnectDisconnectInSettingsAndChrome() then
		if not GetFFlagEnableVoiceUxUpdates() then
			VoiceChatServiceManager.showVoiceUI.Event:Connect(function()
				setAvailability(ChromeService.AvailabilitySignal.Unavailable)
			end)
			VoiceChatServiceManager.hideVoiceUI.Event:Connect(function()
				setAvailability(ChromeService.AvailabilitySignal.Available)
			end)
		end
	else
		VoiceChatServiceManager.VoiceJoinProgressChanged.Event:Connect(HideOrShowJoinVoiceButton)
	end
end

return joinVoice
