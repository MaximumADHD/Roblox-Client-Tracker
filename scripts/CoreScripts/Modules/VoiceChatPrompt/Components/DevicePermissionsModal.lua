local CorePackages = game:GetService("CorePackages")
local TextService = game:GetService("TextService")

local React = require(CorePackages.Packages.React)
local t = require(CorePackages.Packages.t)
local ArgCheck = require(CorePackages.Workspace.Packages.ArgCheck)
local VoiceChat = require(CorePackages.Workspace.Packages.VoiceChat)

local UIBlox = require(CorePackages.Packages.UIBlox)
local Button = UIBlox.App.Button.Button
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local Images = UIBlox.App.ImageSet.Images
local Assets = require(script.Parent.Parent.Parent.InGameMenu.Resources.Assets)

local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)

local getMicDeeplinkDirections = require(script.Parent.Parent.Helpers.getMicDeeplinkDirections)
local getPrimingText = require(script.Parent.Parent.Helpers.getPrimingText)

local VoiceChatFlags = VoiceChat.Flags
local GetFFlagSupportGamepadNavInVoiceModals = VoiceChatFlags.GetFFlagSupportGamepadNavInVoiceModals

-- Constants
local OVERLAY_WIDTH = 365
local BUTTON_CONTAINER_SIZE = 36
local PADDING = 20
local DIVIDER = 1
local SMALLER_PADDING = 15
local BUTTON_PADDING = 12
local PRIMING_PADDING = 10
local ICON_SIZE = 55

local openSettings = RobloxTranslator:FormatByKey("Feature.SettingsHub.Action.OpenSettings")
local ok = RobloxTranslator:FormatByKey("Feature.SettingsHub.Action.Ok")
local notNow = RobloxTranslator:FormatByKey("Feature.SettingsHub.Action.NotNow")

local micIcon = Images["icons/controls/microphone"]

type Props = {
	titleText: string,
	bodyText: string,
	handlePrimaryActivated: () -> nil,
	handleSecondaryActivated: () -> nil,
	Analytics: { [string]: any? },
	promptStyle: { [string]: any? },
	showPrompt: boolean,
	settingsAppAvailable: boolean,
	UserInputService: { [string]: any },
}

export type DevicePermissionsModalType = (props: Props) -> React.ReactElement

local validateProps = ArgCheck.wrap(t.strictInterface({
	titleText = t.string,
	bodyText = t.string,
	handlePrimaryActivated = t.callback,
	handleSecondaryActivated = t.callback,
	Analytics = t.table,
	promptStyle = t.table,
	showPrompt = t.boolean,
	settingsAppAvailable = t.boolean,
	UserInputService = t.table,
}))

