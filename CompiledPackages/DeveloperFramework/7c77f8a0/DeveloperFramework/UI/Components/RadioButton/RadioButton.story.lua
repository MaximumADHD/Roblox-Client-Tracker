local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

local Pane = require(Framework.UI.Components.Pane)
local RadioButton = require(Framework.UI.Components.RadioButton)

-- Mount and display a dialog
local RadioButtons = Roact.PureComponent:extend("RadioButtons")

function RadioButtons:init()
	self.state = {
		isSelected = true,
	}
	self.onClick = function()
		self:setState({
			isSelected = not self.state.isSelected,
		})
	end
end

function RadioButtons:render()
	return Roact.createElement(Pane, {
		Layout = Enum.FillDirection.Vertical,
		AutomaticSize = Enum.AutomaticSize.Y,
		Padding = 10,
		Spacing = 15,
	}, {
		DisabledRadioButton = Roact.createElement(RadioButton, {
			Disabled = true,
			Key = "KEY1",
			LayoutOrder = 0,
			OnClick = self.onClick,
			Selected = false,
			Text = "Disabled",
		}),
		SelectedRadioButton = Roact.createElement(RadioButton, {
			Disabled = false,
			Key = "KEY2",
			LayoutOrder = 1,
			OnClick = self.onClick,
			Selected = self.state.isSelected,
			Text = "Clickable",
		}),
	})
end

return RadioButtons
