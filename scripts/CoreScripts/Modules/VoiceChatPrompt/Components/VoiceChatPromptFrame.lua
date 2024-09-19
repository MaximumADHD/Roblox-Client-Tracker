--!nonstrict
local CorePackages = game:GetService("CorePackages")
local TextService = game:GetService("TextService")
local ContextActionService = game:GetService("ContextActionService")
local AnalyticsService = game:GetService("RbxAnalyticsService")
local UserInputService = game:GetService("UserInputService")

local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)
local Cryo = require(CorePackages.Cryo)
local renderWithCoreScriptsStyleProvider =
	require(script.Parent.Parent.Parent.Common.renderWithCoreScriptsStyleProvider)
local ExternalEventConnection = require(CorePackages.Workspace.Packages.RoactUtils).ExternalEventConnection

local UIBlox = require(CorePackages.UIBlox)
local Button = UIBlox.App.Button.Button
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local SlideFromTopToast = UIBlox.App.Dialog.Toast
local Images = UIBlox.App.ImageSet.Images
local useStyle = UIBlox.Core.Style.useStyle
local validateStyle = UIBlox.Style.Validator.validateStyle

local PromptType = require(script.Parent.Parent.PromptType)
local InGameMenuPolicy = require(script.Parent.Parent.Parent.InGameMenu.InGameMenuPolicy)
local VoiceChatConsentModal = require(script.Parent.VoiceChatConsentModal)
local VoiceChatTooltip = require(script.Parent.VoiceChatTooltip)
local DevicePermissionsModal = require(script.Parent.DevicePermissionsModal)

local Assets = require(script.Parent.Parent.Parent.InGameMenu.Resources.Assets)

local CoreGui = game:GetService("CoreGui")
local runService = game:GetService("RunService")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local GetFFlagEnableVoicePromptReasonText = require(RobloxGui.Modules.Flags.GetFFlagEnableVoicePromptReasonText)
local GetFFlagEnableVoiceNudge = require(RobloxGui.Modules.Flags.GetFFlagEnableVoiceNudge)
local GetFIntVoiceToxicityToastDurationSeconds =
	require(RobloxGui.Modules.Flags.GetFIntVoiceToxicityToastDurationSeconds)
local GetFFlagVoiceBanShowToastOnSubsequentJoins =
	require(RobloxGui.Modules.Flags.GetFFlagVoiceBanShowToastOnSubsequentJoins)
local FFlagEnableVoiceChatStorybookFix = require(RobloxGui.Modules.Flags.FFlagEnableVoiceChatStorybookFix)
local FFlagVoiceChatOnlyReportVoiceBans = game:DefineFastFlag("VoiceChatOnlyReportVoiceBans", false)
local GetFFlagUpdateNudgeV3VoiceBanUI = require(RobloxGui.Modules.Flags.GetFFlagUpdateNudgeV3VoiceBanUI)
local GetFFlagEnableInExpVoiceUpsell = require(RobloxGui.Modules.Flags.GetFFlagEnableInExpVoiceUpsell)
local GetFFlagEnableInExpVoiceConsentAnalytics =
	require(RobloxGui.Modules.Flags.GetFFlagEnableInExpVoiceConsentAnalytics)
local GetFFlagShowDevicePermissionsModal =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagShowDevicePermissionsModal
local EngineFeatureRbxAnalyticsServiceExposePlaySessionId =
	game:GetEngineFeature("RbxAnalyticsServiceExposePlaySessionId")
local GetFFlagEnableSeamlessVoiceUX = require(RobloxGui.Modules.Flags.GetFFlagEnableSeamlessVoiceUX)
local GetFIntVoiceJoinM3ToastDurationSeconds = require(RobloxGui.Modules.Flags.GetFIntVoiceJoinM3ToastDurationSeconds)
local GetFFlagSendDevicePermissionsModalAnalytics = require(RobloxGui.Modules.Flags.GetFFlagSendDevicePermissionsModalAnalytics)

local RobloxTranslator
if FFlagEnableVoiceChatStorybookFix() then
	RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)
else
	RobloxTranslator = require(RobloxGui:WaitForChild("Modules"):WaitForChild("RobloxTranslator"))
end

-- Constants
local ICON_SIZE = 55
local OVERLAY_WIDTH = 365
local BUTTON_CONTAINER_SIZE = 36
local PADDING = 20
local DIVIDER = 1
local TOAST_DURATION = 3
local EXTRA_PADDING_HEIGHT = 7
local CLOSE_VOICE_BAN_PROMPT = "CloseVoiceBanPrompt"

