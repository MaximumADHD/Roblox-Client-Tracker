local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Players = game:GetService("Players")
local AnalyticsService = game:GetService("RbxAnalyticsService")

local React = require(CorePackages.Packages.React)
local Signals = require(CorePackages.Packages.Signals)
local SignalsReact = require(CorePackages.Packages.SignalsReact)

local Foundation = require(CorePackages.Packages.Foundation)

local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local VoiceIndicator = require(RobloxGui.Modules.VoiceChat.Components.VoiceIndicatorFunc)
local FFlagProactiveVoiceRestrictionsUFR = require(RobloxGui.Modules.VoiceChat.Flags.FFlagProactiveVoiceRestrictionsUFR)
local VoiceAnalytics = require(RobloxGui.Modules.Settings.Analytics.VoiceAnalytics)
local GetFFlagEnableVoiceMuteAnalytics = require(RobloxGui.Modules.Flags.GetFFlagEnableVoiceMuteAnalytics)
local AudioFocusManagementEnabled = game:GetEngineFeature("AudioFocusManagement")
local FFlagEnableChromeAudioFocusManagement = game:DefineFastFlag("EnableChromeAudioFocusManagement", false)
local EnableChromeAudioFocusManagement = AudioFocusManagementEnabled and FFlagEnableChromeAudioFocusManagement

local FFlagMicConsumerRegistry = game:DefineFastFlag("MicConsumerRegistry", false)

local ChromePackage = require(CorePackages.Workspace.Packages.Chrome)
local SideSheetPlacement = ChromePackage.Enums.SideSheetPlacement

local ChromeSharedFlags = require(Chrome.ChromeShared.Flags)
local FFlagTokenizeUnibarConstantsWithStyleProvider = ChromeSharedFlags.FFlagTokenizeUnibarConstantsWithStyleProvider
local ChromeService = require(Chrome.Service)
local ChromeUtils = require(Chrome.ChromeShared.Service.ChromeUtils)
local isVoiceChatSupported = require(Chrome.Integrations.isVoiceChatSupported)
local RedVoiceDot = require(Chrome.Integrations.RedVoiceDot)
local UnibarStyle = require(CorePackages.Workspace.Packages.Chrome).UnibarStyle
local useIsPlaytestMode = require(Chrome.ChromeShared.Hooks.useIsPlaytestMode)

local FFlagEnablePlaytestModeUnibar = require(CorePackages.Workspace.Packages.SharedFlags).FFlagEnablePlaytestModeUnibar
local MappedSignal = ChromeUtils.MappedSignal

local micActivatedSignal: any = if FFlagProactiveVoiceRestrictionsUFR
	then ChromeUtils.ObservableValue.new(false)
	else MappedSignal.new(VoiceChatServiceManager.muteChanged.Event, function()
		return VoiceChatServiceManager.localMuted == false
	end)

local Constants = require(Chrome.ChromeShared.Unibar.Constants)

local Analytics = require(RobloxGui.Modules.SelfView.Analytics).new()

local voiceAnalytics
if GetFFlagEnableVoiceMuteAnalytics() then
	voiceAnalytics = VoiceAnalytics.new(AnalyticsService, "Chrome.Integrations.ToggleMic")
end

local muteSelf

local function handleRestrictedActivation(): boolean
	local restrictionState = VoiceChatServiceManager:GetVoiceRestrictionState(false)
	if restrictionState == "restricted" then
		VoiceChatServiceManager:ShowVoiceRestriction()
	end
	return restrictionState ~= "normal"
end

local toggleMic = function(self)
	if FFlagProactiveVoiceRestrictionsUFR and handleRestrictedActivation() then
		return
	end

	if FFlagMicConsumerRegistry then
		local micManager = VoiceChatServiceManager:GetMicManager()
		if micManager and not micManager:HasConsumer("voice_chat") and micManager:GetConsumerCount() > 0 then
			local shouldActivate = micManager.localMuted ~= false
			micManager:SetMicActiveForAllConsumers(shouldActivate, "ChromeIntegrationsToggleMic")
			Analytics:setLastCtx("SelfView")
			return
		end
	end

	VoiceChatServiceManager:ToggleMic("ChromeIntegrationsToggleMic")
	Analytics:setLastCtx("SelfView")
	if voiceAnalytics then
		voiceAnalytics:onToggleMuteSelf(not VoiceChatServiceManager.localMuted)
	end
end

