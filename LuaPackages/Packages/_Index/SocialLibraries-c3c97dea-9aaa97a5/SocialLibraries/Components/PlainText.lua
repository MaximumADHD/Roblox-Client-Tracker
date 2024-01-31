local SocialLibraries = script:FindFirstAncestor("SocialLibraries")
local dependencies = require(SocialLibraries.dependencies)
local ChatBubbleContainer = require(script.Parent.ChatBubbleContainer)
local Roact = dependencies.Roact
local withStyle = dependencies.UIBlox.Style.withStyle
local FitTextLabel = dependencies.RoactFitComponents.FitTextLabel

local PlainText = Roact.PureComponent:extend("PlainText")
PlainText.defaultProps = {
	text = "",
	maxWidth = 0,
	innerPadding = 0,
	isIncoming = false,
	hasTail = false,
	LayoutOrder = 0,
	isPending = false,
	[Roact.Change.AbsoluteSize] = function() end,
}

function PlainText:render()
	return withStyle(function(style)
		local maxWidth = self.props.maxWidth
		local innerPadding = self.props.innerPadding
		local contentMaxWidth = math.max(0, maxWidth - innerPadding)
		local fontStyle = style.Font.Body
		local textSize = style.Font.BaseSize * fontStyle.RelativeSize

		return Roact.createElement(ChatBubbleContainer, {
			isIncoming = self.props.isIncoming,
			hasTail = self.props.hasTail,
			isPending = self.props.isPending,
			padding = innerPadding,
			LayoutOrder = self.props.LayoutOrder,
			[Roact.Change.AbsoluteSize] = self.props[Roact.Change.AbsoluteSize],
		}, {
			textContent = Roact.createElement(FitTextLabel, {
				Text = self.props.text,
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundTransparency = 1,
				TextColor3 = style.Theme.TextEmphasis.Color,
				width = FitTextLabel.Width.FitToText,
				maximumWidth = contentMaxWidth,
				Font = self.props.font or fontStyle.Font,
				TextSize = self.props.textSize or textSize,
				TextTransparency = self.props.isPending and style.Theme.TextMuted.Transparency or 0,
				TextYAlignment = Enum.TextYAlignment.Top,
			})
		})
	end)
end

return PlainText