local VoiceChatPromptFrame = Roact.PureComponent:extend("VoiceChatPromptFrame")

local PromptTitle = {
	[PromptType.None] = "",
	[PromptType.NotAudible] = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.NotAudible"),
	[PromptType.Permission] = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.MicrophonePermission"),
	[PromptType.Retry] = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.MicrophonePermission"),
	[PromptType.Place] = "Exceeds Max Players",
	[PromptType.User] = "Not Eligible for Voice",
	[PromptType.VoiceChatSuspendedTemporaryAvatarChat] = RobloxTranslator:FormatByKey(
		"Feature.SettingsHub.Prompt.MicAndCameraUseSuspended"
	),
	[PromptType.VoiceChatSuspendedTemporary] = RobloxTranslator:FormatByKey(
		"Feature.SettingsHub.Prompt.MicUseSuspended"
	),
	[PromptType.VoiceChatSuspendedTemporaryB] = RobloxTranslator:FormatByKey(
		"Feature.SettingsHub.Prompt.VoiceChatSuspended"
	),
	[PromptType.VoiceChatSuspendedPermanent] = RobloxTranslator:FormatByKey(
		"Feature.SettingsHub.Prompt.VoiceChatSuspended"
	),
	[PromptType.VoiceLoading] = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.Connecting"),
	[PromptType.VoiceToxicityModal] = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.RememberRules"),
	[PromptType.VoiceToxicityToast] = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.RememberRules"),
	[PromptType.VoiceToxicityFeedbackToast] = RobloxTranslator:FormatByKey(
		"Feature.SettingsHub.Prompt.ThankYouForFeedback"
	),
	[PromptType.VoiceChatSuspendedTemporaryToast] = RobloxTranslator:FormatByKey(
		"Feature.SettingsHub.Prompt.MicUseSuspended"
	),
	[PromptType.VoiceConsentDeclinedToast] = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.ChangeYourMind"),
	[PromptType.VoiceConsentAcceptedToast] = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.JoinedVoiceChat"),
	[PromptType.VoiceConsentModalV1] = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.GetVoiceChat"),
	[PromptType.VoiceConsentModalV2] = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.VoiceChatWithOthers"),
	[PromptType.VoiceConsentModalV3] = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.GetVoiceChat"),
	[PromptType.JoinVoiceAndRequestMicPermissions] = RobloxTranslator:FormatByKey(
		"Feature.SettingsHub.Prompt.JoinedVoiceChat"
	),
	[PromptType.JoinVoiceSTUX] = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.JoinedVoiceChat"),
	[PromptType.LeaveVoice] = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.LeaveVoiceChat"),
	[PromptType.JoinVoice] = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.JoinedVoiceChatV2"),
	[PromptType.DevicePermissionsModal] = RobloxTranslator:FormatByKey(
		"Feature.SettingsHub.Prompt.NeedMicrophoneAccess"
	),
}
local PromptSubTitle = {
	[PromptType.None] = "",
	[PromptType.NotAudible] = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.NotAudible"),
	[PromptType.Permission] = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.MicrophonePermission"),
	[PromptType.Retry] = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.Retry"),
	[PromptType.Place] = "Spatial voice is only available for places with Max Players of 30 or less.",
	[PromptType.User] = "This account is not eligible to use Spatial Voice.",
	[PromptType.VoiceChatSuspendedTemporary] = RobloxTranslator:FormatByKey(
		"Feature.SettingsHub.Prompt.Subtitle.Microphone"
	),
	[PromptType.VoiceChatSuspendedTemporaryAvatarChat] = RobloxTranslator:FormatByKey(
		"Feature.SettingsHub.Prompt.Subtitle.MicAndCamera"
	),
	[PromptType.VoiceChatSuspendedTemporaryB] = RobloxTranslator:FormatByKey(
		"Feature.SettingsHub.Prompt.Subtitle.TemporaryVoiceBan1"
	),
	[PromptType.VoiceChatSuspendedPermanent] = RobloxTranslator:FormatByKey(
		"Feature.SettingsHub.Prompt.Subtitle.Revoked"
	),
	[PromptType.VoiceLoading] = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.Connecting"),
	[PromptType.VoiceToxicityModal] = RobloxTranslator:FormatByKey(
		"Feature.SettingsHub.Prompt.Subtitle.VoiceToxicityModal"
	),
	[PromptType.VoiceToxicityToast] = RobloxTranslator:FormatByKey(
		"Feature.SettingsHub.Prompt.Subtitle.VoiceToxicityToast"
	),
	[PromptType.VoiceToxicityFeedbackToast] = if GetFFlagUpdateNudgeV3VoiceBanUI()
		then RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.ThanksForLettingUsKnow")
		else RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.ThankYouForFeedback"),
	[PromptType.VoiceChatSuspendedTemporaryToast] = function(dateTime)
		return RobloxTranslator:FormatByKey(
			"Feature.SettingsHub.Description.ChatWithVoiceDisabledUntil",
			{ dateTime = dateTime }
		)
	end,
	[PromptType.VoiceConsentDeclinedToast] = RobloxTranslator:FormatByKey(
		"Feature.SettingsHub.Prompt.Subtitle.JoinVoiceLater"
	),
	[PromptType.VoiceConsentAcceptedToast] = RobloxTranslator:FormatByKey(
		"Feature.SettingsHub.Prompt.Subtitle.MuteAnyoneAnytime"
	),
	[PromptType.VoiceConsentModalV1] = RobloxTranslator:FormatByKey(
		"Feature.SettingsHub.Prompt.Subtitle.InExpVoiceUpsell1"
	),
	[PromptType.VoiceConsentModalV2] = RobloxTranslator:FormatByKey(
		"Feature.SettingsHub.Prompt.Subtitle.InExpVoiceUpsell2"
	),
	[PromptType.VoiceConsentModalV3] = RobloxTranslator:FormatByKey(
		"Feature.SettingsHub.Prompt.Subtitle.InExpVoiceUpsell2"
	),
	[PromptType.JoinVoiceAndRequestMicPermissions] = RobloxTranslator:FormatByKey(
		"Feature.SettingsHub.Prompt.Subtitle.DisconnectOrMuteAndAccessMic"
	),
	[PromptType.JoinVoiceSTUX] = RobloxTranslator:FormatByKey(
		"Feature.SettingsHub.Prompt.Subtitle.DisconnectOrMuteHere"
	),
	[PromptType.DevicePermissionsModal] = RobloxTranslator:FormatByKey(
		"Feature.SettingsHub.Prompt.Subtitle.AllowMicrophoneAccess"
	),
}

