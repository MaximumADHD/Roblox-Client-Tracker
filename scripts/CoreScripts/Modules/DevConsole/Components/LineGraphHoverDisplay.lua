local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Packages.Roact)

local Constants = require(script.Parent.Parent.Constants)
local HOVER_LINE_COLOR = Constants.Color.HoverGreen
local LINE_WIDTH = Constants.GeneralFormatting.LineWidth
local TEXT_PADDING = Constants.Graph.TextPadding
local GRAPH_Y_INNER_PADDING = Constants.Graph.InnerPaddingY

return function(props)
	local hoverLineX = props.hoverLineX
	local hoverLineY = props.hoverLineY

	local hoverValX = props.hoverValX
	local hoverValY = props.hoverValY

	local stringFormatX = props.stringFormatX
	local stringFormatY = props.stringFormatY

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
	}, {
		hoverLine = Roact.createElement("Frame", {
			Size = UDim2.new(0, LINE_WIDTH, 1, 0),
			Position = UDim2.new(0, hoverLineX, 0, 0),
			BackgroundColor3 = HOVER_LINE_COLOR,
			BorderSizePixel = 0,
		}),

		HoverHorizontal = Roact.createElement("Frame", {
			Size = UDim2.new(0, hoverLineX + TEXT_PADDING, 0, LINE_WIDTH),
			Position = UDim2.new(0, -TEXT_PADDING, 1 - GRAPH_Y_INNER_PADDING, -hoverLineY),
			BackgroundColor3 = HOVER_LINE_COLOR,
			BorderSizePixel = 0,
		}),

		HoverTextY = Roact.createElement("TextLabel", {
			Text = stringFormatY and stringFormatY(hoverValY) or hoverValY,
			TextColor3 = HOVER_LINE_COLOR,
			TextXAlignment = Enum.TextXAlignment.Right,

			Position = UDim2.new(0, -TEXT_PADDING - 2, 1 - GRAPH_Y_INNER_PADDING, -hoverLineY),
			BackgroundTransparency = 1,
		}),

		HoverTextX = Roact.createElement("TextLabel", {
			Text = stringFormatX and stringFormatX(hoverValX) or hoverValX,
			TextColor3 = HOVER_LINE_COLOR,
			TextXAlignment = Enum.TextXAlignment.Center,

			Position = UDim2.new(0, hoverLineX, 1, TEXT_PADDING),
			BackgroundTransparency = 1,
		}),
	})
end
