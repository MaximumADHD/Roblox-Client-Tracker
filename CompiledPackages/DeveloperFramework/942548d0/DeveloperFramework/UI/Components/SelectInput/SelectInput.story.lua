local Framework = script:FindFirstAncestor("UI").Parent
local Cryo = require(Framework.Parent.Cryo)
local Roact = require(Framework.Parent.Roact)
local SelectInput = require(Framework.UI.Components.SelectInput)

local SelectInputExample = Roact.PureComponent:extend("SelectInputExample")

function SelectInputExample:init()
	self.state = {
		currentIndex = nil,
	}
	self.selectItem = function(_value, index)
		self:setState({
			currentIndex = index,
		})
	end
end

function SelectInputExample:render()
	return Roact.createElement(
		SelectInput,
		Cryo.Dictionary.join({
			PlaceholderText = "Choose an item...",
			SelectedIndex = self.state.currentIndex,
			Items = {
				"The first element",
				"The second",
				"A really long element",
				"A tiny one",
				"The fifth one",
				"The last one",
			},
			Icons = {
				"rbxasset://textures/ui/common/robux_color@2x.png",
			},
			OnItemActivated = self.selectItem,
		}, self.props)
	)
end

return {
	controls = {
		isModern = false,
	},
	stories = {
		{
			name = "Default",
			story = function(storyProps)
				return Roact.createElement(
					SelectInputExample,
					{ Variant = if storyProps.controls.isModern then "modern" else nil }
				)
			end,
		},

		{
			name = "ErrorText",
			story = function(storyProps)
				return Roact.createElement(SelectInputExample, {
					ErrorText = "PC LOAD LETTER",
					Variant = if storyProps.controls.isModern then "modern" else nil,
				})
			end,
		},

		{
			name = "ExpandIcon",
			summary = "A custom image path can be passed in to use for the expand icon, instead of the default caret",
			story = function(storyProps)
				return Roact.createElement(SelectInputExample, {
					ExpandIcon = "rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/OptionsDots.png",
					Variant = if storyProps.controls.isModern then "modern" else nil,
				})
			end,
		},

		{
			name = "ShowSelection",
			summary = "By default, SelectInput shows the selected element in a text button. This can be toggled off with ShowSelection",
			story = function(storyProps)
				return Roact.createElement(SelectInputExample, {
					ShowSelection = false,
					Size = UDim2.fromOffset(28, 28),
					Variant = if storyProps.controls.isModern then "modern" else nil,
				})
			end,
		},

		{
			name = "WithScroll",
			story = function(storyProps)
				return Roact.createElement(SelectInputExample, {
					Items = {
						"The first element",
						"The second",
						"A really long element",
						"A tiny one",
						"The fifth one",
						"The last one",
						"The last one",
						"The last one",
						"The last one",
						"The last one",
						"The last one",
						"The last one",
						"The last one",
						"The last one",
					},
					Variant = if storyProps.controls.isModern then "modern" else nil,
				})
			end,
		},
	},
}