if runService:IsStudio() then
	PromptTitle[PromptType.Place] = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.Place")
	PromptTitle[PromptType.User] = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.User")
	PromptSubTitle[PromptType.Place] = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.Place")
	PromptSubTitle[PromptType.User] = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.User")
end

local voiceChatSuspendedRespect = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.Respect")
local voiceChatFutureViolations = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.FutureViolations")
local bannedLabel = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.EffectiveUntil")
local voiceChatSuspendedUnderstand = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.Understand")
local voiceChatGotIt = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.GotIt")
local incorrectNudge = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.IncorrectNudge")
local voiceChatLimitsOnAccount = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.TemporaryVoiceBan2")

local function PromptTypeIsBan(promptType)
	return promptType == PromptType.VoiceChatSuspendedPermanent
		or promptType == PromptType.VoiceChatSuspendedTemporary
		or promptType == PromptType.VoiceChatSuspendedTemporaryAvatarChat
		or promptType == PromptType.VoiceChatSuspendedTemporaryB
end

local function IsModalNudge(promptType)
	return promptType == PromptType.VoiceToxicityModal
end

local function IsVoiceConsentModal(promptType)
	return promptType == PromptType.VoiceConsentModalV1
		or promptType == PromptType.VoiceConsentModalV2
		or promptType == PromptType.VoiceConsentModalV3
end

local function IsDevicePermissionsModal(promptType)
	return promptType == PromptType.DevicePermissionsModal
end

local function PromptTypeIsModal(promptType)
	return PromptTypeIsBan(promptType)
		or IsModalNudge(promptType)
		or IsVoiceConsentModal(promptType)
		or IsDevicePermissionsModal(promptType)
end

local function PromptTypeIsVoiceConsent(promptType)
	return promptType == PromptType.VoiceConsentDeclinedToast or promptType == PromptType.VoiceConsentAcceptedToast
end

local function PromptTypeIsConnectDisconnectToast(promptType)
	return promptType == PromptType.JoinVoice or promptType == PromptType.LeaveVoice
