local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local Constants = require(script.Parent.Parent.Constants)
local textSize = Constants.DefaultFontSize.MainWindow
local textColor = Constants.Color.Text

local function CellLabel(props)
	local text = props.text
	local size = props.size
	local pos = props.pos

	return Roact.createElement("TextLabel",{
		Text = text,
		TextSize = textSize,
		TextColor3 = textColor,
		TextXAlignment = Enum.TextXAlignment.Left,

		Size = size,
		Position = pos,
		BackgroundTransparency = 1,
	})
end

return CellLabel