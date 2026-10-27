local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local Pane = require(Framework.UI.Components.Pane)
local DropdownMenu = require(Framework.UI.Components.DropdownMenu)

local Example = Roact.PureComponent:extend(script.Parent.Name .. "Example")

function Example:init()
	self.state = {
		Default = false,
		DropFromSide = false,
	}
	self.selectItem = function(key: "Default" | "DropFromSide")
		self:setState({
			[key] = false,
		})
	end
	self.openMenu = function(key: "Default" | "DropFromSide")
		self:setState({
			[key] = true,
		})
	end
	self.closeMenu = function(key: "Default" | "DropFromSide")
		self:setState({
			[key] = false,
		})
	end
end

function Example:render()
	return Roact.createElement(Pane, {
		AutomaticSize = Enum.AutomaticSize.XY,
		Size = UDim2.fromScale(0, 0),
	}, {
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Vertical,
			Padding = UDim.new(0, 16),
		}),
		Default = Roact.createElement("Frame", {
			Size = UDim2.new(0, 240, 0, 32),
		}, {
			Menu = Roact.createElement(DropdownMenu, {
				Hide = not self.state.Default,
				Items = {
					"The first element",
					"The second",
					"A really long element",
					"A tiny one",
					"The fifth one",
					"The last one",
				},
				OnItemActivated = function()
					self.selectItem("Default")
				end,
				OnFocusLost = function()
					self.closeMenu("Default")
				end,
			}),
			Button = Roact.createElement("TextButton", {
				Text = "Open",
				Position = UDim2.new(0, 250, 0, 0),
				Size = UDim2.new(0, 40, 1, 0),
				[Roact.Event.Activated] = function()
					self.openMenu("Default")
				end,
			}),
		}),
		DropFromSide = Roact.createElement("Frame", {
			Size = UDim2.new(0, 240, 0, 32),
		}, {
			Menu = Roact.createElement(DropdownMenu, {
				Hide = not self.state.DropFromSide,
				Items = {
					"The first element",
					"The second",
					"A really long element",
					"A tiny one",
					"The fifth one",
					"The last one",
				},
				OnItemActivated = function()
					self.selectItem("DropFromSide")
				end,
				OnFocusLost = function()
					self.closeMenu("DropFromSide")
				end,
				DropFromSide = true,
			}),
			Button = Roact.createElement("TextButton", {
				Text = "Open to the side",
				Position = UDim2.new(0, 250, 0, 0),
				Size = UDim2.new(0, 90, 1, 0),
				[Roact.Event.Activated] = function()
					self.openMenu("DropFromSide")
				end,
			}),
		}),
	})
end

return Example
