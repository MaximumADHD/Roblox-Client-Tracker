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
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices

local DragTarget = Framework.UI.DragListener

local DragListenerArea = Roact.PureComponent:extend("DragListenerArea")

function DragListenerArea:init()
	self.state = {
		Dragging = false,
	}

	self.onMouseEnter = function()
		if self.props.Mouse then 
			self.props.Mouse:__pushCursor(self.props.Cursor)
		end
	end

	self.onMouseLeave = function()
		if self.props.Mouse and not self.state.Dragging then
			self.props.Mouse:__popCursor()
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
end

function DragListenerArea:didMount()
	local Mouse = self.props.Mouse
	self.stopDragging = function()
		Mouse:__resetCursor()
		self:setState({
			Dragging = false
		})
		if self.props.OnDragEnded then
			self.props.OnDragEnded()
		end
	end
end

function DragListenerArea:willUnmount()
	self.props.Mouse:__resetCursor()
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

ContextServices.mapToProps(DragListenerArea, {
	Mouse = ContextServices.Mouse,
})

return DragListenerArea