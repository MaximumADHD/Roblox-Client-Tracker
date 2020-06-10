local Framework = script.Parent.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local UI = require(Framework.UI)
local RoundBox = UI.Decoration.RoundBox
local Button = UI.Button
local Container = UI.Container
local DropdownMenu = UI.DropdownMenu
local TextLabel = UI.Decoration.TextLabel

local Example = Roact.PureComponent:extend(script.Parent.Name .. "Example")

function Example:init()
	self.state = {
		showDropdown = false,
		currentText = "",
	}

	self.toggleDropdown = function()
		local showDropdown = self.state.showDropdown
		self:setState({
			showDropdown = not showDropdown,
		})
	end

	self.hideDropdown = function()
		self:setState({
			showDropdown = false,
		})
	end

	self.selectText = function(txt)
		self:setState({
			currentText = txt,
			showDropdown = false,
		})
	end
end

function Example:render()
	return Roact.createElement(Container, {
		Size = UDim2.new(0, 300, 0, 300),
		Background = RoundBox,
		BackgroundStyle = {
			Color = Color3.new(1, 0, 0),
		}
	}, {
		Text = Roact.createElement(TextLabel, {
			Text = self.state.currentText,
			Size = UDim2.new(1, -50, 0, 32),
		}),
		Button = Roact.createElement(Button, {
			Style = "Round",
			Text = "...",
			Position = UDim2.new(1, -42, 0, 0),
			Size = UDim2.new(0, 32, 0, 32),
			OnClick = self.toggleDropdown,
		}, {
			DropdownMenu = Roact.createElement(DropdownMenu, {
				ShouldShow = self.state.showDropdown,
				Size = UDim2.fromOffset(300, 240),
				Items = {
					"The first element",
					"The second",
					"A really long element",
					"A tiny one",
					"The fifth one",
					"The last one",
				},

				OnItemActivated = self.selectText,
				
				OnFocusLost = self.hideDropdown,
			}),
		})
	})
end

return Example