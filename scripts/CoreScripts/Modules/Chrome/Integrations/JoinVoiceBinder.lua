local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local React = require(CorePackages.Packages.React)

local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default

local CrossExperienceVoice = require(CorePackages.Workspace.Packages.CrossExperienceVoice)
local CrossExperience = require(CorePackages.Workspace.Packages.CrossExperience)
local RoactUtils = require(CorePackages.Workspace.Packages.RoactUtils)

local dependencyArray = RoactUtils.Hooks.dependencyArray

local ChromeEnabled = require(Chrome.Enabled)
local ChromeService = if ChromeEnabled() then require(Chrome.ChromeShared.Service) else nil
local isCEVFocused = CrossExperience.Utils.isVoiceFocused
local useIsVoiceFocused = CrossExperienceVoice.Hooks.useIsVoiceFocused
local useIsVoiceConnecting = CrossExperienceVoice.Hooks.useIsVoiceConnecting

local VoiceConstants = require(RobloxGui.Modules.VoiceChat.Constants)
local VOICE_JOIN_PROGRESS = VoiceConstants.VOICE_JOIN_PROGRESS
local VoiceChatPromptType = require(RobloxGui.Modules.VoiceChatPrompt.PromptType)

local GetFFlagEnableConnectDisconnectInSettingsAndChrome =
	require(RobloxGui.Modules.Flags.GetFFlagEnableConnectDisconnectInSettingsAndChrome)
local GetFFlagIntegratePhoneUpsellJoinVoice =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagIntegratePhoneUpsellJoinVoice
local GetFFlagEnableVoiceUxUpdates = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableVoiceUxUpdates

local Once = function(fn)
	local called = false
	return function(...)
		if not called then
			called = true
			return fn(...)
		end
		return nil
	end
end

-- This will ensure we only send the "show" event once per session, for some reason it get's called twice on initialization
local sendVoiceJoinUpsellShownEvent = Once(function()
	VoiceChatServiceManager:reportJoinVoiceUpsellEvent("Shown")
end)

local function JoinVoiceBinder()
	local isVoiceFocused = useIsVoiceFocused()
	local isVoiceConnecting = useIsVoiceConnecting()
	local isVoiceActive = React.useMemo(function()
		return isVoiceFocused or isVoiceConnecting
	end, dependencyArray(isVoiceConnecting, isVoiceFocused))

	local integration = React.useMemo(function()
		if ChromeService then
			return ChromeService:integrations()["join_voice"] :: any
		end
		return nil
	end, {})

	local setAvailability = React.useCallback(function(availability: number)
		if not integration or not ChromeService then
			return
		end

		if not isVoiceFocused then
			if availability == ChromeService.AvailabilitySignal.Available then
				sendVoiceJoinUpsellShownEvent()
				integration.availability:available()
			elseif availability == ChromeService.AvailabilitySignal.Unavailable then
				integration.availability:unavailable()
			end
		end
	end, {})

	local applyInitialJoinVoiceState = React.useCallback(function()
		if not ChromeService then
			return
		end

		if GetFFlagIntegratePhoneUpsellJoinVoice() then
			task.spawn(function()
				-- Only show the join voice button if we're not in the phone upsell flow
				if VoiceChatServiceManager:ShouldShowJoinVoice() and not isVoiceActive and not isCEVFocused() then
					-- Pin if we're already in suspended state
					setAvailability(ChromeService.AvailabilitySignal.Available)
				end
			end)
		else
			-- Only show the join voice button if we're not in the phone upsell flow
			if VoiceChatServiceManager:ShouldShowJoinVoice() and not isVoiceActive and not isCEVFocused() then
				-- Pin if we're already in suspended state
				setAvailability(ChromeService.AvailabilitySignal.Available)
			end
		end
	end, dependencyArray(integration, isVoiceActive))

	local hideOrShowJoinVoiceButton = React.useCallback(function(state)
		if not integration then
			return
		end

		if isVoiceActive or isCEVFocused() then
			integration.availability:unavailable()
		elseif state == VOICE_JOIN_PROGRESS.Idle then
			applyInitialJoinVoiceState()
		elseif not GetFFlagEnableVoiceUxUpdates() and state == VOICE_JOIN_PROGRESS.Suspended then
			integration.availability:available()
		elseif state == VOICE_JOIN_PROGRESS.Joined then
			integration.availability:unavailable()
			-- When we enable and join voice through this button, we unmute the user
			if VoiceChatServiceManager.inExpUpsellEntrypoint == VoiceConstants.IN_EXP_UPSELL_ENTRYPOINTS.JOIN_VOICE then
				VoiceChatServiceManager:ToggleMic()
				VoiceChatServiceManager:showPrompt(VoiceChatPromptType.VoiceConsentAcceptedToast)
			end
		end
	end, dependencyArray(integration, isVoiceActive))

	local onShowVoiceUI = React.useCallback(function()
		integration.availability:unavailable()
	end, dependencyArray(integration))

	local onHideVoiceUI = React.useCallback(function()
		if isVoiceActive or isCEVFocused() then
			integration.availability:unavailable()
		else
			integration.availability:available()
		end
	end, dependencyArray(integration, isVoiceActive))

	local registerEventListeners = React.useCallback(function()
		local showVoiceUIConnection
		local hideVoiceUIConnection
		local connection = VoiceChatServiceManager.VoiceJoinProgressChanged.Event:Connect(hideOrShowJoinVoiceButton)

		if GetFFlagEnableConnectDisconnectInSettingsAndChrome() then
			showVoiceUIConnection = VoiceChatServiceManager.showVoiceUI.Event:Connect(onShowVoiceUI)
			if not GetFFlagEnableVoiceUxUpdates() then
				hideVoiceUIConnection = VoiceChatServiceManager.hideVoiceUI.Event:Connect(onHideVoiceUI)
			end
		end

		return function()
			if connection then
				connection:Disconnect()
			end
			if showVoiceUIConnection then
				showVoiceUIConnection:Disconnect()
			end
			if hideVoiceUIConnection then
				hideVoiceUIConnection:Disconnect()
			end
		end
	end, {})

	React.useEffect(function()
		applyInitialJoinVoiceState()
		registerEventListeners()
	end, {})

	React.useEffect(function()
		hideOrShowJoinVoiceButton(VoiceChatServiceManager.VoiceJoinProgress)
	end, { isVoiceActive })

	return nil
end

return JoinVoiceBinder
