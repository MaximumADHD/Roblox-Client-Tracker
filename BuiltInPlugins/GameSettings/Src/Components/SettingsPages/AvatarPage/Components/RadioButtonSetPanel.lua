local Plugin = script.Parent.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local RoactStudioWidgets = Plugin.RoactStudioWidgets

local RadioButtonSet = require(RoactStudioWidgets.RadioButtonSet)

local RadioButtonSetPanel = Roact.Component:extend("ComponentRadioButtonSetPanel")

function RadioButtonSetPanel:render()
	local isVisible = nil == self.props.IsVisible and true or self.props.IsVisible
	if not isVisible then
		return Roact.createElement("Frame", {
			Size = UDim2.new(0, 0, 0, 0),
			BorderSizePixel = 0,
		})
	end

	return Roact.createElement(RadioButtonSet, {
		Title = self.props.Title,
		Buttons = self.props.Buttons,
		Enabled = self.props.Enabled,
		LayoutOrder = self.props.LayoutOrder,
		Selected = self.props.Selected,
		SubDescription = self.props.SubDescription,
		SelectionChanged = self.props.SelectionChanged,
		Mouse = self.props.Mouse
	})
end

return RadioButtonSetPanel