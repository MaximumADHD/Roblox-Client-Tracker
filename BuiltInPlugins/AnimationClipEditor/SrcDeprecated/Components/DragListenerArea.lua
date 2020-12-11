--[[
	An invisible area that the user can click on to initiate a drag.

	Props:
		UDim2 Size = The size of the area that is clickable to start dragging.
		Vector2 AnchorPoint = The pivot point of this component's size.
		string Cursor = The mouse cursor to display when the user hovers
			the mouse over this area.

		function OnDragBegan() = A callback for when user starts dragging
		function OnDragMoved(input) = A callback for when the user drags
			their mouse after clicking and holding on the area.
		function OnDragEnded() = A callback for when the user stops dragging.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local UILibrary = require(Plugin.UILibrary)
local DragTarget = UILibrary.Component.DragTarget

local Mouse = require(Plugin.SrcDeprecated.Context.Mouse)
local getMouse = Mouse.getMouse

local DragListenerArea = Roact.PureComponent:extend("DragListenerArea")

function DragListenerArea:init()
	self.state = {
		Dragging = false,
	}

	self.onMouseEnter = function()
		getMouse(self).pushCursor(self.props.Cursor)
	end

	self.onMouseLeave = function()
		if not self.state.Dragging then
			getMouse(self).popCursor()
		end
	end

	self.startDragging = function()
		if self.props.OnDragBegan then
			self.props.OnDragBegan()
		end
		self:setState({
			Dragging = true
		})
	end

	self.onDragMoved = function(input)
		if self.props.OnDragMoved then
			self.props.OnDragMoved(input)
		end
	end

	self.stopDragging = function()
		getMouse(self).resetCursor()
		self:setState({
			Dragging = false
		})
		if self.props.OnDragEnded then
			self.props.OnDragEnded()
		end
	end
end

function DragListenerArea:willUnmount()
	getMouse(self).resetCursor()
end

function DragListenerArea:render()
	local state = self.state
	local props = self.props

	local dragging = state.Dragging
	local size = props.Size or UDim2.new(1, 0, 1, 0)
	local anchorPoint = props.AnchorPoint or Vector2.new()

	return Roact.createElement("ImageButton", {
		Size = size,
		AnchorPoint = anchorPoint,
		ImageTransparency = 1,
		BackgroundTransparency = 1,

		[Roact.Event.MouseEnter] = self.onMouseEnter,
		[Roact.Event.MouseLeave] = self.onMouseLeave,
		[Roact.Event.MouseButton1Down] = self.startDragging,
	}, {
		Target = dragging and Roact.createElement(DragTarget, {
			OnDragMoved = self.onDragMoved,
			OnDragEnded = self.stopDragging,
		}),
	})
end

return DragListenerArea