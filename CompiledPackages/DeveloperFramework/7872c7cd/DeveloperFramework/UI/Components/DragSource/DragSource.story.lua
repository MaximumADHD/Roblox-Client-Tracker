local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

local Colors = require(Framework.Style.Colors)

local DragSource = require(Framework.UI.Components.DragSource)
local Pane = require(Framework.UI.Components.Pane)
local TextLabel = require(Framework.UI.Components.TextLabel)

local DragSourceStory = Roact.PureComponent:extend("DragSourceStory")

function DragSourceStory:init()
	self:setState({
		dragging = false,
	})

	self.onClick = function()
		print("DragSource clicked")
	end
	self.onDragBegan = function()
		self:setState({
			dragging = true,
		})
	end
	self.onDragEnded = function()
		self:setState({
			dragging = false,
		})
	end
end

function DragSourceStory:render()
	local backgroundColor
	local text
	if self.state.dragging then
		backgroundColor = Colors.Blue
		text = "Dragging"
	else
		backgroundColor = Colors.Gray_Mid
		text = "Drag Me"
	end

	return Roact.createElement(DragSource, {
		AutomaticSize = Enum.AutomaticSize.XY,
		OnDragBegan = self.onDragBegan,
		OnDragEnded = self.onDragEnded,
	}, {
		Pane = Roact.createElement(Pane, {
			BackgroundColor = backgroundColor,
			Size = UDim2.fromOffset(100, 60),
			Style = "Box",
		}, {
			Label = Roact.createElement(TextLabel, {
				Size = UDim2.new(1, 0, 1, 0),
				Text = text,
				TextColor = Colors.Black,
			}),
		}),
	})
end

return {
	stories = {
		{
			name = "Example",
			summary = "Wrap a TextLabel and update color and text on drag",
			story = DragSourceStory,
		},
	},
}