end

local function ShouldShowBannedUntil(promptType)
	return promptType == PromptType.VoiceChatSuspendedTemporary
		or promptType == PromptType.VoiceChatSuspendedTemporaryAvatarChat
		or promptType == PromptType.VoiceChatSuspendedTemporaryToast
		or promptType == PromptType.VoiceChatSuspendedTemporaryB
end

local function ShouldShowSecondaryButton(promptType)
	return promptType == PromptType.VoiceChatSuspendedTemporaryB or IsModalNudge(promptType)
end

local VoiceChatPromptFrame = Roact.PureComponent:extend("VoiceChatPromptFrame")
VoiceChatPromptFrame.validateProps = t.strictInterface({
	promptSignal = t.optional(t.RBXScriptSignal),
	errorText = t.optional(t.string),
	bannedUntil = t.optional(t.string),
	onContinueFunc = t.optional(t.callback),
	onPrimaryActivated = t.optional(t.callback),
	onSecondaryActivated = t.optional(t.callback),
	onReadyForSignal = t.optional(t.callback),
	Analytics = t.optional(t.table),
	VoiceChatServiceManager = t.optional(t.table),
	showNewContent = t.optional(t.boolean),
	showCheckbox = t.optional(t.boolean),
	policyMapper = t.optional(t.callback),
	appStyle = validateStyle,
	settingsAppAvailable = t.optional(t.boolean),
	UserInputService = t.optional(t.table),
})

