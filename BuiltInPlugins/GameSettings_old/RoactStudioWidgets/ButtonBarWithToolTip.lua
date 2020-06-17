--[[
	A ButtonBar with a tooltip for each button.

	Props:
		string Title
		int LayourOrder
		table ButtonBarButtons = The buttons to add to this button bar (each must contain a Value field which is a table which contains a ToolTip field).
		function ButtonClicked = called with the Value field of the initializing ButtonBar Button
]]

local Roact = require(script.Parent.Internal.RequireRoact)
local ThemeChangeListener = require(script.Parent.Internal.ThemeChangeListener)
local ButtonBar = require(script.Parent.ButtonBar)
local TextWidget = require(script.Parent.Text)

local ButtonBarWithToolTip = Roact.PureComponent:extend("ButtonBarWithToolTip")

function ButtonBarWithToolTip:init()
	self.state = {
		ToolTip = ""
	}
end

function ButtonBarWithToolTip:render()
	local function renderInternal()
		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 90),
			LayoutOrder = self.props.LayoutOrder,
			BackgroundTransparency = 1,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				Padding = UDim.new(0, 15),
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Vertical,
			}),
			Roact.createElement(ButtonBar, {
				LayoutOrder = 1,
				Padding = 10,
				Buttons = self.props.ButtonBarButtons,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				Title = self.props.Title,
				ButtonClicked = function(value)
					self.props.ButtonClicked(value)
				end,
				HoverChanged = function(value, hovering)
					self:setState({
						ToolTip = hovering and value.ToolTip or "",
					})
				end
			}),

			Roact.createElement(TextWidget, {
				Enabled = true,
				LayoutOrder = 2,
				Size = UDim2.new(1, 0, 0, 10),
				Text = self.state.ToolTip,
			})
		})
	end

	return Roact.createElement(ThemeChangeListener, {
		render = renderInternal,
	})
end

return ButtonBarWithToolTip