local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local FeatureDisabledPage = Roact.Component:extend("FeatureDisabledPage")

function FeatureDisabledPage:render()
	local style = self.props.Stylizer
	local disableReason = self.props.Text

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
	}, {
		UIPadding = Roact.createElement("UIPadding", {
			PaddingBottom = UDim.new(0, 16),
			PaddingTop = UDim.new(0, 16),
			PaddingLeft = UDim.new(0, 16),
			PaddingRight = UDim.new(0, 16),
		}),

		Error = Roact.createElement("TextLabel", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,

			Text = disableReason,
			Font = style.labels.MainFont,
			TextColor3 = style.labels.MainText,
			TextSize = 18,

			TextXAlignment = Enum.TextXAlignment.Center,
			TextYAlignment = Enum.TextYAlignment.Center,
			TextWrapped = true,
		}),
	})
end

FeatureDisabledPage = withContext({
	Stylizer = ContextServices.Stylizer,
})(FeatureDisabledPage)

return FeatureDisabledPage
