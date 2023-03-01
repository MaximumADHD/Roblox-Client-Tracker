local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local React = require(Packages.React)
local UIBlox = require(Packages.UIBlox)
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local useStyle = UIBlox.Core.Style.useStyle
local TextKeys = require(ProfileQRCode.Common.TextKeys)
local RoactUtils = require(Packages.RoactUtils)
local useLocalization = RoactUtils.Hooks.useLocalization
local IconButton = UIBlox.App.Button.IconButton
local IconSize = UIBlox.App.ImageSet.Enum.IconSize
local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local StandardButtonSize = UIBlox.App.Button.Enum.StandardButtonSize

local QR_CODE_ICON = Images["icons/menu/scanqr"]
local CLOSE_BUTTON_IMAGE = Images["icons/navigation/close"]

local NOTIF_PADDING = 12
local TEXT_TO_BUTTON_PADDING = 16
local QR_CODE_IMAGE_HEIGHT = 20
local QR_CODE_IMAGE_WIDTH = 20
local CLOSE_BUTTON_HEIGHT = 16
local CLOSE_BUTTON_WIDTH = 16
local UPPER_BUTTONS_TOTAL_WIDTH = QR_CODE_IMAGE_WIDTH + CLOSE_BUTTON_WIDTH
local USERNAME_TEXT_HEIGHT = 20
local REQUEST_TEXT_HEIGHT = 28
local MAX_WIDTH = 640

export type Props = {
	onClose: () -> (),
}

local QRCodeFriendRequestNotification = function(props: Props)
	local localized = useLocalization({
		notificationRequest = TextKeys.NotificationRequest,
		acceptFriend = TextKeys.AcceptFriend,
	})
	local style = useStyle()

	return React.createElement("Frame", {
		ZIndex = 2,
		AutomaticSize = Enum.AutomaticSize.Y,
		Size = UDim2.fromScale(1, 0),
		BorderSizePixel = 0,
		BackgroundColor3 = style.Theme.BackgroundUIDefault.Color,
		BackgroundTransparency = style.Theme.BackgroundUIDefault.Transparency,
	}, {
		UIPadding = React.createElement("UIPadding", {
			PaddingBottom = UDim.new(0, NOTIF_PADDING),
			PaddingLeft = UDim.new(0, NOTIF_PADDING),
			PaddingRight = UDim.new(0, NOTIF_PADDING),
			PaddingTop = UDim.new(0, NOTIF_PADDING),
		}),
		UICorner = React.createElement("UICorner", {
			CornerRadius = UDim.new(0, 8),
		}),
		UIStroke = React.createElement("UIStroke", {
			Color = style.Theme.Divider.Color,
			Transparency = style.Theme.Divider.Transparency,
			Thickness = 1,
		}),
		Layout = React.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
		}),
		UISizeConstraint = React.createElement("UISizeConstraint", {
			MaxSize = Vector2.new(MAX_WIDTH, math.huge),
		}),
		UpperFrame = React.createElement("Frame", {
			LayoutOrder = 1,
			BackgroundTransparency = 1,
			AutomaticSize = Enum.AutomaticSize.Y,
			Size = UDim2.fromScale(1, 0),
			BorderSizePixel = 0,
		}, {
			UIPadding = React.createElement("UIPadding", {
				PaddingBottom = UDim.new(0, NOTIF_PADDING),
			}),
			Layout = React.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			QRCodeImageFrame = React.createElement("Frame", {
				LayoutOrder = 1,
				BackgroundTransparency = 1,
				Size = UDim2.new(0, QR_CODE_IMAGE_WIDTH, 0, QR_CODE_IMAGE_HEIGHT),
				BorderSizePixel = 0,
			}, {
				QRImage = React.createElement(ImageSetLabel, {
					Image = QR_CODE_ICON,
					BackgroundTransparency = 1,
					ImageTransparency = 0,
					ImageColor3 = style.Theme.TextEmphasis.Color,
					Size = UDim2.fromScale(1, 1),
				}),
			}),
			TextFrame = React.createElement("Frame", {
				LayoutOrder = 2,
				BackgroundTransparency = 1,
				Size = UDim2.new(1, UPPER_BUTTONS_TOTAL_WIDTH - (2 * UPPER_BUTTONS_TOTAL_WIDTH), 0, 0),
				BorderSizePixel = 0,
			}, {
				UIPadding = React.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, TEXT_TO_BUTTON_PADDING),
					PaddingRight = UDim.new(0, TEXT_TO_BUTTON_PADDING),
				}),
				Layout = React.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				Username = React.createElement(StyledTextLabel, {
					LayoutOrder = 1,
					text = "DigiKat",
					Font = style.Font.CaptionBody.Font,
					fontStyle = style.Font.Body,
					colorStyle = style.Theme.TextDefault,
					size = UDim2.new(1, 0, 0, USERNAME_TEXT_HEIGHT),
					AutomaticSize = Enum.AutomaticSize.Y,
					TextColor3 = style.Theme.TextEmphasis.Color,
					TextSize = style.Font.BaseSize * style.Font.CaptionBody.RelativeSize,
					TextTransparency = style.Theme.TextEmphasis.Transparency,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Top,
					TextWrapped = true,
				}),
				Description = React.createElement(StyledTextLabel, {
					LayoutOrder = 2,
					text = localized.notificationRequest,
					Font = style.Font.CaptionBody.Font,
					fontStyle = style.Font.Body,
					colorStyle = style.Theme.TextDefault,
					size = UDim2.new(1, 0, 0, REQUEST_TEXT_HEIGHT),
					AutomaticSize = Enum.AutomaticSize.Y,
					TextColor3 = style.Theme.TextEmphasis.Color,
					TextSize = style.Font.BaseSize * style.Font.CaptionBody.RelativeSize,
					TextTransparency = style.Theme.TextEmphasis.Transparency,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Top,
					TextWrapped = true,
				}),
			}),
			CloseButtonFrame = React.createElement("Frame", {
				LayoutOrder = 3,
				BackgroundTransparency = 1,
				Size = UDim2.new(0, CLOSE_BUTTON_WIDTH, 0, CLOSE_BUTTON_HEIGHT),
				BorderSizePixel = 0,
			}, {
				CloseButton = React.createElement(IconButton, {
					icon = CLOSE_BUTTON_IMAGE,
					iconSize = IconSize.Small,
					onActivated = function()
						print("************* Ignore Friend")
					end,
				}),
			}),
		}),
		AcceptButton = React.createElement(UIBlox.App.Button.PrimarySystemButton, {
			layoutOrder = 2,
			standardSize = StandardButtonSize.Small,
			text = localized.acceptFriend,
			fontStyle = style.Font.CaptionBody,
			onActivated = function()
				print("************* Accept Friend")
			end,
		}),
	})
end

return QRCodeFriendRequestNotification
