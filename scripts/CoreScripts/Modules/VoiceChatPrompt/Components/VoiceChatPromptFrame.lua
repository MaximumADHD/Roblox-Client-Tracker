--!nonstrict
local CorePackages = game:GetService("CorePackages")
local TextService = game:GetService("TextService")
local ContextActionService = game:GetService("ContextActionService")

local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)

local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham
local ExternalEventConnection = require(CorePackages.Workspace.Packages.RoactUtils).ExternalEventConnection

local UIBlox = require(CorePackages.UIBlox)
local SlideFromTopToast = UIBlox.App.Dialog.Toast
local Images = UIBlox.App.ImageSet.Images

local PromptType = require(script.Parent.Parent.PromptType)
local InGameMenuPolicy = require(script.Parent.Parent.Parent.InGameMenu.InGameMenuPolicy)

local Assets = require(script.Parent.Parent.Parent.InGameMenu.Resources.Assets)

local CoreGui = game:GetService("CoreGui")
local runService = game:GetService("RunService")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local GetFFlagVoiceChatStudioErrorToasts = require(RobloxGui.Modules.Flags.GetFFlagVoiceChatStudioErrorToasts)
local GetFFlagEnableVoicePromptReasonText = require(RobloxGui.Modules.Flags.GetFFlagEnableVoicePromptReasonText)
local GetFFlagAvatarChatBanMessage = require(RobloxGui.Modules.Flags.GetFFlagAvatarChatBanMessage)
local GetFFlagEnableVoiceNudge = require(RobloxGui.Modules.Flags.GetFFlagEnableVoiceNudge)
local GetFIntVoiceToxicityToastDurationSeconds =
	require(RobloxGui.Modules.Flags.GetFIntVoiceToxicityToastDurationSeconds)
local FFlagEnableVoiceChatStorybookFix = require(RobloxGui.Modules.Flags.FFlagEnableVoiceChatStorybookFix)
local FFlagVoiceChatPromptFrameNewCopyEnabled2 = game:DefineFastFlag("VoiceChatPromptFrameNewCopyEnabled2", false)

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
	[PromptType.Permission] = if FFlagVoiceChatPromptFrameNewCopyEnabled2
		then RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.MicrophonePermission")
		else RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.Permission"),
	[PromptType.Retry] = if FFlagVoiceChatPromptFrameNewCopyEnabled2
		then RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.MicrophonePermission")
		else RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.Permission"),
	[PromptType.Place] = "Exceeds Max Players",
	[PromptType.User] = "Not Eligible for Voice",
	[PromptType.VoiceChatSuspendedTemporaryAvatarChat] = RobloxTranslator:FormatByKey(
		"Feature.SettingsHub.Prompt.MicAndCameraUseSuspended"
	),
	[PromptType.VoiceChatSuspendedTemporary] = if GetFFlagAvatarChatBanMessage()
		then RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.MicUseSuspended")
		else RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.VoiceChatSuspended"),
	[PromptType.VoiceChatSuspendedPermanent] = RobloxTranslator:FormatByKey(
		"Feature.SettingsHub.Prompt.VoiceChatSuspended"
	),
	[PromptType.VoiceLoading] = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.Connecting"),
	[PromptType.VoiceToxicityModal] = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.RememberRules"),
	[PromptType.VoiceToxicityToast] = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.RememberRules"),
	[PromptType.VoiceToxicityFeedbackToast] = RobloxTranslator:FormatByKey(
		"Feature.SettingsHub.Prompt.ThankYouForFeedback"
	),
}
local PromptSubTitle = {
	[PromptType.None] = "",
	[PromptType.NotAudible] = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.NotAudible"),
	[PromptType.Permission] = if FFlagVoiceChatPromptFrameNewCopyEnabled2
		then RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.MicrophonePermission")
		else RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.Permission"),
	[PromptType.Retry] = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.Retry"),
	[PromptType.Place] = "Spatial voice is only available for places with Max Players of 30 or less.",
	[PromptType.User] = "This account is not eligible to use Spatial Voice.",
	[PromptType.VoiceChatSuspendedTemporary] = if GetFFlagAvatarChatBanMessage()
		then RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.Microphone")
		else RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.VoiceChatSuspended"),
	[PromptType.VoiceChatSuspendedTemporaryAvatarChat] = RobloxTranslator:FormatByKey(
		"Feature.SettingsHub.Prompt.Subtitle.MicAndCamera"
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
	[PromptType.VoiceToxicityFeedbackToast] = RobloxTranslator:FormatByKey(
		"Feature.SettingsHub.Prompt.Subtitle.ThankYouForFeedback"
	),
}

if GetFFlagVoiceChatStudioErrorToasts() and runService:IsStudio() then
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

local function PromptTypeIsBan(promptType)
	return promptType == PromptType.VoiceChatSuspendedPermanent
		or promptType == PromptType.VoiceChatSuspendedTemporary
		or promptType == PromptType.VoiceChatSuspendedTemporaryAvatarChat
end

local function IsModalNudge(promptType)
	return promptType == PromptType.VoiceToxicityModal
end

local function PromptTypeIsModal(promptType)
	return PromptTypeIsBan(promptType) or IsModalNudge(promptType)
end

local function ShouldShowBannedUntil(promptType)
	return promptType == PromptType.VoiceChatSuspendedTemporary
		or promptType == PromptType.VoiceChatSuspendedTemporaryAvatarChat
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
	showNewContent = t.optional(t.boolean),
	policyMapper = t.optional(t.callback),
})

