local SocialLibraries = script:FindFirstAncestor("SocialLibraries")
local dependencies = require(SocialLibraries.dependencies)
local ChatBubbleContainer = require(script.Parent.ChatBubbleContainerAutomaticSize)
local Roact = dependencies.Roact
local withStyle = dependencies.UIBlox.Style.withStyle

local defaultProps = {
	text = "",
	maxWidth = 0,
	innerPadding = 0,
	isIncoming = false,
	hasTail = false,
	LayoutOrder = 0,
	isPending = false,
	[Roact.Change.AbsoluteSize] = function() end,
}

local function PlainText(props)
	return withStyle(function(style)
		local maxWidth = props.maxWidth or defaultProps.maxWidth
		local innerPadding = props.innerPadding or defaultProps.innerPadding
		local contentMaxWidth = math.max(0, maxWidth - innerPadding)
		local fontStyle = style.Font.Body
		local textSize = style.Font.BaseSize * fontStyle.RelativeSize

		return Roact.createElement(ChatBubbleContainer, {
			isIncoming = props.isIncoming or defaultProps.isIncoming,
			hasTail = props.hasTail or defaultProps.hasTail,
			isPending = props.isPending or defaultProps.isPending,
			padding = innerPadding,
			LayoutOrder = props.LayoutOrder or defaultProps.LayoutOrder,
			[Roact.Change.AbsoluteSize] = props[Roact.Change.AbsoluteSize] or defaultProps[Roact.Change.AbsoluteSize],
		}, {
			textContent = Roact.createElement("TextLabel", {
				Text = props.text or defaultProps.text,
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundTransparency = 1,
				TextColor3 = style.Theme.TextEmphasis.Color,
				AutomaticSize = Enum.AutomaticSize.XY,
				Font = props.font or fontStyle.Font,
				TextSize = props.textSize or textSize,
				TextTransparency = props.isPending and style.Theme.TextMuted.Transparency or 0,
				TextYAlignment = Enum.TextYAlignment.Top,
			}, {
				SizeConstraint = Roact.createElement("UISizeConstraint", {
					MaxSize = Vector2.new(contentMaxWidth or maxWidth, math.huge),
				})
			})
		})
	end)
end

return PlainText
