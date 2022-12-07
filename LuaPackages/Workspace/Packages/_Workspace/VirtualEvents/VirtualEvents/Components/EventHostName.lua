local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local React = require(VirtualEvents.Parent.React)
local UIBlox = require(VirtualEvents.Parent.UIBlox)
local types = require(VirtualEvents.types)

local useStyle = UIBlox.Core.Style.useStyle
local EmojiTextLabel = UIBlox.Core.Text.EmojiTextLabel
local EmojiEnum = UIBlox.App.Emoji.Enum.Emoji

local ELEMENTS_PADDING = 4

export type Props = {
	host: types.Host,
}

local function EventHostName(props: Props)
	local style = useStyle()
	local emojiBadge = if props.host.hasVerifiedBadge then EmojiEnum.Verified else nil

	local textSize, setTextSize = React.useState(0)

	local onUsernameSizeChanged = React.useCallback(function(rbx: TextLabel)
		setTextSize(rbx.TextSize)
	end, { setTextSize })

	return React.createElement("Frame", {
		BackgroundTransparency = 1,
		AutomaticSize = Enum.AutomaticSize.XY,
	}, {
		Layout = React.createElement("UIListLayout", {
			Padding = UDim.new(0, ELEMENTS_PADDING),
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
			VerticalAlignment = Enum.VerticalAlignment.Center,
		}),

		UserImage = React.createElement("ImageLabel", {
			LayoutOrder = 1,
			BackgroundColor3 = style.Theme.Badge.Color,
			BackgroundTransparency = style.Theme.Badge.Transparency,
			Image = string.format("rbxthumb://type=AvatarHeadShot&id=%i&w=150&h=150", props.host.hostId),
			Size = UDim2.fromOffset(textSize, textSize),
		}, {
			Corner = React.createElement("UICorner", {
				CornerRadius = UDim.new(1, 0),
			}),
		}),

		EmojiName = React.createElement(EmojiTextLabel, {
			Text = props.host.hostName,
			LayoutOrder = 2,
			emoji = emojiBadge,
			fontStyle = style.Font.Header2,
			colorStyle = style.Theme.TextEmphasis,
			[React.Change.AbsoluteSize] = onUsernameSizeChanged,
		}),

		EmojiToArrowMargin = if emojiBadge
			then React.createElement("Frame", {
				LayoutOrder = 3,
				BackgroundTransparency = 1,
				Size = UDim2.fromOffset(textSize - ELEMENTS_PADDING, 0),
			})
			else nil,
	})
end

return EventHostName