function VoiceChatPromptFrame:init()
	self.promptStyle = {
		Theme = self.props.appStyle.Theme,
		Font = self.props.appStyle.Font,
	}

	self.state = {
		screenSize = Vector2.new(0, 0),
		promptType = PromptType.None,
		toastContent = nil,
		banEnd = "",
		showPrompt = true,
	}

	if self.props.showNewContent then
		local micSuspended = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.MicUseSuspended")
		local tempBan = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.TemporarySuspension2")
		PromptTitle[PromptType.VoiceChatSuspendedTemporary] = micSuspended
		PromptTitle[PromptType.VoiceChatSuspendedPermanent] = micSuspended
		PromptSubTitle[PromptType.VoiceChatSuspendedTemporary] = tempBan
	end

	self.onScreenSizeChanged = function(rbx)
		if self.state.screenSize ~= rbx.AbsoluteSize then
			self:setState({
				screenSize = rbx.AbsoluteSize,
			})
		end
	end

	self.promptSignalCallback = function(promptType)
		if PromptTypeIsBan(promptType) then
			if self.props.Analytics then
				self.props.Analytics:reportBanMessageEvent("Shown")
			end
			if self.props.VoiceChatServiceManager then
				self.props.VoiceChatServiceManager:reportBanMessage("Shown")
			end
		end
		if IsVoiceConsentModal(promptType) and GetFFlagEnableInExpVoiceConsentAnalytics() then
			if self.props.Analytics then
				local playSessionId = ""
				if EngineFeatureRbxAnalyticsServiceExposePlaySessionId then
					playSessionId = AnalyticsService:GetPlaySessionId()
				end
				self.props.Analytics:reportInExpConsent(
					"shown",
					self.props.VoiceChatServiceManager.inExpUpsellEntrypoint,
					game.GameId,
					game.PlaceId,
					playSessionId
				)
			end
		end

		if GetFFlagSendDevicePermissionsModalAnalytics() and IsDevicePermissionsModal(promptType) then
			if self.props.Analytics and self.props.VoiceChatServiceManager then
				self.props.Analytics:reportDevicePermissionsModalEvent(
					"Shown",
					self.props.VoiceChatServiceManager:GetSessionId(),
					self.props.VoiceChatServiceManager:GetInExpUpsellAnalyticsData()
				)
			end
		end

		if promptType and promptType ~= PromptType.None then
			local toastTitle = PromptTitle[promptType]
			local toastSubtitle = PromptSubTitle[promptType]

			if GetFFlagVoiceBanShowToastOnSubsequentJoins() then
				if typeof(toastTitle) == "function" then
					toastTitle = toastTitle(self.props.bannedUntil)
				end

				if typeof(toastSubtitle) == "function" then
					toastSubtitle = toastSubtitle(self.props.bannedUntil)
				end
			end

			local iconImage
			if
				(GetFFlagEnableInExpVoiceUpsell() and PromptTypeIsVoiceConsent(promptType))
				or (GetFFlagEnableSeamlessVoiceUX() and promptType == PromptType.JoinVoiceAndRequestMicPermissions)
			then
				iconImage = Images["icons/controls/publicAudioJoin"]
			elseif GetFFlagEnableSeamlessVoiceUX() and PromptTypeIsConnectDisconnectToast(promptType) then
				iconImage = Images["icons/actions/info"]
			else
				iconImage = Images["icons/status/alert"]
			end
			self:setState({
				showPrompt = true,
				promptType = promptType,
				toastContent = {
					iconImage = iconImage,
					toastTitle = toastTitle,
					toastSubtitle = toastSubtitle,
					onActivated = function()
						if self.props.onPrimaryActivated then
							self.props.onPrimaryActivated()
						end
					end,
					onDismissed = function() end,
				},
			})
			if ShouldShowBannedUntil(promptType) then
				local xMinuteSuspension = RobloxTranslator:FormatByKey(
					"Feature.SettingsHub.Prompt.XMinuteSuspension",
					{ banDurationInMinutes = self.props.bannedUntil }
				)
				local banEnd = if GetFFlagUpdateNudgeV3VoiceBanUI()
						and promptType == PromptType.VoiceChatSuspendedTemporaryB
					then xMinuteSuspension
					else " " .. self.props.bannedUntil .. "."

				self:setState({
					banEnd = banEnd,
				})
			end
		else
			self:setState({
				promptType = PromptType.None,
				toastContent = Roact.None,
			})
		end
	end

	self.closeVoiceBanPrompt = function()
		self:setState({
			showPrompt = false,
		})
		if self.props.onContinueFunc then
			self.props.onContinueFunc()
		end
		ContextActionService:UnbindCoreAction(CLOSE_VOICE_BAN_PROMPT)
		local isUpdatedBanModalB = GetFFlagUpdateNudgeV3VoiceBanUI()
			and self.state.promptType == PromptType.VoiceChatSuspendedTemporaryB
		if FFlagVoiceChatOnlyReportVoiceBans then
			if PromptTypeIsBan(self.state.promptType) then
				-- We don't want these events to fire for Nudge v3 because pressing both buttons in the modal to close it will fire these events.
				-- We handle firing events through onPrimaryActivated/onSecondaryActivated callbacks instead
				if not isUpdatedBanModalB then
					if self.props.Analytics then
						self.props.Analytics:reportBanMessageEvent("Acknowledged")
					end
					if self.props.VoiceChatServiceManager then
						self.props.VoiceChatServiceManager:reportBanMessage("Acknowledged")
					end
				end
			end
		else
			if not isUpdatedBanModalB then
				if self.props.Analytics then
					self.props.Analytics:reportBanMessageEvent("Acknowledged")
				end
				if self.props.VoiceChatServiceManager then
					self.props.VoiceChatServiceManager:reportBanMessage("Acknowledged")
				end
			end
		end
	end

	self.checkInputStateForClosePrompt = function(actionName, inputState, inputObject)
		if inputState == Enum.UserInputState.Begin then
			self.closeVoiceBanPrompt()
		end
	end

	self.handlePrimayActivated = function()
		self.closeVoiceBanPrompt()
		if self.props.onPrimaryActivated then
			self.props.onPrimaryActivated()
		end
	end

	self.handleSecondaryActivated = function()
		self.closeVoiceBanPrompt()
		if self.props.onSecondaryActivated then
			self.props.onSecondaryActivated()
		end
	end
end

