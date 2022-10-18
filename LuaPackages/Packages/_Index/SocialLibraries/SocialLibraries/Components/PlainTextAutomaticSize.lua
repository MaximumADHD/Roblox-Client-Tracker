local SocialLibraries = script:FindFirstAncestor("SocialLibraries")
local dependencies = require(SocialLibraries.dependencies)
local ChatBubbleContainer = require(script.Parent.ChatBubbleContainerAutomaticSize)
local Roact = dependencies.Roact
local withStyle = dependencies.UIBlox.Style.withStyle
local TextService = game:GetService("TextService")

game:DefineFastFlag("FixPlainTextAutomaticSizeClippingText", false)

local fFlagFixPlainTextAutomaticSizeClippingText = game:GetFastFlag("FixPlainTextAutomaticSizeClippingText")

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
		local textSize = props.textSize or style.Font.BaseSize * fontStyle.RelativeSize
		local text = props.text or defaultProps.text
		local font = props.font or fontStyle.Font
		local maxTextBounds = Vector2.new(contentMaxWidth, math.huge)

		local textBounds = TextService:GetTextSize(text, textSize, font, maxTextBounds)

		return Roact.createElement(ChatBubbleContainer, {
			isIncoming = props.isIncoming or defaultProps.isIncoming,
			hasTail = props.hasTail or defaultProps.hasTail,
			isPending = props.isPending or defaultProps.isPending,
			padding = innerPadding,
			LayoutOrder = props.LayoutOrder or defaultProps.LayoutOrder,
			[Roact.Change.AbsoluteSize] = props[Roact.Change.AbsoluteSize] or defaultProps[Roact.Change.AbsoluteSize],
		}, {
			textContent = Roact.createElement("TextLabel", {
				Text = text,
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundTransparency = 1,
				TextColor3 = style.Theme.TextEmphasis.Color,
				AutomaticSize = Enum.AutomaticSize.XY,
				Font = font,
				TextSize = textSize,
				Size = fFlagFixPlainTextAutomaticSizeClippingText
						and UDim2.fromOffset(math.ceil(textBounds.X), math.ceil(textBounds.Y))
					or UDim2.new(0, textBounds.X, 0, textBounds.Y),
				TextTransparency = props.isPending and style.Theme.TextMuted.Transparency or 0,
				TextYAlignment = Enum.TextYAlignment.Top,
				TextWrapped = true,
			}, {
				SizeConstraint = Roact.createElement("UISizeConstraint", {
					MaxSize = Vector2.new(contentMaxWidth or maxWidth, math.huge),
				}),
			}),
		})
	end)
end

return PlainText
