local CorePackages = game:GetService("CorePackages")
local TextService = game:GetService("TextService")
local Roact = require(CorePackages.Packages.Roact)

local Constants = require(script.Parent.Parent.Constants)
local Checkbox = require(script.Parent.Checkbox)
local PADDING = Constants.UtilityBarFormatting.CheckboxInnerPadding

local LabeledCheckbox = Roact.Component:extend("LabeledCheckbox")

function LabeledCheckbox:render()
	local checkboxHeight = self.props.checkboxHeight
	local frameHeight = self.props.frameHeight
	local layoutOrder = self.props.layoutOrder

	local name = self.props.name
	local font = self.props.font
	local fontSize = self.props.fontSize

	local isSelected = self.props.isSelected
	local selectedColor = self.props.selectedColor
	local unselectedColor = self.props.unselectedColor
	local onCheckboxClicked = self.props.onCheckboxClicked

	local textVector = TextService:GetTextSize(name, fontSize, font, Vector2.new(0, frameHeight))
	local textWidth = textVector.X

	return Roact.createElement("Frame", {
		Size = UDim2.new(0, checkboxHeight + textWidth + (PADDING * 2), 0, frameHeight),
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	}, {
		Checkbox = Roact.createElement(Checkbox, {
			Name = name,
			IsSelected = isSelected,
			SelectedColor = selectedColor,
			UnselectedColor = unselectedColor,
			Size = UDim2.new(0, checkboxHeight, 0, checkboxHeight),
			Position = UDim2.new(0, 0, 0.5, -checkboxHeight / 2),
			OnSelectedStateChanged = onCheckboxClicked,
		}),
		Text = Roact.createElement("TextLabel", {
			Text = name,
			TextColor3 = Constants.Color.Text,
			TextXAlignment = Enum.TextXAlignment.Left,
			Font = font,
			TextSize = fontSize,

			Size = UDim2.new(1, -frameHeight, 1, 0),
			Position = UDim2.new(0, checkboxHeight + PADDING, 0, 0),
			BackgroundTransparency = 1,
		}),
	})
end

return LabeledCheckbox