function VoiceChatPromptFrame:render()
	local errorText = GetFFlagEnableVoicePromptReasonText() and self.props.errorText or nil
	local isNudgeModal = IsModalNudge(self.state.promptType)
	local isNudgeToast = self.state.promptType == PromptType.VoiceToxicityToast
	local isUpdatedBanModalB = GetFFlagUpdateNudgeV3VoiceBanUI()
		and self.state.promptType == PromptType.VoiceChatSuspendedTemporaryB
	local isVoiceConsentModal = GetFFlagEnableInExpVoiceUpsell() and IsVoiceConsentModal(self.state.promptType)
	local isDevicePermissionsModal = GetFFlagShowDevicePermissionsModal()
		and IsDevicePermissionsModal(self.state.promptType)
	local automaticSize = if GetFFlagEnableVoiceNudge() then Enum.AutomaticSize.Y else Enum.AutomaticSize.None
	local voiceChatPromptFrame
	if PromptTypeIsModal(self.state.promptType) then
		local titleText = self.state.toastContent.toastTitle
		local titleFont = self.promptStyle.Font.Header1.Font
		local titleFontSize = self.promptStyle.Font.Header1.RelativeSize * self.promptStyle.Font.BaseSize
		local titleTextHeight = TextService:GetTextSize(
			titleText,
			titleFontSize,
			titleFont,
			Vector2.new(OVERLAY_WIDTH - 2 * PADDING, math.huge)
		).Y
		local titleTextContainerHeight = PADDING + titleTextHeight

		local banDuration = if isUpdatedBanModalB then self.state.banEnd else bannedLabel .. self.state.banEnd
		local successText = if self.state.banEnd ~= ""
			-- Design asked for inline bold here
			then "<b>" .. banDuration .. "</b><br />" .. self.state.toastContent.toastSubtitle
			else self.state.toastContent.toastSubtitle .. self.state.banEnd
		local bodyText = errorText or successText
		local bodyFont = self.promptStyle.Font.Body.Font
		local bodyFontSize = self.promptStyle.Font.Body.RelativeSize * self.promptStyle.Font.BaseSize
		local bodyTextHeight = TextService:GetTextSize(
			bodyText,
			bodyFontSize,
			bodyFont,
			Vector2.new(OVERLAY_WIDTH - 2 * PADDING, math.huge)
		).Y
		local bodyTextContainerHeight = PADDING + bodyTextHeight
		if isUpdatedBanModalB then
			bodyTextContainerHeight = bodyTextContainerHeight + PADDING
		end

		local subBodyText = if isUpdatedBanModalB then voiceChatLimitsOnAccount else voiceChatFutureViolations
		local subTextHeight = TextService:GetTextSize(
			subBodyText,
			bodyFontSize,
			bodyFont,
			Vector2.new(OVERLAY_WIDTH - 2 * PADDING, math.huge)
		).Y
		local subBodyTextContainerHeight = PADDING + subTextHeight

		local showSecondaryButton = if GetFFlagUpdateNudgeV3VoiceBanUI()
			then ShouldShowSecondaryButton(self.state.promptType)
			else isNudgeModal

		local inGameMenuInformationalDialog = Roact.createElement("ScreenGui", {
			DisplayOrder = 8,
			IgnoreGuiInset = true,
			OnTopOfCoreBlur = true,
			Enabled = self.state.showPrompt,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		}, {
			Overlay = Roact.createElement("TextButton", {
				AutoButtonColor = false,
				BackgroundColor3 = self.promptStyle.Theme.Overlay.Color,
				BackgroundTransparency = self.promptStyle.Theme.Overlay.Transparency,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 1, 0),
				Text = "",
			}),
			DialogMainFrame = Roact.createElement(UIBlox.Core.ImageSet.ImageSetLabel, {
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundTransparency = 1,
				Image = Assets.Images.RoundedRect.Image,
				ImageColor3 = self.promptStyle.Theme.BackgroundUIDefault.Color,
				ImageTransparency = self.promptStyle.Theme.BackgroundUIDefault.Transparency,
				Position = UDim2.new(0.5, 0, 0.5, 0),
				ScaleType = Assets.Images.RoundedRect.ScaleType,
				Size = UDim2.new(
					0,
					OVERLAY_WIDTH,
					0,
					ICON_SIZE
						+ titleTextContainerHeight
						+ DIVIDER
						+ bodyTextContainerHeight
						+ 2 * EXTRA_PADDING_HEIGHT
						+ subBodyTextContainerHeight
						+ BUTTON_CONTAINER_SIZE
						+ 2 * PADDING
				),
				AutomaticSize = automaticSize,
				SliceCenter = Assets.Images.RoundedRect.SliceCenter,
			}, {
				Padding = Roact.createElement("UIPadding", {
					PaddingTop = UDim.new(0, PADDING),
					PaddingBottom = UDim.new(0, PADDING),
					PaddingLeft = UDim.new(0, PADDING),
					PaddingRight = UDim.new(0, PADDING),
				}),
				Layout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				Icon = Roact.createElement(UIBlox.Core.ImageSet.ImageSetLabel, {
					Position = UDim2.fromScale(0.5, 0.5),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Image = self.state.toastContent.iconImage,
					Size = UDim2.new(0, ICON_SIZE, 0, ICON_SIZE),
					LayoutOrder = 1,
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
				}),
				TitleTextContainer = Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					LayoutOrder = 2,
					Size = UDim2.new(1, 0, 0, titleTextContainerHeight),
					AutomaticSize = automaticSize,
				}, {
					TitleText = Roact.createElement(UIBlox.App.Text.StyledTextLabel, {
						fontStyle = self.promptStyle.Font.Header1,
						colorStyle = self.promptStyle.Theme.SystemPrimaryDefault,
						textXAlignment = Enum.TextXAlignment.Center,
						size = UDim2.new(1, 0, 1, 0),
						text = titleText,
					}),
				}),
				Divider = Roact.createElement("Frame", {
					BackgroundColor3 = self.promptStyle.Theme.Divider.Color,
					BackgroundTransparency = self.promptStyle.Theme.Divider.Transparency,
					BorderSizePixel = 0,
					LayoutOrder = 3,
					Size = UDim2.new(0.8, 0, 0, 1),
				}),
				DividerSpaceContainer = Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					LayoutOrder = 4,
					Size = UDim2.new(1, 0, 0, EXTRA_PADDING_HEIGHT),
				}),
				BodyTextContainer = Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					LayoutOrder = 5,
					Size = UDim2.new(1, 0, 0, bodyTextContainerHeight),
				}, {
					BodyText = Roact.createElement(UIBlox.App.Text.StyledTextLabel, {
						fontStyle = self.promptStyle.Font.Body,
						colorStyle = self.promptStyle.Theme.TextDefault,
						textXAlignment = Enum.TextXAlignment.Center,
						size = UDim2.new(1, 0, 1, 0),
						text = bodyText,
					}),
				}),
				TextSpaceContainer = Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					LayoutOrder = 6,
					Size = UDim2.new(1, 0, 0, EXTRA_PADDING_HEIGHT),
				}),
				SubBodyTextContainer = not isNudgeModal and Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					LayoutOrder = 7,
					Size = UDim2.new(1, 0, 0, subBodyTextContainerHeight),
					AutomaticSize = automaticSize,
				}, {
					BodyText = Roact.createElement(UIBlox.App.Text.StyledTextLabel, {
						fontStyle = self.promptStyle.Font.Body,
						colorStyle = self.promptStyle.Theme.TextDefault,
						textXAlignment = Enum.TextXAlignment.Center,
						size = UDim2.new(1, 0, 1, 0),
						text = subBodyText,
					}),
				}),
				SpaceContainer2 = Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					LayoutOrder = 8,
					Size = UDim2.new(1, 0, 0, 10),
				}),
				ButtonContainer = Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					LayoutOrder = 9,
					Size = UDim2.new(1, 0, 0, BUTTON_CONTAINER_SIZE),
					AutomaticSize = automaticSize,
				}, {
					Layout = Roact.createElement("UIListLayout", {
						FillDirection = if GetFFlagEnableVoiceNudge()
							then Enum.FillDirection.Vertical
							else Enum.FillDirection.Horizontal,
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
						Padding = UDim.new(0, PADDING),
						SortOrder = Enum.SortOrder.LayoutOrder,
						VerticalAlignment = Enum.VerticalAlignment.Center,
					}),
					ConfirmButton = Roact.createElement(Button, {
						buttonType = ButtonType.PrimarySystem,
						layoutOrder = 1,
						size = if GetFFlagEnableVoiceNudge() then UDim2.new(1, -5, 0, 48) else UDim2.new(1, -5, 1, 0),
						text = if isNudgeModal then voiceChatGotIt else voiceChatSuspendedUnderstand,
						onActivated = if GetFFlagEnableVoiceNudge()
							then self.handlePrimayActivated
							else self.closeVoiceBanPrompt,
					}),
					SecondaryButton = showSecondaryButton and Roact.createElement(UIBlox.App.Button.LinkButton, {
						layoutOrder = 1,
						size = UDim2.new(1, -5, 0, BUTTON_CONTAINER_SIZE),
						text = incorrectNudge,
						colorStyleDefault = "TextMuted",
						colorStyleHover = "TextMuted",
						onActivated = self.handleSecondaryActivated,
					}),
				}),
			}),
		})

		if isDevicePermissionsModal then
			inGameMenuInformationalDialog = Roact.createElement(DevicePermissionsModal, {
				titleText = PromptTitle[self.state.promptType],
				bodyText = PromptSubTitle[self.state.promptType],
				handlePrimaryActivated = self.handlePrimayActivated,
				handleSecondaryActivated = self.handleSecondaryActivated,
				Analytics = self.props.Analytics,
				promptStyle = self.promptStyle,
				showPrompt = self.state.showPrompt,
				settingsAppAvailable = self.props.settingsAppAvailable,
				UserInputService = if self.props.UserInputService ~= nil
					then self.props.UserInputService
					else UserInputService,
			})
		end

		if isVoiceConsentModal then
			inGameMenuInformationalDialog = Roact.createElement(VoiceChatConsentModal, {
				titleText = PromptTitle[self.state.promptType],
				bodyText = PromptSubTitle[self.state.promptType],
				handlePrimaryActivated = self.handlePrimayActivated,
				handleSecondaryActivated = self.handleSecondaryActivated,
				Analytics = self.props.Analytics,
				showCheckbox = self.props.showCheckbox,
				promptStyle = self.promptStyle,
				showPrompt = self.state.showPrompt,
			})
		end

		voiceChatPromptFrame = Roact.createElement(Roact.Portal, {
			target = CoreGui,
		}, {
			InGameMenuInformationalDialog = inGameMenuInformationalDialog,
		})
	elseif GetFFlagEnableSeamlessVoiceUX() and self.state.promptType == PromptType.JoinVoiceSTUX then
		voiceChatPromptFrame = Roact.createElement(VoiceChatTooltip, {
			titleText = PromptTitle[self.state.promptType],
			subtitleText = PromptSubTitle[self.state.promptType],
			promptStyle = self.promptStyle,
			showPrompt = self.state.showPrompt,
			onClose = function()
				self:setState({
					showPrompt = false,
				})
			end,
			onMenuOpen = self.hideOnMenuOpen,
		})
	else
		local toastDuration = nil
		if GetFFlagEnableSeamlessVoiceUX() then
			if isNudgeToast then
				toastDuration = GetFIntVoiceToxicityToastDurationSeconds()
			elseif self.state.promptType == PromptType.JoinVoiceAndRequestMicPermissions then
				toastDuration = GetFIntVoiceJoinM3ToastDurationSeconds()
			else
				toastDuration = TOAST_DURATION
			end
		end

		voiceChatPromptFrame = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, 0),
			[Roact.Change.AbsoluteSize] = self.onScreenSizeChanged,
		}, {
			Toast = self.state.promptType ~= PromptType.None and Roact.createElement(SlideFromTopToast, {
				duration = if isNudgeToast
					then GetFIntVoiceToxicityToastDurationSeconds()
					elseif GetFFlagEnableSeamlessVoiceUX() then toastDuration
					else TOAST_DURATION,
				toastContent = self.state.toastContent,
			}),
			EventConnection = self.props.promptSignal and Roact.createElement(ExternalEventConnection, {
				event = self.props.promptSignal,
				callback = self.promptSignalCallback,
			}),
		})
	end
	return voiceChatPromptFrame
