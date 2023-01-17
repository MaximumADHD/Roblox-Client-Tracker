local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local React = require(Packages.React)
local UIBlox = require(Packages.UIBlox)
local QRCodeView = require(ProfileQRCode.Components.QRCodeView)
local ProfileQRCodeTopBar = require(ProfileQRCode.Components.ProfileQRCodeTopBar)
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local useStyle = UIBlox.Core.Style.useStyle
local TextKeys = require(ProfileQRCode.Common.TextKeys)
local RoactUtils = require(Packages.RoactUtils)
local useLocalization = RoactUtils.Hooks.useLocalization

local ROOT_PADDING = 24
local GRADIENT_ROTATION = 90
local TOP_BAR_PADDING = -56

export type Props = {
	onClose: () -> (),
}

local ProfileQRCodePage = function(props: Props)
	local localized = useLocalization({
		description = TextKeys.Description,
	})
	local style = useStyle()

	return React.createElement("Frame", {
		BackgroundColor3 = style.Theme.BackgroundUIContrast.Color,
		BackgroundTransparency = style.Theme.BackgroundUIContrast.Transparency,
		Size = UDim2.new(1, 0, 1, 0),
		BorderSizePixel = 0,
	}, {
		Gradient = React.createElement("Frame", {
			BackgroundColor3 = style.Theme.BackgroundContrast.Color,
			BackgroundTransparency = style.Theme.BackgroundContrast.Transparency,
			Size = UDim2.new(1, 0, 1, 0),
			BorderSizePixel = 0,
		}, {
			Layout = React.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			Padding = React.createElement("UIPadding", {
				PaddingTop = UDim.new(0, ROOT_PADDING),
			}),
			TopBar = React.createElement(ProfileQRCodeTopBar, {
				layoutOrder = 1,
				onClose = props.onClose,
			}),
			Content = React.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, TOP_BAR_PADDING),
				BorderSizePixel = 0,
				LayoutOrder = 2,
			}, {
				Layout = React.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				Padding = React.createElement("UIPadding", {
					PaddingTop = UDim.new(0, ROOT_PADDING),
					PaddingRight = UDim.new(0, ROOT_PADDING),
					PaddingBottom = UDim.new(0, ROOT_PADDING),
					PaddingLeft = UDim.new(0, ROOT_PADDING),
				}),
				QRCodeView = React.createElement(QRCodeView, {
					layoutOrder = 1,
				}),
				Spacer1 = React.createElement("Frame", {
					BorderSizePixel = 0,
					BackgroundTransparency = 1,
					Size = UDim2.new(0, 0, 0, ROOT_PADDING),
					LayoutOrder = 2,
				}),
				Description = React.createElement(StyledTextLabel, {
					layoutOrder = 3,
					text = localized.description,
					fontStyle = style.Font.CaptionHeader,
					colorStyle = style.Theme.TextEmphasis,
					size = UDim2.new(1, 0, 0, 0),
					automaticSize = Enum.AutomaticSize.Y,
					textXAlignment = Enum.TextXAlignment.Left,
					textYAlignment = Enum.TextYAlignment.Center,
					fluidSizing = false,
					richText = false,
				}),
			}),
			Gradient = React.createElement("UIGradient", {
				Rotation = GRADIENT_ROTATION,
				Transparency = NumberSequence.new({
					NumberSequenceKeypoint.new(0, 0),
					NumberSequenceKeypoint.new(1, 1),
				}),
			}),
		}),
	})
end

return ProfileQRCodePage
