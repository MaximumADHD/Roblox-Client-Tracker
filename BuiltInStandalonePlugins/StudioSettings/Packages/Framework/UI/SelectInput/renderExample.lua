local Framework = script.Parent.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local UI = require(Framework.UI)
local SelectInput = UI.SelectInput

local Example = Roact.PureComponent:extend(script.Parent.Name .. "Example")

function Example:init()
	self.state = {
		currentIndex = nil,
	}
	self.selectItem = function(value, index)
		self:setState({
			currentIndex = index,
		})
	end
end

function Example:render()
	return Roact.createElement(SelectInput, {
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
		OnItemActivated = self.selectItem,
	})
end

return Example