end

function VoiceChatPromptFrame:didMount()
	if self.props.onReadyForSignal then
		self.props.onReadyForSignal()
	end
	ContextActionService:BindCoreAction(
		CLOSE_VOICE_BAN_PROMPT,
		self.checkInputStateForClosePrompt,
		false,
		Enum.KeyCode.ButtonA
	)
	ContextActionService:BindCoreAction(
		CLOSE_VOICE_BAN_PROMPT,
		self.checkInputStateForClosePrompt,
		false,
		Enum.KeyCode.ButtonB
	)
end

VoiceChatPromptFrame = InGameMenuPolicy.connect(function(appPolicy, props)
	return {
		showNewContent = appPolicy.getGameInfoShowChatFeatures(),
		showCheckbox = if GetFFlagEnableInExpVoiceUpsell() then appPolicy.getDisplayCheckboxInVoiceConsent() else true,
	}
end)(VoiceChatPromptFrame)

local function WrappedVoiceChatPromptFrame(props: any)
	local style = useStyle()
	return Roact.createElement(
		VoiceChatPromptFrame,
		Cryo.Dictionary.join(props, {
			appStyle = style,
		})
	)
end
return function(props)
	return renderWithCoreScriptsStyleProvider({
		Roact.createElement(WrappedVoiceChatPromptFrame, props),
	})
end
