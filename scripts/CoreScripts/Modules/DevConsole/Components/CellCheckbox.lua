local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local Roact = require(CorePackages.Roact)

local Constants = require(script.Parent.Parent.Constants)
local TEXT_SIZE = Constants.DefaultFontSize.MainWindow
local TEXT_COLOR = Constants.Color.Text
local MAIN_FONT = Constants.Font.MainWindow
local MAIN_FONT_BOLD = Constants.Font.MainWindowBold
local CHECK_BOX_HEIGHT = Constants.UtilityBarFormatting.CheckBoxHeight
local PADDING = Constants.UtilityBarFormatting.CheckBoxInnerPadding
local FRAME_HEIGHT = 2

export type Props = {
	name: string?,
	isSelected: boolean?,
	size: UDim2?,
	pos: UDim2?,
	LayoutOrder: number?,
	OnCheckBoxClicked: (name: string?, selected: boolean) -> (),
}

local function CellCheckbox(props: Props)
	local isSelected = props.isSelected
	local size = props.size
	local pos = props.pos
	local layoutOrder = props.LayoutOrder

	local selectedColor = Constants.Color.SelectedBlue
	local unselectedColor = Constants.Color.UnselectedGray

	-- this can be replaced with default values once that releases
	local image = ""
	local borderSize = 1
	local backgroundColor = unselectedColor

	if isSelected then
		image = Constants.Image.Check
		borderSize = 0
		backgroundColor = selectedColor
	end

	local onActivated = React.useCallback(function()
		props.OnCheckBoxClicked(props.name, not isSelected)
	end, {props.OnCheckBoxClicked, props.name, isSelected} :: {any})

	return Roact.createElement("ImageButton", {
		Size = size,
		Position = pos,
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,

		[Roact.Event.Activated] = onActivated,
	}, {
		Icon = Roact.createElement("ImageLabel", {
			Image = image,
			Size = UDim2.new(0, CHECK_BOX_HEIGHT, 0, CHECK_BOX_HEIGHT),
			Position = UDim2.new(0, 0, .5, -CHECK_BOX_HEIGHT / 2),
			BackgroundColor3 = backgroundColor,
			BackgroundTransparency = 0,
			BorderColor3 = Constants.Color.Text,
			BorderSizePixel = borderSize,
		}),
	})
end

return CellCheckbox