local function DevicePermissionsModal(props: Props, ref: React.Ref<GuiObject>?)
	assert(validateProps(props))

	local infoText = getMicDeeplinkDirections(props.settingsAppAvailable, props.UserInputService)
	local primingText = getPrimingText(props.UserInputService)

	local titleFont = props.promptStyle.Font.Header1.Font
	local titleFontSize = props.promptStyle.Font.Header1.RelativeSize * props.promptStyle.Font.BaseSize
	local titleTextHeight = TextService:GetTextSize(
		props.titleText,
		titleFontSize,
		titleFont,
		Vector2.new(OVERLAY_WIDTH - 2 * PADDING, math.huge)
	).Y
	local titleTextContainerHeight = PADDING + titleTextHeight

	local bodyFont = props.promptStyle.Font.Body.Font
	local bodyFontSize = props.promptStyle.Font.Body.RelativeSize * props.promptStyle.Font.BaseSize
	local bodyTextHeight = TextService:GetTextSize(
		props.bodyText,
		bodyFontSize,
		bodyFont,
		Vector2.new(OVERLAY_WIDTH - 2 * PADDING, math.huge)
	).Y
	local bodyTextContainerHeight = PADDING + bodyTextHeight

	local primingTextContainerHeight = 0
	if primingText then
		local primingFont = props.promptStyle.Font.CaptionHeader.Font
		local primingFontSize = props.promptStyle.Font.CaptionHeader.RelativeSize * props.promptStyle.Font.BaseSize
		local primingTextHeight = TextService:GetTextSize(
			primingText,
			primingFontSize,
			primingFont,
			Vector2.new(OVERLAY_WIDTH - 2 * PADDING, math.huge)
		).Y
		primingTextContainerHeight = PRIMING_PADDING + primingTextHeight
	end

	local infoTextContainerHeight = 0
	if infoText then
		local infoFont = props.promptStyle.Font.Body.Font
		local infoFontSize = props.promptStyle.Font.Body.RelativeSize * props.promptStyle.Font.BaseSize
		local infoTextHeight = TextService:GetTextSize(
			infoText,
			infoFontSize,
			infoFont,
			Vector2.new(OVERLAY_WIDTH - 2 * PADDING, math.huge)
		).Y
		local addedPadding = if primingText then PRIMING_PADDING else PADDING
		infoTextContainerHeight = addedPadding + infoTextHeight
	end

	local paddingMultiplier = 4
	if infoText then
		paddingMultiplier = 4.5
	end
	if primingText then
		paddingMultiplier = 5.5
	end

	local selectionBehavior = if GetFFlagSupportGamepadNavInVoiceModals() then Enum.SelectionBehavior.Stop else nil
	local isSelectable = if GetFFlagSupportGamepadNavInVoiceModals() then true else nil

	return React.createElement("ScreenGui", {
		DisplayOrder = 8,
		IgnoreGuiInset = true,
		OnTopOfCoreBlur = true,
		Enabled = props.showPrompt,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
	}, {
		Overlay = React.createElement("TextButton", {
			AutoButtonColor = false,
			BackgroundColor3 = props.promptStyle.Theme.Overlay.Color,
			BackgroundTransparency = props.promptStyle.Theme.Overlay.Transparency,
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 1, 0),
			Text = "",
		}),
		DialogMainFrame = React.createElement(UIBlox.Core.ImageSet.ImageSetLabel, {
			AnchorPoint = Vector2.new(0.5, 0.5),
			BackgroundTransparency = 1,
			Image = Assets.Images.RoundedRect.Image,
			ImageColor3 = props.promptStyle.Theme.BackgroundUIDefault.Color,
			ImageTransparency = props.promptStyle.Theme.BackgroundUIDefault.Transparency,
			Position = UDim2.new(0.5, 0, 0.5, 0),
			ScaleType = Assets.Images.RoundedRect.ScaleType,
			Size = UDim2.new(
				0,
				OVERLAY_WIDTH,
				0,
				titleTextContainerHeight
					+ 5 * DIVIDER
					+ bodyTextContainerHeight
					+ BUTTON_CONTAINER_SIZE
					+ paddingMultiplier * PADDING
					+ infoTextContainerHeight
					+ ICON_SIZE
					+ primingTextContainerHeight
			),
			AutomaticSize = Enum.AutomaticSize.Y,
			SliceCenter = Assets.Images.RoundedRect.SliceCenter,
			-- Define a restricted SelectionGroup to only allow navigating between the
			-- VoiceChatConsentModal's buttons
			SelectionBehaviorDown = selectionBehavior,
			SelectionBehaviorLeft = selectionBehavior,
			SelectionBehaviorRight = selectionBehavior,
			SelectionBehaviorUp = selectionBehavior,
			SelectionGroup = isSelectable,
			-- Pass down a ref from VoiceChatPromptFrame so that VoiceChatPromptFrame can auto-select a button
			-- and support gamepad navigation within this modal
			ref = if GetFFlagSupportGamepadNavInVoiceModals() then ref else nil,
		}, {
			Padding = React.createElement("UIPadding", {
				PaddingTop = UDim.new(0, SMALLER_PADDING),
				PaddingBottom = UDim.new(0, PADDING),
				PaddingLeft = UDim.new(0, PADDING),
				PaddingRight = UDim.new(0, PADDING),
			}),
			Layout = React.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			Icon = React.createElement(UIBlox.Core.ImageSet.ImageSetLabel, {
				Position = UDim2.fromScale(0.5, 0.5),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Image = micIcon,
				Size = UDim2.new(0, ICON_SIZE, 0, ICON_SIZE),
				LayoutOrder = 1,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
			}),
			TitleTextContainer = React.createElement("Frame", {
				BackgroundTransparency = 1,
				LayoutOrder = 2,
				Size = UDim2.new(1, 0, 0, titleTextContainerHeight),
				AutomaticSize = Enum.AutomaticSize.Y,
			}, {
				Padding = React.createElement("UIPadding", {
					PaddingBottom = UDim.new(0, 7),
				}),
				TitleText = React.createElement(UIBlox.App.Text.StyledTextLabel, {
					fontStyle = props.promptStyle.Font.Header1,
					colorStyle = props.promptStyle.Theme.SystemPrimaryDefault,
					textXAlignment = Enum.TextXAlignment.Center,
					size = UDim2.new(1, 0, 1, 0),
					text = props.titleText,
				}),
			}),
			Divider = React.createElement("Frame", {
				BackgroundColor3 = props.promptStyle.Theme.Divider.Color,
				BackgroundTransparency = props.promptStyle.Theme.Divider.Transparency,
				BorderSizePixel = 0,
				LayoutOrder = 3,
				Size = UDim2.new(1, 0, 0, 1),
			}),
			DividerSpaceContainer = React.createElement("Frame", {
				BackgroundTransparency = 1,
				LayoutOrder = 4,
				Size = UDim2.new(1, 0, 0, SMALLER_PADDING),
			}),
			BodyTextContainer = React.createElement("Frame", {
				BackgroundTransparency = 1,
				LayoutOrder = 5,
				Size = UDim2.new(1, 0, 0, bodyTextContainerHeight),
			}, {
				BodyText = React.createElement(UIBlox.App.Text.StyledTextLabel, {
					fontStyle = props.promptStyle.Font.Body,
					colorStyle = props.promptStyle.Theme.TextDefault,
					textXAlignment = Enum.TextXAlignment.Left,
					size = UDim2.new(1, 0, 1, 0),
					text = props.bodyText,
					lineHeight = 1.2,
				}),
			}),
			InfoTextContainer = if infoText
				then React.createElement("Frame", {
					BackgroundTransparency = 1,
					LayoutOrder = 6,
					Size = UDim2.new(1, 0, 0, infoTextContainerHeight + PADDING),
				}, {
					Padding = React.createElement("UIPadding", {
						PaddingTop = UDim.new(0, if primingText then 8 else SMALLER_PADDING),
						PaddingLeft = UDim.new(0, 8),
					}),
					TextContainer = React.createElement("Frame", {
						BackgroundTransparency = 1,
						LayoutOrder = 2,
						Size = UDim2.new(1, 0, 0, infoTextContainerHeight),
					}, {
						InfoText = React.createElement(UIBlox.App.Text.StyledTextLabel, {
							fontStyle = props.promptStyle.Font.Body,
							colorStyle = props.promptStyle.Theme.TextEmphasis,
							textXAlignment = Enum.TextXAlignment.Left,
							textYAlignment = Enum.TextYAlignment.Top,
							size = UDim2.new(1, 0, 1, 0),
							text = infoText,
							lineHeight = 1.25,
						}),
					}),
				})
				else nil,
			SpaceContainer = if not primingText
				then React.createElement("Frame", {
					BackgroundTransparency = 1,
					LayoutOrder = 7,
					Size = UDim2.new(1, 0, 0, if infoText then 40 else 20),
				})
				else nil,
			PrimingTextContainer = if primingText
				then React.createElement("Frame", {
					BackgroundTransparency = 1,
					LayoutOrder = 8,
					Size = UDim2.new(1, 0, 0, primingTextContainerHeight),
				}, {
					PrimingText = React.createElement(UIBlox.App.Text.StyledTextLabel, {
						fontStyle = props.promptStyle.Font.Body,
						colorStyle = props.promptStyle.Theme.TextDefault,
						textXAlignment = Enum.TextXAlignment.Left,
						textYAlignment = Enum.TextYAlignment.Top,
						size = UDim2.new(1, 0, 1, 0),
						text = primingText,
						lineHeight = 1.25,
					}),
				})
				else nil,
			SpaceContainerTemp = if primingText
				then React.createElement("Frame", {
					BackgroundTransparency = 1,
					LayoutOrder = 9,
					Size = UDim2.new(1, 0, 0, 30),
				})
				else nil,
			ButtonContainer = React.createElement("Frame", {
				BackgroundTransparency = 1,
				LayoutOrder = 10,
				Size = UDim2.new(1, 0, 0, BUTTON_CONTAINER_SIZE),
			}, {
				Layout = React.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					Padding = UDim.new(0, BUTTON_PADDING),
					SortOrder = Enum.SortOrder.LayoutOrder,
					VerticalAlignment = Enum.VerticalAlignment.Center,
				}),
				SecondaryButton = if props.settingsAppAvailable
					then React.createElement(Button, {
						buttonType = ButtonType.Secondary,
						layoutOrder = 1,
						size = UDim2.new(0.5, -5, 0, BUTTON_CONTAINER_SIZE),
						text = notNow,
						onActivated = props.handleSecondaryActivated,
						Selectable = isSelectable,
					})
					else nil,
				ConfirmButton = React.createElement(Button, {
					buttonType = ButtonType.PrimarySystem,
					layoutOrder = 2,
					size = UDim2.new(if props.settingsAppAvailable then 0.5 else 1, -5, 0, BUTTON_CONTAINER_SIZE),
					text = if props.settingsAppAvailable then openSettings else ok,
					onActivated = props.handlePrimaryActivated,
					Selectable = isSelectable,
				}),
			}),
		}),
	})
end

if GetFFlagSupportGamepadNavInVoiceModals() then
	return React.forwardRef(DevicePermissionsModal) :: any
else
	return DevicePermissionsModal :: DevicePermissionsModalType
end
