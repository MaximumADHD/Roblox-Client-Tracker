local Framework = script.Parent.Parent.Parent
local Roact = require(Framework.Parent.Roact)

local UI = require(Framework.UI)
local Pane = UI.Pane
local ToggleButton = UI.ToggleButton

local ExampleToggleButton = Roact.PureComponent:extend("ExampleToggleButton")

function ExampleToggleButton:init()
	self.state = {
		toggleOn = true,
	}
	self.onToggle = function()
		self:setState({
			toggleOn = (not self.state.toggleOn),
		})
	end
end

function ExampleToggleButton:render()
	return  Roact.createElement(Pane, {
		Layout = Enum.FillDirection.Vertical,
		AutomaticSize = Enum.AutomaticSize.Y,
		Padding = 10,
		Spacing = 15,
	}, {
		DisabledToggle = Roact.createElement(ToggleButton, {
			Disabled = true,
			Selected = false,
			LayoutOrder = 0,
			OnClick = self.onToggle,
			Size = UDim2.fromOffset(40, 24),
		}),
		ToggleButton = Roact.createElement(ToggleButton, {
			Disabled = false,
			Selected = self.state.toggleOn,
			LayoutOrder = 1,
			OnClick = self.onToggle,
			Size = UDim2.fromOffset(40, 24),
		}),
	})
end

return ExampleToggleButton
