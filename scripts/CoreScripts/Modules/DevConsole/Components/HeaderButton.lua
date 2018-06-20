local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local Constants = require(script.Parent.Parent.Constants)
local textSize = Constants.DefaultFontSize.MainWindowHeader
local textColor = Constants.Color.Text

local function HeaderButton(props)
	local text = props.text
	local size = props.size
	local pos = props.pos
	local sortfunction = props.sortfunction

	return Roact.createElement("TextButton", {
		Text = text,
		TextSize = textSize,
		TextColor3 = textColor,
		TextXAlignment = Enum.TextXAlignment.Left,

		Size = size,
		Position = pos,
		BackgroundTransparency = 1,

		[Roact.Event.Activated] = sortfunction,
	})
end

return HeaderButton