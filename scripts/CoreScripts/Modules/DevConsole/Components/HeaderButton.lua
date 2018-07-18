local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local Constants = require(script.Parent.Parent.Constants)
local TEXT_SIZE = Constants.DefaultFontSize.MainWindowHeader
local TEXT_COLOR = Constants.Color.Text

local function HeaderButton(props)
	local text = props.text
	local size = props.size
	local pos = props.pos
	local sortfunction = props.sortfunction

	return Roact.createElement("TextButton", {
		Text = text,
		TextSize = TEXT_SIZE,
		TextColor3 = TEXT_COLOR,
		TextXAlignment = Enum.TextXAlignment.Left,

		Size = size,
		Position = pos,
		BackgroundTransparency = 1,

		[Roact.Event.Activated] = function()
			sortfunction(text)
		end,
	})
end

return HeaderButton