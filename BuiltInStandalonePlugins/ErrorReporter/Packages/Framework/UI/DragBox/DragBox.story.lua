local Framework = script.Parent.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local DragBox = require(Framework.UI.DragBox)

local UI = require(Framework.UI)
local Pane = UI.Pane

local ExampleDragBox = Roact.PureComponent:extend("ExampleDragBox")

local currentDragboxValue = Vector2.new(0,0)

function formatNumber(number)
	local precision = 100
	return tostring(math.floor(.5 + number * precision) / precision)
end

function getTootipText(vector)
	return "test dragbox: X: "..formatNumber(vector.X)..",Y: "..formatNumber(vector.Y)						
end

function ExampleDragBox:init()
	self.state = {
		MinX = -1,
		MaxX = 1,
		MinY = -1,
		MaxY = 1,
		Value = Vector2.new(0,0),
	}
	self.setValue = function(newValue)
		currentDragboxValue = Vector2.new(newValue.X, newValue.Y)
		self:setState({
			Tooltip = getTootipText(currentDragboxValue),
			Value = newValue
		})
	end
end

function ExampleDragBox:render()
	return Roact.createElement(Pane, {
		Layout = Enum.FillDirection.Vertical,
		AutomaticSize = Enum.AutomaticSize.Y,
		Padding = 10,
		Spacing = 15,
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			Padding = UDim.new(0, 10),
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		DragBox = Roact.createElement(DragBox, {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Disabled = false,
			MinX = -1,
			MaxX = 1,
			MinY = -1,
			MaxY = 1,
			Tooltip = getTootipText(currentDragboxValue),
			Value = Vector2.new(currentDragboxValue.X, currentDragboxValue.Y),
			OnValueChanged = self.setValue,
			Size = UDim2.new(0, 200, 0, 60),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			VerticalDragTolerance = 300,
		}),
		DisabledDragBox = Roact.createElement(DragBox, {
			Disabled = true,
			MinX = -1,
			MaxX = 1,
			MinY = -1,
			MaxY = 1,
			Value = Vector2.new(0,0),
			OnValueChanged = function() end,
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Size = UDim2.new(0, 200, 0, 20),
		}),
	})
end

return ExampleDragBox
