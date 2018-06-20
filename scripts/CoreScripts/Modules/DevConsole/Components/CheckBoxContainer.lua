local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local Components = script.Parent.Parent.Components
local CheckBox = require(Components.CheckBox)

local Constants = require(script.Parent.Parent.Constants)

local CheckBoxContainer = Roact.PureComponent:extend("CheckBoxContainer")

function CheckBoxContainer:init()
	self.onCheckBoxClicked = function(field, newState)
		local onCheckBoxesChanged = self.props.onCheckBoxesChanged
		self:setState({
			[field] = newState
		})
		onCheckBoxesChanged(self.state)
	end

	if not self.props.boxNames then
		warn("CheckBoxContainer must be passed a list of Box Names or else it only creates an empty frame")
	end
end

function CheckBoxContainer:render()
	local elements = {}
	local size = self.props.size
	local pos = self.props.pos

	local boxOrder = self.props.boxNames
	local boxStates = self.state

	elements["CheckBoxLayout"] = Roact.createElement("UIListLayout", {
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		SortOrder = Enum.SortOrder.LayoutOrder,
		VerticalAlignment = Enum.VerticalAlignment.Top,
		FillDirection = Enum.FillDirection.Horizontal,
	})

	for layoutOrder, name in ipairs(boxOrder) do
		elements[name] = Roact.createElement(CheckBox, {
			name = name,
			font = Constants.Font.UtilBar,
			fontSize = Constants.DefaultFontSize.UtilBar,
			checkBoxHeight = Constants.UtilityBarFormatting.CheckBoxHeight,
			frameHeight = Constants.UtilityBarFormatting.FrameHeight,
			layoutOrder = layoutOrder,

			isSelected = boxStates[name],
			selectedColor = Constants.Color.SelectedBlue,
			unselectedColor = Constants.Color.UnselectedGray,

			onCheckBoxClicked = self.onCheckBoxClicked,
		})
	end

	return Roact.createElement("Frame",{
		Size = size,
		Position = pos,
		BackgroundTransparency = 1,
	}, elements)
end

return CheckBoxContainer