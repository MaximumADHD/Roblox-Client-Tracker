local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local React = require(Packages.React)
local UIBlox = require(Packages.UIBlox)
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local useStyle = UIBlox.Core.Style.useStyle
local TextKeys = require(ProfileQRCode.Common.TextKeys)
local RoactUtils = require(Packages.RoactUtils)
local useLocalization = RoactUtils.Hooks.useLocalization

local SecondaryButton = UIBlox.App.Button.SecondaryButton
local Images = UIBlox.App.ImageSet.Images
local StandardButtonSize = UIBlox.App.Button.Enum.StandardButtonSize
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local UIBloxIconSize = UIBlox.App.Constant.IconSize

local BACKGROUND_FOR_ICON = Color3.new(1, 1, 1)
local TEXT_PADDING = 12
local BUTTON_PADDING = 20

local RETRY_IMAGE = Images["icons/common/refresh"]
local ERROR_IMAGE = Images["icons/graphic/error_xlarge"]

export type Props = {
	padding: number,
	onActivated: () -> (),
}

local QRCodeFailedView = function(props: Props)
	local style = useStyle()
	local localized = useLocalization({
		failedToLoadMessage = TextKeys.FailedToLoad,
	})

	return React.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
	}, {
		Layout = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		Wrapper = React.createElement("Frame", {
			BackgroundTransparency = 1,
			AutomaticSize = Enum.AutomaticSize.Y,
			Size = UDim2.new(1, 0, 0, 0),
		}, {
			Layout = React.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			ImageWrapper = React.createElement("Frame", {
				BorderSizePixel = 0,
				BackgroundColor3 = BACKGROUND_FOR_ICON,
				BackgroundTransparency = 1,
				Size = UDim2.fromOffset(UIBloxIconSize.XLarge, UIBloxIconSize.XLarge),
				LayoutOrder = 1,
			}, {
				FailedImage = React.createElement(ImageSetLabel, {
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundTransparency = 1,
					Image = ERROR_IMAGE,
					Size = UDim2.fromOffset(UIBloxIconSize.XLarge, UIBloxIconSize.XLarge),
					Position = UDim2.fromScale(0.5, 0.5),
					LayoutOrder = 1,
				}),
			}),
			Spacer1 = React.createElement("Frame", {
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
				Size = UDim2.new(0, 0, 0, TEXT_PADDING),
				LayoutOrder = 2,
			}),
			FailedMessage = React.createElement(StyledTextLabel, {
				layoutOrder = 3,
				size = UDim2.new(1, 0, 0, 0),
				text = localized.failedToLoadMessage,
				fontStyle = style.Font.CaptionBody,
				colorStyle = style.Theme.TextMuted,
				automaticSize = Enum.AutomaticSize.Y,
				textTruncate = Enum.TextTruncate.AtEnd,
				textXAlignment = Enum.TextXAlignment.Center,
				textYAlignment = Enum.TextYAlignment.Center,
				fluidSizing = false,
				richText = false,
			}),
			Spacer2 = React.createElement("Frame", {
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
				Size = UDim2.new(0, 0, 0, BUTTON_PADDING),
				LayoutOrder = 4,
			}),
			RetryButton = React.createElement(SecondaryButton, {
				standardSize = StandardButtonSize.Regular,
				layoutOrder = 5,
				icon = RETRY_IMAGE,
				onActivated = props.onActivated,
			}),
		}),
	})
end

return QRCodeFailedView
