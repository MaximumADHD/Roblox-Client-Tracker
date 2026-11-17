local SocialLibraries = script:FindFirstAncestor("SocialLibraries")
local dependencies = require(SocialLibraries.dependencies)
local ChatBubbleContainer = require(script.Parent.ChatBubbleContainerAutomaticSize)
local Roact = dependencies.Roact
local withStyle = dependencies.UIBlox.Style.withStyle
local normalizeFontFace = dependencies.Foundation.Utility.normalizeFontFace
local useTextBounds = require(SocialLibraries.Utils.useTextBounds)

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

type TextContentProps = {
	text: string,
	font: Font | Enum.Font,
	textSize: number,
	contentMaxWidth: number,
	textColor3: Color3,
	textTransparency: number,
}

local function TextContent(props: TextContentProps)
	local measuredBounds = useTextBounds(props.text, props.font, props.textSize, props.contentMaxWidth)
	local textBounds = measuredBounds or Vector2.new(0, props.textSize)

	return Roact.createElement("TextLabel", {
		Text = props.text,
		TextXAlignment = Enum.TextXAlignment.Left,
		BackgroundTransparency = 1,
		TextColor3 = props.textColor3,
		AutomaticSize = Enum.AutomaticSize.XY,
		FontFace = normalizeFontFace(props.font),
		TextSize = props.textSize,
		Size = fFlagFixPlainTextAutomaticSizeClippingText
				and UDim2.fromOffset(math.ceil(textBounds.X), math.ceil(textBounds.Y))
			or UDim2.new(0, textBounds.X, 0, textBounds.Y),
		TextTransparency = props.textTransparency,
		TextYAlignment = Enum.TextYAlignment.Top,
		TextWrapped = true,
	}, {
		SizeConstraint = Roact.createElement("UISizeConstraint", {
			MaxSize = Vector2.new(props.contentMaxWidth, math.huge),
		}),
	})
end

local function PlainText(props)
	return withStyle(function(style)
		local maxWidth = props.maxWidth or defaultProps.maxWidth
		local innerPadding = props.innerPadding or defaultProps.innerPadding
		local contentMaxWidth = math.max(0, maxWidth - innerPadding)
		local fontStyle = style.Font.Body
		local textSize = props.textSize or style.Font.BaseSize * fontStyle.RelativeSize
		local text = props.text or defaultProps.text
		local font = props.font or fontStyle.Font

		return Roact.createElement(ChatBubbleContainer, {
			isIncoming = props.isIncoming or defaultProps.isIncoming,
			hasTail = props.hasTail or defaultProps.hasTail,
			isPending = props.isPending or defaultProps.isPending,
			padding = innerPadding,
			LayoutOrder = props.LayoutOrder or defaultProps.LayoutOrder,
			[Roact.Change.AbsoluteSize] = props[Roact.Change.AbsoluteSize] or defaultProps[Roact.Change.AbsoluteSize],
		}, {
			textContent = Roact.createElement(TextContent, {
				text = text,
				font = font,
				textSize = textSize,
				contentMaxWidth = contentMaxWidth,
				textColor3 = style.Theme.TextEmphasis.Color,
				textTransparency = props.isPending and style.Theme.TextMuted.Transparency or 0,
			}),
		})
	end)
end

return PlainText
