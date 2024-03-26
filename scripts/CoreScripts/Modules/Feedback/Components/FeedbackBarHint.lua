--[[
		Creates a component with hint text
		For the feedback module, this hint is used for the bottom left label + icon in the feedback bar
		For now, the hint only has a label while icon graphics are yet to be finalized
]]
local CorePackages = game:GetService("CorePackages")
local UIBlox = require(CorePackages.UIBlox)
local t = require(CorePackages.Packages.t)
local Roact = require(CorePackages.Roact)

local withStyle = UIBlox.Core.Style.withStyle
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel

local HINT_PADDING = 8 --Layout padding for elemnts within feedback bar hint
local MAX_LABEL_HEIGHT = 1000 -- Fixed max height for feedback bar hint labels

local FFlagFeedbackBarHintSizeAdjustment = game:DefineFastFlag("FeedbackBarHintSizeAdjustment", false)

local FeedbackBarHint = Roact.PureComponent:extend("FeedbackBarHint")

FeedbackBarHint.validateProps = t.strictInterface({
	-- Layout order for multiple sibling hints
	layoutOrder = t.optional(t.integer),
	-- Text to be used in the hint
	text = t.string,
	-- Maximum size of the text hint
	maxWidth = t.optional(t.number),
	-- Text size for hints
	hintTextSize = t.optional(t.number),
})

function FeedbackBarHint:render()
	return withStyle(function(style)
		local theme = style.Theme
		local font = style.Font

		return Roact.createElement("Frame", {
			LayoutOrder = self.props.layoutOrder,
			BackgroundTransparency = 1,
			AutomaticSize = Enum.AutomaticSize.X,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				Padding = UDim.new(0, HINT_PADDING),
			}),
			FeedbackBarHintText = Roact.createElement(StyledTextLabel, {
				textSize = self.props.hintTextSize,
				maxSize = if self.props.maxWidth
					then (if FFlagFeedbackBarHintSizeAdjustment
						then Vector2.new(MAX_LABEL_HEIGHT, self.props.maxWidth)
						else Vector2.new(self.props.maxWidth))
					else nil,
				layoutOrder = 2,
				fontStyle = font.Header2,
				colorStyle = theme.TextEmphasis,

				-- use automatic sizing when no width is specified
				automaticSize = if not self.props.maxWidth then Enum.AutomaticSize.X else nil,
				fluidSizing = if self.props.maxWidth then true else false,
				text = self.props.text,

				-- only truncate if we've specified a maximum size for hint
				textTruncate = if self.props.maxWidth then Enum.TextTruncate.AtEnd else nil,

				textXAlignment = Enum.TextXAlignment.Left,
				textYAlignment = Enum.TextYAlignment.Center,
			}),
		})
	end)
end

return FeedbackBarHint