local rejoinChannel = function(self)
	if FFlagProactiveVoiceRestrictionsUFR and handleRestrictedActivation() then
		return
	end
	VoiceChatServiceManager:RejoinPreviousChannel()
end

local showLoading = function(self)
	if FFlagProactiveVoiceRestrictionsUFR and handleRestrictedActivation() then
		return
	end
	VoiceChatServiceManager:ShowVoiceChatLoadingMessage()
end

local FFlagChangeToggleMicText = require(Chrome.Flags.FFlagChangeToggleMicText)

muteSelf = ChromeService:register({
	--initialAvailability = ChromeService.AvailabilitySignal.Available,
	id = "toggle_mic_mute",
	label = if FFlagChangeToggleMicText then "CoreScripts.TopBar.Mic" else "CoreScripts.TopBar.ToggleMic",
	sideSheetPlacement = SideSheetPlacement.Unibar,
	activated = toggleMic,
	isActivated = micActivatedSignal,
	components = {
		Icon = function(props)
			local unibarStyle
			local iconSize
			if FFlagTokenizeUnibarConstantsWithStyleProvider then
				unibarStyle = UnibarStyle.use()
				iconSize = unibarStyle.ICON_SIZE
			else
				iconSize = Constants.ICON_SIZE
			end
			local isPlaytestMode = if FFlagEnablePlaytestModeUnibar then useIsPlaytestMode() else nil
			local iconStyle = if FFlagEnablePlaytestModeUnibar and isPlaytestMode then "MicDark" else "MicLight"

			local nonVoiceIndicator
			if FFlagMicConsumerRegistry then
				local micManager = VoiceChatServiceManager:GetMicManager()
				local hasVoiceChat = micManager and micManager:HasConsumer("voice_chat")
				local useNonVoiceIndicator = not hasVoiceChat and micManager and micManager:GetConsumerCount() > 0
				local localMuted = if micManager then micManager.localMuted else nil
				local muteState, setMuteState = React.useState(localMuted ~= false)
				local level, setLevel = React.useBinding(0)
				local _, setConsumerVersion = React.useState(0)
				React.useEffect(function()
					if not micManager then
						return
					end
					local muteConn = micManager.muteChanged.Event:Connect(function(muted)
						setMuteState(muted ~= false)
					end)
					local levelConn = micManager.levelChanged.Event:Connect(function(quantizedLevel)
						setLevel(quantizedLevel)
					end)
					local consumerConn = micManager.hasConsumersChanged.Event:Connect(function()
						setConsumerVersion(function(v)
							return v + 1
						end)
					end)
					return function()
						muteConn:Disconnect()
						levelConn:Disconnect()
						consumerConn:Disconnect()
					end
				end, { micManager :: any })

				local iconName = if muteState then "Muted" else "Unmuted"
				local unmutedImage = level:map(function(quantizedLevel)
					return VoiceChatServiceManager:GetIcon(iconName .. tostring(quantizedLevel), iconStyle)
				end)

				if useNonVoiceIndicator then
					nonVoiceIndicator = React.createElement("ImageLabel", {
						Size = UDim2.new(0, iconSize, 0, iconSize),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						Image = if muteState
							then VoiceChatServiceManager:GetIcon(iconName, iconStyle)
							else unmutedImage,
					})
				end
			end

			local restrictionState = "normal"
			if FFlagProactiveVoiceRestrictionsUFR then
				restrictionState = SignalsReact.useSignalState(function(scope)
					return VoiceChatServiceManager:GetVoiceRestrictionState(scope)
				end)
			end

			if FFlagProactiveVoiceRestrictionsUFR and restrictionState == "restricted" then
				return React.createElement(Foundation.Image, {
					Image = "icons/controls/microphoneMute",
					imageStyle = { Transparency = 0.5 },
					Size = UDim2.fromOffset(iconSize, iconSize),
				})
			end

			if nonVoiceIndicator then
				return nonVoiceIndicator
			end

			return React.createElement("Frame", {
				Size = UDim2.new(0, iconSize, 0, iconSize),
				BackgroundTransparency = 1,
			}, {
				React.createElement(VoiceIndicator, {
					userId = tostring((Players.LocalPlayer :: Player).UserId),
					hideOnError = false,
					iconStyle = iconStyle,
					selectable = false,
					size = UDim2.new(0, iconSize, 0, iconSize),
					showConnectingShimmer = true,
				}) :: any,
				React.createElement(RedVoiceDot, {
					position = UDim2.new(1, -7, 1, -7),
				}) :: any,
			})
		end,
	},
})

