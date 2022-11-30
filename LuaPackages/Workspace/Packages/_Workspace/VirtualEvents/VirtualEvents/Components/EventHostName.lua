local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local React = require(VirtualEvents.Parent.React)
local UIBlox = require(VirtualEvents.Parent.UIBlox)
local useHostAvatarImageId = require(VirtualEvents.Hooks.useHostAvatarImageId)
local useHostAvatarUsername = require(VirtualEvents.Hooks.useHostAvatarUsername)

local useStyle = UIBlox.Core.Style.useStyle
local EmojiTextLabel = UIBlox.Core.Text.EmojiTextLabel
local EmojiEnum = UIBlox.App.Emoji.Enum.Emoji

local ELEMENTS_PADDING = 4
local AVATAR_IMAGE_SIZE = 16
local EMOJI_TO_ARROW_MARGIN = 18

export type Props = {
	hostId: number,
	hasVerifiedBadge: boolean?,
	position: UDim2?,
	layoutOrder: number?,
}

local function EventHostName(props: Props)
	local avatarImageId = useHostAvatarImageId(props.hostId)
	local username = useHostAvatarUsername(props.hostId)
	local emojiBadge = if props.hasVerifiedBadge then EmojiEnum.Verified else nil

	local style = useStyle()
	local theme = style.Theme
	local font = style.Font

	local layoutOrder = if props.layoutOrder then props.layoutOrder else 0
	local position = if props.position then props.position else UDim2.fromScale(0, 0)

	return React.createElement("Frame", {
		Position = position,
		Size = UDim2.fromScale(1, 1),
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	}, {
		Layout = React.createElement("UIListLayout", {
			Padding = UDim.new(0, ELEMENTS_PADDING),
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			HorizontalAlignment = Enum.HorizontalAlignment.Right,
		}),
		UserImage = React.createElement("ImageLabel", {
			Image = avatarImageId,
			Size = UDim2.fromOffset(AVATAR_IMAGE_SIZE, AVATAR_IMAGE_SIZE),
			ZIndex = 2,
			LayoutOrder = 1,
		}, {
			Corner = React.createElement("UICorner", {
				CornerRadius = UDim.new(1, 0),
			}),
		}),
		EmojiName = React.createElement(EmojiTextLabel, {
			Text = username,
			emoji = emojiBadge,
			fontStyle = font.Header1,
			colorStyle = theme.TextEmphasis,
			LayoutOrder = 3,
		}),
		EmojiToArrowMargin = if emojiBadge
			then React.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.fromOffset(EMOJI_TO_ARROW_MARGIN, 0),
				LayoutOrder = 4,
			})
			else nil,
	})
end

return EventHostName
