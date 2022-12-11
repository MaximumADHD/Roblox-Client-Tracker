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
local EnableInGameMenuV3 = require(script.Parent.Parent.Parent.InGameMenuV3.Flags.GetFFlagEnableInGameMenuV3)

local Assets
if EnableInGameMenuV3() then
	Assets = require(script.Parent.Parent.Parent.InGameMenuV3.Resources.Assets)
else
	Assets = require(script.Parent.Parent.Parent.InGameMenu.Resources.Assets)
end

local CoreGui = game:GetService("CoreGui")
local runService = game:GetService("RunService")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local FFlagEnableVoiceChatStorybookFix = require(RobloxGui.Modules.Flags.FFlagEnableVoiceChatStorybookFix)
local GetFFlagVoiceChatStudioErrorToasts = require(RobloxGui.Modules.Flags.GetFFlagVoiceChatStudioErrorToasts)
local GetFFlagEnableVoicePromptReasonText = require(RobloxGui.Modules.Flags.GetFFlagEnableVoicePromptReasonText)

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
	[PromptType.Permission] = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.Permission"),
	[PromptType.Retry] = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.Permission"),
	[PromptType.Place] = "Exceeds Max Players",
	[PromptType.User] = "Not Eligible for Voice",
	[PromptType.VoiceChatSuspendedTemporary] = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.VoiceChatSuspended"),
	[PromptType.VoiceChatSuspendedPermanent] = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.VoiceChatSuspended"),
}
local PromptSubTitle = {
	[PromptType.None] = "",
	[PromptType.NotAudible] = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.NotAudible"),
	[PromptType.Permission] = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.Permission"),
	[PromptType.Retry] = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.Retry"),
	[PromptType.Place] = "Spatial voice is only available for places with Max Players of 30 or less.",
	[PromptType.User] = "This account is not eligible to use Spatial Voice.",
	[PromptType.VoiceChatSuspendedTemporary] = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.TemporarySuspension"),
	[PromptType.VoiceChatSuspendedPermanent] = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.Revoked"),
}

if GetFFlagVoiceChatStudioErrorToasts() and runService:IsStudio() then
	PromptTitle[PromptType.Place] = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.Place")
	PromptTitle[PromptType.User] = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.User")
	PromptSubTitle[PromptType.Place] = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.Place")
	PromptSubTitle[PromptType.User] = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.User")
end

local voiceChatSuspendedRespect = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.Respect")
local voiceChatSuspendedUnderstand = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.Understand")