local function updateMicActivated(restrictionState: string)
	micActivatedSignal:set(restrictionState == "normal" and VoiceChatServiceManager.localMuted == false)
end

local function applyRestrictionState(): boolean
	local state = VoiceChatServiceManager:GetVoiceRestrictionState(false)
	if state == "normal" then
		return false
	end

	-- Restriction presentation wins over Ended/Failed and unsuccessful asyncInit.
	muteSelf.activated = handleRestrictedActivation
	muteSelf.availability:unavailable()

	return true
end

local function observeMicPresentation(): () -> ()
	local disposeRestrictionEffect = Signals.createEffect(function(scope)
		updateMicActivated(VoiceChatServiceManager:GetVoiceRestrictionState(scope))
		applyRestrictionState()
	end)

	local muteConnection = VoiceChatServiceManager.muteChanged.Event:Connect(function()
		updateMicActivated(VoiceChatServiceManager:GetVoiceRestrictionState(false))
	end)

	return function()
		disposeRestrictionEffect()
		muteConnection:Disconnect()
	end
end

local function applyVoiceUIVisibility()
	if FFlagProactiveVoiceRestrictionsUFR and applyRestrictionState() then
		return
	end

	if VoiceChatServiceManager.voiceUIVisible then
		muteSelf.availability:pinned()
	else
		muteSelf.availability:unavailable()
	end
end

local function updateMicAvailabilityFromConsumers()
	if FFlagProactiveVoiceRestrictionsUFR and applyRestrictionState() then
		return
	end

	local micManager = VoiceChatServiceManager:GetMicManager()
	if micManager and micManager:GetConsumerCount() > 0 then
		muteSelf.availability:pinned()
	elseif not VoiceChatServiceManager.voiceUIVisible then
		muteSelf.availability:unavailable()
	end
end

local function updateVoiceState(_, voiceState)
	if FFlagProactiveVoiceRestrictionsUFR and applyRestrictionState() then
		return
	end

	local voiceEnabled = voiceState ~= (Enum :: any).VoiceChatState.Ended
	if voiceEnabled then
		if EnableChromeAudioFocusManagement then
			applyVoiceUIVisibility()
		else
			muteSelf.availability:pinned()
		end
	else
		if FFlagMicConsumerRegistry then
			updateMicAvailabilityFromConsumers()
		else
			muteSelf.availability:unavailable()
		end
	end

	local voiceFailed = voiceState == (Enum :: any).VoiceChatState.Failed
	local voiceLoading = voiceState == (Enum :: any).VoiceChatState.Joining
		or voiceState == (Enum :: any).VoiceChatState.JoiningRetry

	if voiceFailed then
		muteSelf.activated = rejoinChannel
	elseif voiceLoading then
		muteSelf.activated = showLoading
	else
		muteSelf.activated = toggleMic
	end
end

if isVoiceChatSupported() then
	if FFlagProactiveVoiceRestrictionsUFR then
		script.Destroying:Once(observeMicPresentation())
	end

	VoiceChatServiceManager:asyncInit()
		:andThen(function()
			local voiceService = VoiceChatServiceManager:getService()
			if voiceService then
				voiceService.StateChanged:Connect(updateVoiceState)
				VoiceChatServiceManager:SetupParticipantListeners()
				if EnableChromeAudioFocusManagement then
					VoiceChatServiceManager.showVoiceUI.Event:Connect(applyVoiceUIVisibility)
					VoiceChatServiceManager.hideVoiceUI.Event:Connect(applyVoiceUIVisibility)
					applyVoiceUIVisibility()
				else
					if not FFlagProactiveVoiceRestrictionsUFR or not applyRestrictionState() then
						muteSelf.availability:pinned()
					end
				end
			end
		end)
		:catch(function() end)
end

if FFlagMicConsumerRegistry then
	local micManager = VoiceChatServiceManager:GetMicManager()
	if micManager and micManager.hasConsumersChanged then
		micManager.hasConsumersChanged.Event:Connect(function()
			updateMicAvailabilityFromConsumers()
			micManager:SetMicIndicatorReady(micManager:GetConsumerCount() > 0)
		end)
		updateMicAvailabilityFromConsumers()
		micManager:SetMicIndicatorReady(micManager:GetConsumerCount() > 0)
	end
end

return muteSelf
