local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

local Pane = require(Framework.UI.Components.Pane)
local ToggleButton = require(Framework.UI.Components.ToggleButton)

local ExampleToggleButton = Roact.PureComponent:extend("ExampleToggleButton")

function ExampleToggleButton:init(props)
	self.state = {
		toggleOn = props.Selected,
	}
	self.onToggle = function()
		self:setState({
			toggleOn = not self.state.toggleOn,
		})
	end
end

function ExampleToggleButton:render()
	local styleValue = if self.props.Style then self.props.Style else nil

	return Roact.createElement(Pane, {
		Layout = Enum.FillDirection.Vertical,
		AutomaticSize = Enum.AutomaticSize.Y,
		Padding = 10,
		Spacing = 15,
	}, {
		ToggleButton = Roact.createElement(ToggleButton, {
			Style = styleValue,
			Disabled = self.props.Disabled,
			Selected = self.state.toggleOn,
			LayoutOrder = 1,
			OnClick = self.onToggle,
		}),
	})
end

return {
	stories = {
		DisabledAndNotSelected = Roact.createElement(ExampleToggleButton, {
			Disabled = true,
			Selected = false,
			LayoutOrder = 0,
		}),
		DisabledAndSelected = Roact.createElement(ExampleToggleButton, {
			Disabled = true,
			Selected = true,
			LayoutOrder = 0,
		}),
		NotSelected = Roact.createElement(ExampleToggleButton, {
			Disabled = false,
			Selected = false,
			LayoutOrder = 0,
		}),
		Selected = Roact.createElement(ExampleToggleButton, {
			Disabled = false,
			Selected = true,
			LayoutOrder = 0,
		}),
		UseCheckboxStyle = Roact.createElement(ExampleToggleButton, {
			Style = "Checkbox",
		}),
		UseEyeIconStyle = Roact.createElement(ExampleToggleButton, {
			Style = "EyeIcon",
		}),
	},
}