function VoiceChatPromptFrame:init()
	self.promptStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
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
		if self.props.Analytics and PromptTypeIsBan(promptType) then
			self.props.Analytics:reportBanMessageEvent("Shown")
		end
		if promptType and promptType ~= PromptType.None then
			self:setState({
				showPrompt = true,
				promptType = promptType,
				toastContent = {
					iconImage = Images["icons/status/alert"],
					toastTitle = PromptTitle[promptType],
					toastSubtitle = PromptSubTitle[promptType],
					onDismissed = function() end,
				},
			})
			if ShouldShowBannedUntil(promptType) then
				self:setState({
					banEnd = " " .. self.props.bannedUntil .. ".",
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
		if self.props.Analytics then
			self.props.Analytics:reportBanMessageEvent("Acknowledged")
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
	local automaticSize = if GetFFlagEnableVoiceNudge() then Enum.AutomaticSize.Y else Enum.AutomaticSize.None
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

		local successText = if GetFFlagAvatarChatBanMessage() and self.state.banEnd ~= ""
			-- Design asked for inline bold here
			then "<b>" .. (bannedLabel .. self.state.banEnd) .. "</b><br />" .. self.state.toastContent.toastSubtitle
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

		local subBodyText = if GetFFlagAvatarChatBanMessage()
			then voiceChatFutureViolations
			else voiceChatSuspendedRespect
		local subTextHeight = TextService:GetTextSize(
			subBodyText,
			bodyFontSize,
			bodyFont,
			Vector2.new(OVERLAY_WIDTH - 2 * PADDING, math.huge)
		).Y
		local subBodyTextContainerHeight = PADDING + subTextHeight

		return Roact.createElement(UIBlox.Core.Style.Provider, {
			style = self.promptStyle,
		}, {
			VoiceChatPromptFrame = Roact.createElement(Roact.Portal, {
				target = CoreGui,
			}, {
				InGameMenuInformationalDialog = Roact.createElement("ScreenGui", {
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
					DialogMainFrame = Roact.createElement(UIBlox.Core.ImageSet.Label, {
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
						Icon = Roact.createElement(UIBlox.Core.ImageSet.Label, {
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
							ConfirmButton = Roact.createElement(UIBlox.App.Button.PrimarySystemButton, {
								layoutOrder = 1,
								size = if GetFFlagEnableVoiceNudge()
									then UDim2.new(1, -5, 0, 48)
									else UDim2.new(1, -5, 1, 0),
								text = if isNudgeModal then voiceChatGotIt else voiceChatSuspendedUnderstand,
								onActivated = if GetFFlagEnableVoiceNudge()
									then self.handlePrimayActivated
									else self.closeVoiceBanPrompt,
							}),
							SecondaryButton = isNudgeModal and Roact.createElement(UIBlox.App.Button.LinkButton, {
								layoutOrder = 1,
								size = UDim2.new(1, -5, 0, BUTTON_CONTAINER_SIZE),
								text = incorrectNudge,
								colorStyleDefault = "TextMuted",
								colorStyleHover = "TextMuted",
								onActivated = self.handleSecondaryActivated,
							}),
						}),
					}),
				}),
			}),
		})
	else
		return Roact.createElement(UIBlox.Core.Style.Provider, {
			style = self.promptStyle,
		}, {
			VoiceChatPromptFrame = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),
				[Roact.Change.AbsoluteSize] = self.onScreenSizeChanged,
			}, {
				Toast = self.state.promptType ~= PromptType.None
					and Roact.createElement(SlideFromTopToast, {
						duration = if isNudgeToast then GetFIntVoiceToxicityToastDurationSeconds() else TOAST_DURATION,
						toastContent = self.state.toastContent,
					}),
				EventConnection = self.props.promptSignal and Roact.createElement(ExternalEventConnection, {
					event = self.props.promptSignal,
					callback = self.promptSignalCallback,
				}),
			}),
		})
	end
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
	}
end)(VoiceChatPromptFrame)

return VoiceChatPromptFrame