local VoiceChatPromptFrame = Roact.PureComponent:extend("VoiceChatPromptFrame")
VoiceChatPromptFrame.validateProps = t.strictInterface({
	promptSignal = t.optional(t.RBXScriptSignal),
	errorText = t.optional(t.string),
	bannedUntil = t.optional(t.string),
	onContinueFunc = t.optional(t.callback),
	onReadyForSignal = t.optional(t.callback),
	Analytics = t.optional(t.table),
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

	self.onScreenSizeChanged = function(rbx)
		if self.state.screenSize ~= rbx.AbsoluteSize then
			self:setState({
				screenSize = rbx.AbsoluteSize,
			})
		end
	end

	self.promptSignalCallback = function(promptType)
		if promptType == PromptType.NotAudible or
			promptType == PromptType.Permission or
			promptType == PromptType.Retry or
			promptType == PromptType.User or
			promptType == PromptType.Place or
			promptType == PromptType.VoiceChatSuspendedTemporary or 
			promptType == PromptType.VoiceChatSuspendedPermanent then
			self:setState({
				promptType = promptType,
				toastContent = {
					iconImage = Images["icons/status/alert"],
					toastTitle = PromptTitle[promptType],
					toastSubtitle = PromptSubTitle[promptType],
					onDismissed = function() end,
				},
			})
			if promptType == PromptType.VoiceChatSuspendedTemporary then
				self:setState({
					banEnd = " "..self.props.bannedUntil.."."
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
			showPrompt = false
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
end

function VoiceChatPromptFrame:render()
	local errorText = GetFFlagEnableVoicePromptReasonText() and self.props.errorText or nil
	if self.state.promptType == PromptType.VoiceChatSuspendedTemporary or 
		self.state.promptType == PromptType.VoiceChatSuspendedPermanent then

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
		
		local bodyText = errorText or (self.state.toastContent.toastSubtitle .. self.state.banEnd)
		local bodyFont = self.promptStyle.Font.Body.Font
		local bodyFontSize = self.promptStyle.Font.Body.RelativeSize * self.promptStyle.Font.BaseSize
		local bodyTextHeight = TextService:GetTextSize(
			bodyText,
			bodyFontSize,
			bodyFont,
			Vector2.new(OVERLAY_WIDTH - 2 * PADDING, math.huge)
		).Y
		local bodyTextContainerHeight = PADDING + bodyTextHeight

		local subBodyText = voiceChatSuspendedRespect
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
							Size = UDim2.new(0, OVERLAY_WIDTH, 0, ICON_SIZE + titleTextContainerHeight + DIVIDER + bodyTextContainerHeight + 2 * EXTRA_PADDING_HEIGHT + subBodyTextContainerHeight + BUTTON_CONTAINER_SIZE + 2 * PADDING),
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
							}, {
								TitleText = Roact.createElement(UIBlox.App.Text.StyledTextLabel, {
									fontStyle = self.promptStyle.Font.Header1,
									colorStyle = self.promptStyle.Theme.SystemPrimaryDefault,
									textXAlignment = Enum.TextXAlignment.Center,
									size = UDim2.new(1, 0, 1, 0),
									text = titleText,
								})
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
								})
							}),
							TextSpaceContainer = Roact.createElement("Frame", {
								BackgroundTransparency = 1,
								LayoutOrder = 6,
								Size = UDim2.new(1, 0, 0, EXTRA_PADDING_HEIGHT),
							}),
							SubBodyTextContainer = Roact.createElement("Frame", {
								BackgroundTransparency = 1,
								LayoutOrder = 7,
								Size = UDim2.new(1, 0, 0, subBodyTextContainerHeight),
							}, {
								BodyText = Roact.createElement(UIBlox.App.Text.StyledTextLabel, {
									fontStyle = self.promptStyle.Font.Body,
									colorStyle = self.promptStyle.Theme.TextDefault,
									textXAlignment = Enum.TextXAlignment.Center,
									size = UDim2.new(1, 0, 1, 0),
									text = subBodyText,
								})
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
							}, {
								Layout = Roact.createElement("UIListLayout", {
									FillDirection = Enum.FillDirection.Horizontal,
									HorizontalAlignment = Enum.HorizontalAlignment.Center,
									Padding = UDim.new(0, PADDING),
									SortOrder = Enum.SortOrder.LayoutOrder,
									VerticalAlignment = Enum.VerticalAlignment.Center,
								}),
								ConfirmButton = Roact.createElement(UIBlox.App.Button.PrimarySystemButton, {
									layoutOrder = 1,
									size = UDim2.new(1, -5, 1, 0),
									text = voiceChatSuspendedUnderstand,
									onActivated = self.closeVoiceBanPrompt,
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
				Toast = self.state.promptType ~= PromptType.None and Roact.createElement(SlideFromTopToast, {
					duration = TOAST_DURATION,
					toastContent = self.state.toastContent,
				}),
				EventConnection = self.props.promptSignal and Roact.createElement(ExternalEventConnection, {
					event = self.props.promptSignal,
					callback = self.promptSignalCallback,
				}),
			})
		})
	end
end

function VoiceChatPromptFrame:didMount()
	if self.props.onReadyForSignal then
		self.props.onReadyForSignal()
	end
	if self.props.Analytics then
		self.props.Analytics:reportBanMessageEvent("Shown")		
	end

	ContextActionService:BindCoreAction(CLOSE_VOICE_BAN_PROMPT, self.checkInputStateForClosePrompt, false, Enum.KeyCode.ButtonA)
	ContextActionService:BindCoreAction(CLOSE_VOICE_BAN_PROMPT, self.checkInputStateForClosePrompt, false, Enum.KeyCode.ButtonB)
end

return VoiceChatPromptFrame
