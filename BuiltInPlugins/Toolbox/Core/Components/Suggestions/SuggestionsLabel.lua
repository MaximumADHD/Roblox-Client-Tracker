local Plugin = script.Parent.Parent.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local Constants = require(Plugin.Core.Util.Constants)

local withTheme = require(Plugin.Core.Consumers.withTheme)

local function SuggestionsLabel(props)
	return withTheme(function(theme)
		local text = props.Text or ""
		local textWidth = Constants.getTextSize(text).x

		local suggestionsTheme = theme.suggestionsComponent

		return Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			Size = UDim2.new(0, textWidth, 1, 0),
			Text = text,
			Font = Constants.FONT,
			TextSize = Constants.SUGGESTIONS_FONT_SIZE,
			TextColor3 = suggestionsTheme.labelTextColor,
			LayoutOrder = 0,
			TextXAlignment = Enum.TextXAlignment.Left,
		})
	end)
end

return SuggestionsLabel
