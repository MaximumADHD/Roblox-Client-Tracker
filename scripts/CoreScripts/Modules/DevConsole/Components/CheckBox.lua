local CorePackages = game:GetService("CorePackages")
local TextService = game:GetService("TextService")
local Roact = require(CorePackages.Roact)

local Constants = require(script.Parent.Parent.Constants)
local PADDING = Constants.UtilityBarFormatting.CheckBoxInnerPadding

local CheckBox = Roact.Component:extend("CheckBox")

function CheckBox:render()
	local checkBoxHeight = self.props.checkBoxHeight
	local frameHeight = self.props.frameHeight
	local layoutOrder = self.props.layoutOrder

	local name = self.props.name
	local font = self.props.font
	local fontSize = self.props.fontSize

	local isSelected = self.props.isSelected
	local selectedColor = self.props.selectedColor
	local unselectedColor = self.props.unselectedColor
	local onCheckBoxClicked = self.props.onCheckBoxClicked

	-- this can be replaced with default values once that releases
	local image = ""
	local borderSize = 1
	local backgroundColor = unselectedColor

	if isSelected then
		image = Constants.Image.Check
		borderSize = 0
		backgroundColor = selectedColor
	end

	local textVector = TextService:GetTextSize(name, fontSize, font, Vector2.new(0, frameHeight))
	local textWidth = textVector.X

	return Roact.createElement("ImageButton",{
		Size = UDim2.new(0, checkBoxHeight + textWidth + (PADDING * 2), 0, frameHeight),
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,

		[Roact.Event.Activated] = function(rbx)
			onCheckBoxClicked(name, not isSelected)
		end,
	}, {
		Icon = Roact.createElement("ImageLabel", {
			Image = image,
			Size = UDim2.new(0, checkBoxHeight, 0, checkBoxHeight),
			Position = UDim2.new(0, 0, .5, -checkBoxHeight / 2),
			BackgroundColor3 = backgroundColor,
			BackgroundTransparency = 0,
			BorderColor3 = Constants.Color.Text,
			BorderSizePixel = borderSize,
		}),
		Text = Roact.createElement("TextLabel",{
			Text = name,
			TextColor3 = Constants.Color.Text,
			TextXAlignment = Enum.TextXAlignment.Left,
			Font = font,
			TextSize = fontSize,

			Size = UDim2.new(1, -frameHeight, 1, 0),
			Position = UDim2.new(0, checkBoxHeight + PADDING, 0, 0),
			BackgroundTransparency = 1,
		})
	})
end

return CheckBox