local VerifiedBadges = script:FindFirstAncestor("VerifiedBadges")

local Cryo = require(VerifiedBadges.Parent.Cryo)
local React = require(VerifiedBadges.Parent.React)
local ReactRoblox = require(VerifiedBadges.Parent.ReactRoblox)

local defaultProps = {
	anchorPoint = Vector2.new(),
	position = UDim2.new(),
	color = Color3.fromHex("#fff"),
	font = Enum.Font.Gotham,
	size = UDim2.fromScale(1, 0),
	automaticSize = Enum.AutomaticSize.XY,
}

type DefaultProps = typeof(defaultProps)

export type Props = {
	emoji: string,
	color: Color3?,
	font: Enum.Font?,
	anchorPoint: Vector2?,
	position: UDim2?,
	size: UDim2?,
	horizontalAlignment: Enum.HorizontalAlignment?,
	verticalAlignment: Enum.VerticalAlignment?,
	layoutOrder: number?,
	onActivated: (() -> ())?,
	children: React.ReactElement<any, string>?,
}

--[=[
	This component is the primary avenue for setting up text with the Verified
	badge, or any other emoji.

	Outfitting an element with an emoji is easy with the EmojiWrapper. For this
	example we'll use the `userText` element from the SocialTab's ProfileEntry
	component:

	```lua
	userText = Roact.createElement(StyledTextLabel, {
	    TextStyle = theme.TextEmphasis,
	    FontStyle = font.Header1,
	    TextXAlignment = Enum.TextXAlignment.Left,
	    LayoutOrder = 4,
	    Size = UDim2.new(0, 0, 0, CONTAINER_HEIGHT),
	    Text = props.userText,
	    AutomaticSize = Enum.AutomaticSize.X,
	}),
	```

	To setup userText with the Verified badge we flag the change with
	[VerifiedBadges.getFFlagUseVerifiedBadge] and wrap the existing component
	with EmojiWrapper

	```lua
	userText = if VerifiedBadges.getFFlagUseVerifiedBadge()
	    then Roact.createElement(VerifiedBadges.EmojiWrapper, {
	        emoji = VerifiedBadges.emoji.verified,
	        layoutOrder = 4,
	    }, {
	        userText = Roact.createElement(StyledTextLabel, {
	            TextStyle = theme.TextEmphasis,
	            FontStyle = font.Header1,
	            TextXAlignment = Enum.TextXAlignment.Left,
	            LayoutOrder = 4,
	            Size = UDim2.new(0, 0, 0, CONTAINER_HEIGHT),
	            Text = props.userText,
	            AutomaticSize = Enum.AutomaticSize.X,
	        }),
	    })
	    else Roact.createElement(StyledTextLabel, {
	        TextStyle = theme.TextEmphasis,
	        FontStyle = font.Header1,
	        TextXAlignment = Enum.TextXAlignment.Left,
	        LayoutOrder = 4,
	        Size = UDim2.new(0, 0, 0, CONTAINER_HEIGHT),
	        Text = props.userText,
	        AutomaticSize = Enum.AutomaticSize.X,
	    })
	```

	@within VerifiedBadges
	@tag Component
]=]
local function EmojiWrapper(props: Props)
	local joinedProps: DefaultProps & Props = Cryo.Dictionary.join(defaultProps, props)

	if joinedProps.children then
		assert(React.Children.count(joinedProps.children) <= 1, "EmojiWrapper can only contain one child")
	end

	if joinedProps.emoji == "" then
		return joinedProps.children
	end

	local emojiSize, setEmojiSize = React.useState(0)
	local previousEmojiSize, setPreviousEmojiSize = React.useState(-1)

	local onSizeChanged = React.useCallback(function(rbx: Frame)
		local newEmojiSize = rbx.AbsoluteSize.Y

		-- Prevent the emoji size from rapidly changing between the same two
		-- sizes
		if newEmojiSize ~= previousEmojiSize then
			setPreviousEmojiSize(emojiSize)
			setEmojiSize(newEmojiSize)
		end
	end, { emojiSize, previousEmojiSize })

	return React.createElement("Frame", {
		LayoutOrder = joinedProps.layoutOrder,
		AnchorPoint = joinedProps.anchorPoint,
		Position = joinedProps.position,
		Size = joinedProps.size,
		AutomaticSize = joinedProps.automaticSize,
		BackgroundTransparency = 1,
	}, {
		Layout = React.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = joinedProps.horizontalAlignment,
			VerticalAlignment = joinedProps.verticalAlignment,
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

			Children = React.createElement(React.Fragment, nil, joinedProps.children),
		}),

		Emoji = React.createElement("TextLabel", {
			LayoutOrder = 2,
			Text = joinedProps.emoji,
			Font = joinedProps.font,
			TextColor3 = joinedProps.color,
			TextSize = emojiSize,
			BackgroundTransparency = 1,
			TextYAlignment = Enum.TextYAlignment.Center,
			TextXAlignment = Enum.TextXAlignment.Center,
			Size = UDim2.fromOffset(emojiSize, emojiSize),
		}, {
			Button = props.onActivated and React.createElement("ImageButton", {
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
				[ReactRoblox.Event.Activated] = props.onActivated,
			}),
		}),
	})
end

return EmojiWrapper
