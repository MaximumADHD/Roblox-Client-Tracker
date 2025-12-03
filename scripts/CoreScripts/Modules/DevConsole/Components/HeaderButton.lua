local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Packages.Roact)

local Constants = require(script.Parent.Parent.Constants)
local FONT = Constants.Font.MainWindowHeader
local TEXT_SIZE = Constants.DefaultFontSize.MainWindowHeader
local TEXT_COLOR = Constants.Color.Text

type SortFunction = (text: string) -> ()

export type Props = {
	text: string,
	size: UDim2,
	pos: UDim2,
	sortfunction: SortFunction?,
}

local function HeaderButton(props: Props)
	local text = props.text
	local size = props.size
	local pos = props.pos
	local sortfunction = props.sortfunction

	return Roact.createElement("TextButton", {
		Text = text,
		TextSize = TEXT_SIZE,
		TextColor3 = TEXT_COLOR,
		Font = FONT,
		TextXAlignment = Enum.TextXAlignment.Left,

		Size = size,
		Position = pos,
		BackgroundTransparency = 1,

		[Roact.Event.Activated] = function()
			if sortfunction then
				sortfunction(text)
			end
		end,
	})
end

return HeaderButton
