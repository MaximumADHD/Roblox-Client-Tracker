local Roact = require(game:GetService("CorePackages").Roact)
local Theming = require(script.Parent.Parent.Theming)

local NumTranslationsLine = Roact.PureComponent:extend("NumTranslationsLine")

function NumTranslationsLine:render()
	local function isEnabled()
		return self.props.NumTranslations > 0 and self.props.Checked
	end

	return Theming.withTheme(function(theme)
		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 20),
			LayoutOrder = self.props.LayoutOrder,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
		}, {
			Label = Roact.createElement("TextLabel", {
				TextXAlignment = "Left",
				TextYAlignment = "Center",
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = UDim2.new(0, 100, 0, 20),
				Text = self.props.PreText.." "..tostring(self.props.NumTranslations),
				TextColor3 = isEnabled() and self.props.EnabledColor or self.props.DisabledColor,
			}),
		})
	end)
end

return NumTranslationsLine
