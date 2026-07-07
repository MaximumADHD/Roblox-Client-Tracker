local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local PropertyCell = require(Framework.UI.Components.PropertyCell)

local Story = Roact.PureComponent:extend("PropertyCellStory")

function Story:init()
	self.state = {
		value = self.props.InitialValue,
	}
	self.onChanged = function(value)
		self:setState({
			value = value,
		})
	end
end

function Story:render()
	local props = self.props
	local state = self.state
	return Roact.createElement(PropertyCell, {
		Disabled = props.Disabled,
		OnChanged = self.onChanged,
		Schema = props.Schema,
		Size = UDim2.fromOffset(300, 24),
		Tooltip = props.Tooltip,
		Value = state.value,
	})
end

return {
	controls = {
		Disabled = false,
	},
	stories = {
		{
			name = "Text",
			story = function(storyProps)
				return Roact.createElement(Story, {
					Disabled = storyProps.controls.Disabled,
					InitialValue = "A Button Label",
					Schema = {
						Type = "Text",
					},
					Tooltip = "A Text cell",
				})
			end,
		},
		{
			name = "Color",
			story = function(storyProps)
				return Roact.createElement(Story, {
					Disabled = storyProps.controls.Disabled,
					InitialValue = Color3.fromRGB(20, 160, 200),
					Schema = {
						Type = "Color",
					},
					Tooltip = "A Color cell",
				})
			end,
		},
		{
			name = "Checkbox",
			story = function(storyProps)
				return Roact.createElement(Story, {
					Disabled = storyProps.controls.Disabled,
					InitialValue = "",
					Schema = {
						Type = "Checkbox",
					},
					Tooltip = "A Checkbox cell",
				})
			end,
		},
		{
			name = "Slider",
			story = function(storyProps)
				return Roact.createElement(Story, {
					Disabled = storyProps.controls.Disabled,
					InitialValue = 0.5,
					Schema = {
						Type = "Slider",
						Min = 0,
						Max = 1,
						SnapIncrement = 0.05,
						ShowInput = true,
					},
					Tooltip = "A Slider cell",
				})
			end,
		},
		{
			name = "Select",
			story = function(storyProps)
				return Roact.createElement(Story, {
					Disabled = storyProps.controls.Disabled,
					InitialValue = "SourceSans",
					Schema = {
						Type = "Select",
						Items = {
							{
								Id = "Gotham",
								Label = "Gotham",
							},
							{
								Id = "SourceSans",
								Label = "SourceSans",
							},
							{
								Id = "SourceSansBold",
								Label = "SourceSansBold",
							},
						},
					},
					Tooltip = "A Select cell",
				})
			end,
		},
		{
			name = "Single Select Button",
			story = function(storyProps)
				return Roact.createElement(Story, {
					Disabled = storyProps.controls.Disabled,
					IntialValue = "Left",
					Schema = {
						Type = "SingleSelectButton",
						Items = {
							{
								Id = "Left",
								Label = "Left",
							},
							{
								Id = "Center",
								Label = "Center",
							},
							{
								Id = "Right",
								Label = "Right",
							},
						},
					},
					Tooltip = "A Single Select Button cell",
				})
			end,
		},
		{
			name = "Vector2",
			story = function(storyProps)
				return Roact.createElement(Story, {
					Disabled = storyProps.controls.Disabled,
					InitialValue = Vector2.new(-3, 4.2),
					Schema = {
						Type = "Vector",
						Components = { "X", "Y" },
						GetValue = function(components: { number }): Vector2
							return Vector2.new(components[1], components[2])
						end,
						GetComponents = function(value: Vector2): { number }
							return { value.X, value.Y }
						end,
					},
					Tooltip = "A Vector2 cell",
				})
			end,
		},
		{
			name = "UDim2",
			story = function(storyProps)
				return Roact.createElement(Story, {
					Disabled = storyProps.controls.Disabled,
					InitialValue = UDim2.new(1, 0, 1, -30),
					Schema = {
						Type = "Vector",
						Components = { "X", "", "Y", "" },
						GetValue = function(components: { number }): UDim2
							return UDim2.new(components[1], components[2], components[3], components[4])
						end,
						GetComponents = function(value: UDim2): { number }
							return { value.X.Scale, value.X.Offset, value.Y.Scale, value.Y.Offset }
						end,
					},
					Tooltip = "A UDim2 cell",
				})
			end,
		},
	},
}
