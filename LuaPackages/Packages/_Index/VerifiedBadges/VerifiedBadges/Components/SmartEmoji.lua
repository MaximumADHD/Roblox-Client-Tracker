local VerifiedBadges = script:FindFirstAncestor("VerifiedBadges")

local Cryo = require(VerifiedBadges.Parent.Cryo)
local React = require(VerifiedBadges.Parent.React)
local ReactRoblox = require(VerifiedBadges.Parent.ReactRoblox)
local useAncestorTextLabelStyle = require(VerifiedBadges.Hooks.useAncestorTextLabelStyle)

local defaultProps = {
	color = Color3.fromHex("#fff"),
	position = UDim2.fromScale(1, 0),
	size = UDim2.fromScale(0, 1),
	automaticSize = Enum.AutomaticSize.X,
}

type DefaultProps = typeof(defaultProps)

export type Props = {
	emoji: string,
	color: Color3?,
	anchorPoint: Vector2?,
	position: UDim2?,
	size: UDim2?,
	automaticSize: Enum.AutomaticSize?,
	textXAlignment: Enum.TextXAlignment?,
	textYAlignment: Enum.TextYAlignment?,
	layoutOrder: number?,
	onActivated: (() -> ())?,
}

local function SmartEmoji(props: Props)
	props = Cryo.Dictionary.join(defaultProps, props)

	local ref: { current: TextLabel? } = React.useRef(nil)
	local width, setWidth = React.useState(0)
	local style = useAncestorTextLabelStyle(ref)

	local onAbsoluteSizeChanged = React.useCallback(function(rbx: TextLabel)
		setWidth(rbx.TextSize)
	end, {})

	local emojiProps = Cryo.Dictionary.join(style, {
		ref = ref,
		Position = props.position,
		LayoutOrder = props.layoutOrder,
		AnchorPoint = props.anchorPoint,
		Size = props.size,
		Text = props.emoji,
		TextColor3 = props.color,
		AutomaticSize = props.automaticSize,
		TextXAlignment = props.textXAlignment,
		TextYAlignment = props.textYAlignment,
		BackgroundTransparency = 1,
		[ReactRoblox.Change.AbsoluteSize] = onAbsoluteSizeChanged,
	})

	return React.createElement(React.Fragment, {}, {
		EmojiPadding = React.createElement("UIPadding", {
			PaddingRight = UDim.new(0, width),
		}),

		Emoji = React.createElement("TextLabel", emojiProps, {
			Button = props.onActivated and React.createElement("ImageButton", {
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
				[ReactRoblox.Event.Activated] = props.onActivated,
			}),
		}),
	})
end

return SmartEmoji
