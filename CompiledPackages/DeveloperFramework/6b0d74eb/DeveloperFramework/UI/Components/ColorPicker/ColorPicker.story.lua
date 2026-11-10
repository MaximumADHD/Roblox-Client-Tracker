local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local ColorPicker = require(Framework.UI.Components.ColorPicker)
local Pane = require(Framework.UI.Components.Pane)
local Button = require(Framework.UI.Components.DEPRECATED_Button)

local Story = Roact.PureComponent:extend("ColorPickerStory")

function Story:init()
	self.state = {
		Color = Color3.new(1, 0, 0),
	}
	self.onChanged = function(value: Color3)
		print("color changed to ", value)
		self:setState({
			Color = value,
		})
	end
end

function Story:render()
	local state = self.state

	return Roact.createElement(Pane, {
		Size = UDim2.new(1, 0, 0, 350),
		Layout = Enum.FillDirection.Vertical,
	}, {
		Button1 = Roact.createElement(Button, {
			Text = "Reset to red",
			LayoutOrder = 1,
			Size = UDim2.new(1, 0, 0, 25),
			OnClick = function()
				self.onChanged(Color3.new(1, 0, 0))
			end,
		}),
		Button2 = Roact.createElement(Button, {
			Text = "Reset to blue",
			LayoutOrder = 2,
			Size = UDim2.new(1, 0, 0, 25),
			OnClick = function()
				self.onChanged(Color3.new(0, 0, 1))
			end,
		}),
		ColorPicker = Roact.createElement(ColorPicker, {
			LayoutOrder = 3,
			Size = UDim2.new(1, 0, 0, 300),
			Color = state.Color,
			OnColorChanged = self.onChanged,
		}),
	})
end

return {
	stories = {
		{
			name = "Default",
			summary = "A color picker for users to view and edit a color3 value in a variety of ways.",
			story = Story,
		},
	},
}
