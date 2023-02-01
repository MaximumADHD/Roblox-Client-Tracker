local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local React = require(Packages.React)
local QRCodeDisplay = require(Packages.QRCodeDisplay)
local UIBlox = require(Packages.UIBlox)
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local useStyle = UIBlox.Core.Style.useStyle
local DisplayQRCode = QRCodeDisplay.DisplayQRCode
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local Images = UIBlox.App.ImageSet.Images
local useLocalUserId = require(ProfileQRCode.Utils.useLocalUserId)
local useLocalUserInfo = require(script.Parent.useLocalUserInfo)
local getAvatarThumbnail = require(script.Parent.getAvatarThumbnail)
local LightTheme = UIBlox.App.Style.Themes.LightTheme

local THUMBNAIL_SIZE = 60
local DROP_SHADOW_DIAMETER = THUMBNAIL_SIZE + 20
local DROP_SHADOW = Images["component_assets/dropshadow_56_8"]
local QRCODE_TEXT_SPACING = 10

export type Props = {
	padding: number,
	url: string,
	qrCodeLength: number,
}

local QRCodeSucceededView = function(props: Props)
	local localUserId = useLocalUserId()
	local localUserInfo = useLocalUserInfo(localUserId)
	local style = useStyle()

	return React.createElement("Frame", {
		BorderSizePixel = 0,
		BackgroundTransparency = LightTheme.BackgroundUIDefault.Transparency,
		BackgroundColor3 = LightTheme.BackgroundUIDefault.Color,
		Size = UDim2.new(1, 0, 1, 0),
	}, {
		Layout = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		Padding = React.createElement("UIPadding", {
			PaddingTop = UDim.new(0, props.padding),
			PaddingRight = UDim.new(0, props.padding),
			PaddingBottom = UDim.new(0, props.padding),
			PaddingLeft = UDim.new(0, props.padding),
		}),
		QRCodeWrapper = React.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(0, props.qrCodeLength, 0, props.qrCodeLength),
			LayoutOrder = 1,
		}, {
			QRCode = React.createElement(DisplayQRCode, {
				toEncode = props.url,
				ecLevel = QRCodeDisplay.ECLevels.EC_LEVEL_4,
				sideLength = props.qrCodeLength,
				pixelColor = LightTheme.UIEmphasis.Color,
			}),
			PlayerAvatar = React.createElement(ImageSetLabel, {
				BorderSizePixel = 1,
				BackgroundTransparency = LightTheme.BackgroundUIDefault.Transparency,
				BackgroundColor3 = LightTheme.BackgroundUIDefault.Color,
				Position = UDim2.new(0.5, -(THUMBNAIL_SIZE / 2), 0.5, -(THUMBNAIL_SIZE / 2)),
				Image = getAvatarThumbnail(localUserId),
				Size = UDim2.new(0, THUMBNAIL_SIZE, 0, THUMBNAIL_SIZE),
				ZIndex = 3,
			}, {
				UICorner = React.createElement("UICorner", {
					CornerRadius = UDim.new(1, 0),
				}),
				UIStroke = React.createElement("UIStroke", {
					Thickness = 2,
					Color = LightTheme.BackgroundUIDefault.Color,
				}),
			}),
			BigShadow = React.createElement(ImageSetLabel, {
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				Size = UDim2.new(0, DROP_SHADOW_DIAMETER, 0, DROP_SHADOW_DIAMETER),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				ZIndex = 2,
				Image = DROP_SHADOW,
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = Rect.new(28, 28, 29, 29),
				ImageColor3 = style.Theme.DropShadow.Color,
				ImageTransparency = style.Theme.DropShadow.Transparency,
			}),
		}),
		Spacer1 = React.createElement("Frame", {
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
			Size = UDim2.new(0, 0, 0, QRCODE_TEXT_SPACING),
			LayoutOrder = 2,
		}),
		DisplayName = React.createElement(StyledTextLabel, {
			layoutOrder = 3,
			text = localUserInfo.displayName,
			fontStyle = style.Font.SubHeader1,
			lineHeight = 1,
			colorStyle = LightTheme.TextEmphasis,
			automaticSize = Enum.AutomaticSize.Y,
			textTruncate = Enum.TextTruncate.AtEnd,
			textXAlignment = Enum.TextXAlignment.Center,
			textYAlignment = Enum.TextYAlignment.Center,
			fluidSizing = false,
			richText = false,
		}),
		Username = React.createElement(StyledTextLabel, {
			layoutOrder = 4,
			text = "@" .. localUserInfo.username,
			fontStyle = style.Font.CaptionBody,
			lineHeight = 1,
			automaticSize = Enum.AutomaticSize.Y,
			colorStyle = LightTheme.TextEmphasis,
			textTruncate = Enum.TextTruncate.AtEnd,
			textXAlignment = Enum.TextXAlignment.Center,
			textYAlignment = Enum.TextYAlignment.Center,
			fluidSizing = false,
			richText = false,
		}),
		UICorner = React.createElement("UICorner", {
			CornerRadius = UDim.new(0.05, 0),
		}),
	})
end

return QRCodeSucceededView
