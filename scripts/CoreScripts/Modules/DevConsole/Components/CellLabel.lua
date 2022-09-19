local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local Constants = require(script.Parent.Parent.Constants)
local TEXT_SIZE = Constants.DefaultFontSize.MainWindow
local TEXT_COLOR = Constants.Color.Text
local MAIN_FONT = Constants.Font.MainWindow
local MAIN_FONT_BOLD = Constants.Font.MainWindowBold

export type Props = {
	text: string,
	size: UDim2,
	pos: UDim2,
	layoutOrder: number?,
	bold: boolean?
}

local function CellLabel(props: Props)
	local text = props.text
	local size = props.size
	local pos = props.pos
	local bold = props.bold
	local layoutOrder = props.layoutOrder

	return Roact.createElement("TextLabel", {
		Text = text,
		TextSize = TEXT_SIZE,
		TextColor3 = TEXT_COLOR,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextWrapped = true,
		Font = bold and MAIN_FONT_BOLD or MAIN_FONT,

		Size = size,
		Position = pos,
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	})
end

return CellLabel
