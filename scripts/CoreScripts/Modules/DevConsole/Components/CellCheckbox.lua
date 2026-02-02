local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Packages.Roact)

local Constants = require(script.Parent.Parent.Constants)
local Checkbox = require(script.Parent.Checkbox)
local TEXT_SIZE = Constants.DefaultFontSize.MainWindow
local TEXT_COLOR = Constants.Color.Text
local MAIN_FONT = Constants.Font.MainWindow
local MAIN_FONT_BOLD = Constants.Font.MainWindowBold
local CHECK_BOX_HEIGHT = Constants.UtilityBarFormatting.CheckboxHeight
local PADDING = Constants.UtilityBarFormatting.CheckboxInnerPadding
local FRAME_HEIGHT = 2

export type Props = {
	name: string?,
	isSelected: boolean?,
	size: UDim2?,
	pos: UDim2?,
	LayoutOrder: number?,
	OnCheckboxClicked: (name: string?, selected: boolean) -> (),
}

local function CellCheckbox(props: Props)
	local isSelected = props.isSelected
	local size = props.size
	local pos = props.pos
	local layoutOrder = props.LayoutOrder

	return Roact.createElement("Frame", {
		Size = size,
		Position = pos,
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	}, {
		Checkbox = Roact.createElement(Checkbox, {
			Name = props.name,
			IsSelected = isSelected,
			Size = UDim2.new(0, CHECK_BOX_HEIGHT, 0, CHECK_BOX_HEIGHT),
			Position = UDim2.new(0, 0, 0.5, -CHECK_BOX_HEIGHT / 2),
			OnSelectedStateChanged = props.OnCheckboxClicked,
		}),
	})
end

return CellCheckbox
