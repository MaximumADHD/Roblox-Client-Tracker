local VerifiedBadges = script:FindFirstAncestor("VerifiedBadges")

local Cryo = require(VerifiedBadges.Parent.Cryo)
local React = require(VerifiedBadges.Parent.React)
local ReactRoblox = require(VerifiedBadges.Parent.ReactRoblox)
local constants = require(VerifiedBadges.constants)

local defaultProps = {
	emoji = constants.PREMIUM_EMOJI,
	color = Color3.fromHex("#fff"),
	font = Enum.Font.Gotham,
	size = UDim2.fromScale(1, 0),
	automaticSize = Enum.AutomaticSize.XY,
}

export type Props = typeof(defaultProps) & {
	layoutOrder: number?,
	children: React.ReactElement<any, string>?,
}

local function EmojiWrapper(props: Props)
	props = Cryo.Dictionary.join(defaultProps, props)

	if props.children then
		assert(React.Children.count(props.children) <= 1, "EmojiWrapper can only contain one child")
	end

	local emojiSize, setEmojiSize = React.useState(0)

	local onSizeChanged = React.useCallback(function(rbx: Frame)
		local newEmojiSize = rbx.AbsoluteSize.Y
		setEmojiSize(newEmojiSize)
	end, {})

	return React.createElement("Frame", {
		LayoutOrder = props.layoutOrder,
		Size = props.size,
		AutomaticSize = props.automaticSize,
		BackgroundTransparency = 1,
	}, {
		Layout = React.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = UDim.new(0, -emojiSize),
		}),

		ChildrenWrapper = React.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.XY,
			BackgroundTransparency = 1,
			LayoutOrder = 1,
			[ReactRoblox.Change.AbsoluteSize] = onSizeChanged,
		}, {
			Padding = React.createElement("UIPadding", {
				PaddingRight = UDim.new(0, emojiSize),
			}),

			Children = React.createElement(React.Fragment, nil, props.children),
		}),

		Emoji = React.createElement("TextLabel", {
			LayoutOrder = 2,
			Text = props.emoji,
			Font = props.font,
			TextColor3 = props.color,
			TextSize = emojiSize,
			BackgroundTransparency = 1,
			TextYAlignment = Enum.TextYAlignment.Center,
			TextXAlignment = Enum.TextXAlignment.Center,
			Size = UDim2.fromOffset(emojiSize, emojiSize),
		}),
	})
end

return EmojiWrapper
