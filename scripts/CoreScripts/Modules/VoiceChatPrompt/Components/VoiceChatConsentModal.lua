local CorePackages = game:GetService("CorePackages")
local TextService = game:GetService("TextService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Roact = require(CorePackages.Roact)
local React = require(CorePackages.Packages.React)
local t = require(CorePackages.Packages.t)
local ArgCheck = require(CorePackages.Workspace.Packages.ArgCheck)

local UIBlox = require(CorePackages.UIBlox)
local Button = UIBlox.App.Button.Button
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local Checkbox = UIBlox.App.InputButton.Checkbox
local Images = UIBlox.App.ImageSet.Images

local Assets = require(script.Parent.Parent.Parent.InGameMenu.Resources.Assets)

local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

-- Constants
local OVERLAY_WIDTH = 365
local BUTTON_CONTAINER_SIZE = 36
local PADDING = 20
local DIVIDER = 1
local EXTRA_PADDING_HEIGHT = 7

local turnOn = RobloxTranslator:FormatByKey("Feature.SettingsHub.Action.TurnOn")
local notNow = RobloxTranslator:FormatByKey("Feature.SettingsHub.Action.NotNow")
local turnOnDisclaimer = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.SelectingTurnOn")

type Props = {
	titleText: string,
	bodyText: string,
	handlePrimaryActivated: () -> nil,
	handleSecondaryActivated: () -> nil,
	Analytics: { [string]: any? },
	showCheckbox: boolean,
	promptStyle: { [string]: any? },
	showPrompt: boolean,
}

export type VoiceChatConsentModalType = (props: Props) -> React.ReactElement

local validateProps = ArgCheck.wrap(t.strictInterface({
	titleText = t.optional(t.string),
	bodyText = t.optional(t.string),
	handlePrimaryActivated = t.optional(t.callback),
	handleSecondaryActivated = t.optional(t.callback),
	Analytics = t.optional(t.table),
	showCheckbox = t.optional(t.boolean),
	promptStyle = t.optional(t.table),
	showPrompt = t.optional(t.boolean),
}))

local function VoiceChatConsentModal(props: Props)
	assert(validateProps(props))

	local isSelected, setIsSelected = React.useState(false)

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

	local infoFont = props.promptStyle.Font.CaptionHeader.Font
	local infoFontSize = props.promptStyle.Font.CaptionHeader.RelativeSize * props.promptStyle.Font.BaseSize
	local infoTextHeight = TextService:GetTextSize(
		turnOnDisclaimer,
		infoFontSize,
		infoFont,
		Vector2.new(OVERLAY_WIDTH - 2 * PADDING, math.huge)
	).Y
	local infoTextContainerHeight = PADDING + infoTextHeight

	return Roact.createElement("ScreenGui", {
		DisplayOrder = 8,
		IgnoreGuiInset = true,
		OnTopOfCoreBlur = true,
		Enabled = props.showPrompt,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
	}, {
		Overlay = Roact.createElement("TextButton", {
			AutoButtonColor = false,
			BackgroundColor3 = props.promptStyle.Theme.Overlay.Color,
			BackgroundTransparency = props.promptStyle.Theme.Overlay.Transparency,
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 1, 0),
			Text = "",
		}),
		DialogMainFrame = Roact.createElement(UIBlox.Core.ImageSet.ImageSetLabel, {
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
					+ DIVIDER
					+ bodyTextContainerHeight
					+ 2 * EXTRA_PADDING_HEIGHT
					+ BUTTON_CONTAINER_SIZE
					+ 3 * PADDING
					+ infoTextContainerHeight
			),
			AutomaticSize = Enum.AutomaticSize.Y,
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
			TitleTextContainer = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				LayoutOrder = 2,
				Size = UDim2.new(1, 0, 0, titleTextContainerHeight),
				AutomaticSize = Enum.AutomaticSize.Y,
			}, {
				TitleText = Roact.createElement(UIBlox.App.Text.StyledTextLabel, {
					fontStyle = props.promptStyle.Font.Header1,
					colorStyle = props.promptStyle.Theme.SystemPrimaryDefault,
					textXAlignment = Enum.TextXAlignment.Center,
					size = UDim2.new(1, 0, 1, 0),
					text = props.titleText,
				}),
			}),
			Divider = Roact.createElement("Frame", {
				BackgroundColor3 = props.promptStyle.Theme.Divider.Color,
				BackgroundTransparency = props.promptStyle.Theme.Divider.Transparency,
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
					fontStyle = props.promptStyle.Font.Body,
					colorStyle = props.promptStyle.Theme.TextDefault,
					textXAlignment = Enum.TextXAlignment.Center,
					size = UDim2.new(1, 0, 1, 0),
					text = props.bodyText,
				}),
			}),
			SpaceContainer = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				LayoutOrder = 8,
				Size = UDim2.new(1, 0, 0, 20),
			}),
			ButtonContainer = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				LayoutOrder = 9,
				Size = UDim2.new(1, 0, 0, BUTTON_CONTAINER_SIZE),
				AutomaticSize = Enum.AutomaticSize.Y,
			}, {
				Layout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					Padding = UDim.new(0, PADDING),
					SortOrder = Enum.SortOrder.LayoutOrder,
					VerticalAlignment = Enum.VerticalAlignment.Center,
				}),
				SecondaryButton = Roact.createElement(Button, {
					buttonType = ButtonType.Secondary,
					layoutOrder = 1,
					size = UDim2.new(0.5, -5, 0, BUTTON_CONTAINER_SIZE),
					text = notNow,
					onActivated = props.handleSecondaryActivated,
				}),
				ConfirmButton = Roact.createElement(Button, {
					buttonType = ButtonType.PrimarySystem,
					layoutOrder = 2,
					size = UDim2.new(0.5, -5, 0, BUTTON_CONTAINER_SIZE),
					text = turnOn,
					isDisabled = props.showCheckbox and not isSelected,
					onActivated = props.handlePrimaryActivated,
				}),
			}),
			InfoTextContainer = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				LayoutOrder = 10,
				Size = UDim2.new(1, 0, 0, infoTextContainerHeight + PADDING),
			}, {
				Padding = Roact.createElement("UIPadding", {
					PaddingTop = UDim.new(0, PADDING),
				}),
				Layout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					SortOrder = Enum.SortOrder.LayoutOrder,
					VerticalAlignment = Enum.VerticalAlignment.Top,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
				}),
				Checkbox = props.showCheckbox and Roact.createElement(Checkbox, {
					text = "",
					isSelected = isSelected,
					isDisabled = false,
					onActivated = function(selected)
						setIsSelected(selected)
					end,
					layoutOrder = 1,
				}),
				TextContainer = Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					LayoutOrder = 2,
					Size = UDim2.new(if props.showCheckbox then 0.95 else 1, 0, 0, infoTextContainerHeight),
				}, {
					Padding = props.showCheckbox and Roact.createElement("UIPadding", {
						PaddingLeft = UDim.new(0, 10),
					}),
					InfoText = Roact.createElement(UIBlox.App.Text.StyledTextLabel, {
						fontStyle = props.promptStyle.Font.CaptionHeader,
						colorStyle = props.promptStyle.Theme.TextDefault,
						textXAlignment = Enum.TextXAlignment.Left,
						textYAlignment = Enum.TextYAlignment.Top,
						size = UDim2.new(1, 0, 1, 0),
						text = turnOnDisclaimer,
						lineHeight = 1.15,
					}),
				}),
			}),
		}),
	})
end

return VoiceChatConsentModal :: VoiceChatConsentModalType
