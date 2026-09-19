local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local Slider = require(Framework.UI.Components.Slider)

local SliderStory = Roact.PureComponent:extend("SliderStory")

function SliderStory:init()
	self.state = {
		value = self.props.InitialValue,
	}
	self.onValueChanged = function(value: number)
		self:setState({
			value = value,
		})
	end
end

function SliderStory:render()
	local props = self.props
	return Roact.createElement(Slider, {
		Value = self.state.value,
		Min = props.Min,
		Max = props.Max,
		Disabled = props.Disabled,
		OnValueChanged = function(value)
			self.onValueChanged(value)
		end,
		ShowInput = props.ShowInput,
		Size = UDim2.fromOffset(300, 32),
		SnapIncrement = props.SnapIncrement,
		VerticalDragTolerance = 0,
	})
end

return {
	stories = {
		{
			name = "Slider",
			story = Roact.createElement(SliderStory, {
				InitialValue = 4,
				Min = 0,
				Max = 4,
				SnapIncrement = 1,
			}),
		},
		{
			name = "Slider with input",
			story = Roact.createElement(SliderStory, {
				InitialValue = 0.5,
				Min = 0,
				Max = 1,
				ShowInput = true,
				SnapIncrement = 0.05,
			}),
		},
		{
			name = "Disabled slider",
			story = Roact.createElement(SliderStory, {
				InitialValue = 8,
				Min = 0,
				Max = 10,
				SnapIncrement = 1,
				Disabled = true,
			}),
		},
	},
}
