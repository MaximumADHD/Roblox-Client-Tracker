--[[
	A Roact component that the user can click on to initiate a drag. Has optional
	callbacks for when dragging starts and stops.

	Required Props:
		callback OnDragBegan: A callback for when user starts dragging.

	Optional Props:
		Enum.AutomaticSize AutomaticSize: Provide the DragSource with an AutomaticSize.
		number LayoutOrder: The layout order of this component in a list.
		callback OnClick: A callback for when user clicks the component.
		callback OnRightClick: A callback for when user right clicks the component.
		UDim2 Position: The position of the component.
		UDim2 Size: The size of the component.
]]

local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local Typecheck = require(Framework.Util).Typecheck

-- Distance after mouse down before drag begins
local DRAG_THRESHOLD = 4

local DragSource = Roact.PureComponent:extend("DragSource")
Typecheck.wrap(DragSource, script)

function DragSource:init()
	self._dragging = false
	self._mouseDownPosition = nil

	self.click = function(_, input, clickCount)
		if not self._dragging and self.props.OnClick then
			self.props.OnClick(input, clickCount)
		end
	end

	self.mouseButton1Down = function(_, x, y)
		self._mouseDownPosition = Vector2.new(x, y)
		self._dragging = false
	end

	self.mouseMoved = function(_, x, y)
		if self._dragging or not self._mouseDownPosition then
			return
		end

		local position = Vector2.new(x, y)
		if (position - self._mouseDownPosition).Magnitude > DRAG_THRESHOLD then
			self._mouseDownPosition = nil
			self._dragging = true
			if self.props.OnDragBegan then
				self.props.OnDragBegan()
			end
		end
	end

	self.mouseButton1Up = function()
		self._mouseDownPosition = nil
		self._dragging = false
	end

	self.rightClick = function()
		if not self._dragging and self.props.OnRightClick then
			self.props.OnRightClick()
		end
	end
end

function DragSource:render()
	local props = self.props

	return Roact.createElement("ImageButton", {
		AutomaticSize = props.AutomaticSize,
		BackgroundTransparency = 1,
		LayoutOrder = props.LayoutOrder,
		Position = props.Position,
		Size = props.Size,

		[Roact.Event.Activated] = if props.OnClick then self.click else nil,
		[Roact.Event.MouseButton1Down] = self.mouseButton1Down,
		[Roact.Event.MouseButton1Up] = self.mouseButton1Up,
		[Roact.Event.MouseButton2Click] = if props.OnRightClick then self.rightClick else nil,
		[Roact.Event.MouseMoved] = self.mouseMoved,
	}, props[Roact.Children])
end

return DragSource
