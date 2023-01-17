local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local React = require(Packages.React)
local QRCodeDisplay = require(Packages.QRCodeDisplay)
local UIBlox = require(Packages.UIBlox)
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local useStyle = UIBlox.Core.Style.useStyle
local DisplayQRCode = QRCodeDisplay.DisplayQRCode
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local useGetProfileShareUrl = require(script.Parent.useGetProfileShareUrl)
local useLocalUserId = require(ProfileQRCode.Utils.useLocalUserId)
local useLocalUserInfo = require(script.Parent.useLocalUserInfo)
local getAvatarThumbnail = require(script.Parent.getAvatarThumbnail)

local QR_CODE_SIZE = 200
local THUMBNAIL_SIZE = 50
local PADDING = 24
local OFFSET = 80
local NEGATIVE_PADDING_FOR_DISPLAY_NAME = -2

export type Props = {
	layoutOrder: number,
}

local ProfileQRCodeEntryPoint = function(props: Props)
	local localUserId = useLocalUserId()
	local localUserInfo = useLocalUserInfo(localUserId)
	local profileShareUrlInfo = useGetProfileShareUrl()
	local style = useStyle()
	local displayNameTextFont = style.Font.SubHeader1
	local usernameTextFont = style.Font.CaptionSubHeader

	return React.createElement("Frame", {
		BorderSizePixel = 0,
		BackgroundColor3 = Color3.new(1, 1, 1),
		Size = UDim2.new(0, QR_CODE_SIZE + PADDING + OFFSET, 0, QR_CODE_SIZE + PADDING + OFFSET),
		LayoutOrder = props.layoutOrder,
	}, {
		Layout = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		Padding = React.createElement("UIPadding", {
			PaddingTop = UDim.new(0, PADDING),
			PaddingRight = UDim.new(0, PADDING),
			PaddingBottom = UDim.new(0, PADDING),
			PaddingLeft = UDim.new(0, PADDING),
		}),

		QRCodeWrapper = React.createElement("Frame", {
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
			Size = UDim2.new(0, QR_CODE_SIZE, 0, QR_CODE_SIZE),
			LayoutOrder = 1,
		}, {
			QRCode = React.createElement(DisplayQRCode, {
				toEncode = profileShareUrlInfo.shortUrl,
				ecLevel = QRCodeDisplay.ECLevels.EC_LEVEL_4,
				sideLength = QR_CODE_SIZE,
			}),
			PlayerAvatar = React.createElement(ImageSetLabel, {
				BorderSizePixel = 0,
				BackgroundColor3 = Color3.new(1, 1, 1),
				Position = UDim2.new(0.5, -(THUMBNAIL_SIZE / 2), 0.5, -(THUMBNAIL_SIZE / 2)),
				Image = getAvatarThumbnail(localUserId),
				Size = UDim2.new(0, THUMBNAIL_SIZE, 0, THUMBNAIL_SIZE),
				ZIndex = 2,
			}),
		}),
		Spacer1 = React.createElement("Frame", {
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
			Size = UDim2.new(0, 0, 0, 15),
			LayoutOrder = 2,
		}),
		DisplayName = React.createElement(StyledTextLabel, {
			layoutOrder = 3,
			text = localUserInfo.displayName,
			fontStyle = displayNameTextFont,
			colorStyle = style.Theme.SystemPrimaryDefault,
			automaticSize = Enum.AutomaticSize.Y,
			textTruncate = Enum.TextTruncate.AtEnd,
			textXAlignment = Enum.TextXAlignment.Left,
			textYAlignment = Enum.TextYAlignment.Center,
			fluidSizing = false,
			richText = false,
		}),
		-- StyledTextLabel defaults to a height of 21 as a min height, which adds extra padding.)
		Spacer2 = React.createElement("Frame", {
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
			Size = UDim2.new(0, 0, 0, NEGATIVE_PADDING_FOR_DISPLAY_NAME),
			LayoutOrder = 4,
		}),
		Username = React.createElement(StyledTextLabel, {
			layoutOrder = 5,
			text = "@" .. localUserInfo.username,
			fontStyle = usernameTextFont,
			automaticSize = Enum.AutomaticSize.Y,
			colorStyle = style.Theme.SystemPrimaryDefault,
			textTruncate = Enum.TextTruncate.AtEnd,
			textXAlignment = Enum.TextXAlignment.Left,
			textYAlignment = Enum.TextYAlignment.Center,
			fluidSizing = false,
			richText = false,
		}),
		UICorner = React.createElement("UICorner", {
			CornerRadius = UDim.new(0.05, 0),
		}),
	})
end

return ProfileQRCodeEntryPoint
