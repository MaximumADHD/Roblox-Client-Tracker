local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local Constants = require(script.Parent.Parent.Constants)
local LineGraphHeight = Constants.GeneralFormatting.LineGraphHeight

local LineGraph = Roact.PureComponent:extend("LineGraph")

function LineGraph:render()
	return Roact.createElement("TextLabel", {
		Text = "I AM A LINEGRAPH",
		Size = UDim2.new(1, 0, 0, LineGraphHeight),
		BackgroundColor3 = Constants.Color.TextBoxGray,
		BorderColor3 = Constants.Color.BorderGray,
	})
end

return LineGraph