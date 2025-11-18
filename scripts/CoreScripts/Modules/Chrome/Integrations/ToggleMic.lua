local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Players = game:GetService("Players")
local AnalyticsService = game:GetService("RbxAnalyticsService")
local React = require(CorePackages.Packages.React)

local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local VoiceIndicator = require(RobloxGui.Modules.VoiceChat.Components.VoiceIndicatorFunc)
local VoiceAnalytics = require(RobloxGui.Modules.Settings.Analytics.VoiceAnalytics)
local GetFFlagEnableVoiceMuteAnalytics = require(RobloxGui.Modules.Flags.GetFFlagEnableVoiceMuteAnalytics)
local GetFFlagTweakedMicPinning = require(Chrome.Flags.GetFFlagTweakedMicPinning)
local AudioFocusManagementEnabled = game:GetEngineFeature("AudioFocusManagement")
local FFlagEnableChromeAudioFocusManagement = game:DefineFastFlag("EnableChromeAudioFocusManagement", false)
local EnableChromeAudioFocusManagement = AudioFocusManagementEnabled and FFlagEnableChromeAudioFocusManagement

local ChromeSharedFlags = require(Chrome.ChromeShared.Flags)
local FFlagTokenizeUnibarConstantsWithStyleProvider = ChromeSharedFlags.FFlagTokenizeUnibarConstantsWithStyleProvider

local ChromeService = require(Chrome.Service)
local RedVoiceDot = require(Chrome.Integrations.RedVoiceDot)
local UnibarStyle = require(Chrome.ChromeShared.Unibar.UnibarStyle)

local Constants = require(Chrome.ChromeShared.Unibar.Constants)

local Analytics = require(RobloxGui.Modules.SelfView.Analytics).new()

local voiceAnalytics
if GetFFlagEnableVoiceMuteAnalytics() then
	voiceAnalytics = VoiceAnalytics.new(AnalyticsService, "Chrome.Integrations.ToggleMic")
end

local muteSelf

local toggleMic = function(self)
	VoiceChatServiceManager:ToggleMic("ChromeIntegrationsToggleMic")
	Analytics:setLastCtx("SelfView")
	if voiceAnalytics then
		voiceAnalytics:onToggleMuteSelf(not VoiceChatServiceManager.localMuted)
	end
end

local rejoinChannel = function(self)
	VoiceChatServiceManager:RejoinPreviousChannel()
end

local showLoading = function(self)
	VoiceChatServiceManager:ShowVoiceChatLoadingMessage()
end

muteSelf = ChromeService:register({
	--initialAvailability = ChromeService.AvailabilitySignal.Available,
	id = "toggle_mic_mute",
	label = "CoreScripts.TopBar.ToggleMic",
	activated = toggleMic,
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
			return React.createElement("Frame", {
				Size = UDim2.new(0, iconSize, 0, iconSize),
				BackgroundTransparency = 1,
			}, {
				React.createElement(VoiceIndicator, {
					userId = tostring((Players.LocalPlayer :: Player).UserId),
					hideOnError = false,
					iconStyle = "MicLight",
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

local function applyVoiceUIVisibility()
	if VoiceChatServiceManager.voiceUIVisible then
		if GetFFlagTweakedMicPinning() then
			muteSelf.availability:pinned()
		else
			muteSelf.availability:available()
		end
	else
		muteSelf.availability:unavailable()
	end
end

local function updateVoiceState(_, voiceState)
	local voiceEnabled = voiceState ~= (Enum :: any).VoiceChatState.Ended
	if voiceEnabled then
		if EnableChromeAudioFocusManagement then
			applyVoiceUIVisibility()
		else
			if GetFFlagTweakedMicPinning() then
				muteSelf.availability:pinned()
			else
				muteSelf.availability:available()
			end
		end
	else
		muteSelf.availability:unavailable()
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

if game:GetEngineFeature("VoiceChatSupported") then
	task.spawn(function()
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
						if GetFFlagTweakedMicPinning() then
							muteSelf.availability:pinned()
						else
							muteSelf.availability:available()
						end
					end
				end
			end)
			:catch(function() end)
	end)
end

return muteSelf
