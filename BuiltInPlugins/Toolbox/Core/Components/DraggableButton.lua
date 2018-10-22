--[[
	Has callbacks for clicking and drag starting.

	Props:
		callback onDragStart()
		callback onClick()

	Other props forwarded onto the inner ImageButton
]]

local Plugin = script.Parent.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local DebugFlags = require(Plugin.Core.Util.DebugFlags)
local Immutable = require(Plugin.Core.Util.Immutable)

local DraggableButton = Roact.PureComponent:extend("DraggableButton")

-- How far the user has to move their mouse before we start a drag operation
-- versus click-to-insert
local MAX_DIST_BEFORE_DRAG = 4

function DraggableButton:init(props)
	-- Is the component currently clicked and where was it clicked
	self.clicked = false
	self.clickPosition = Vector2.new(0, 0)

	-- When the user clicks, we wait for them to release the mouse before
	-- firing a click event. If they move the mouse too much whilst clicked
	-- then we start a drag instead.
	self.willFireClickOnMouseUp = false

	if DebugFlags.shouldDebugWarnings() then
		if props[Roact.Event.MouseButton1Down] then
			warn("MouseButton1Down should not be defined on DraggableButton. Use onMouseDown instead.")
		end
		if props[Roact.Event.MouseMoved] then
			warn("MouseButton1Down should not be defined on DraggableButton. Use onMouseMoved instead.")
		end
		if props[Roact.Event.MouseButton1Up] then
			warn("MouseButton1Up should not be defined on DraggableButton. Use onMouseUp instead.")
		end
	end

	self.onMouseButton1Down = function(rbx, x, y)
		self.clicked = true
		self.clickPosition = Vector2.new(x, y)
		self.willFireClickOnMouseUp = true

		if props.onMouseDown then
			props.onMouseDown(rbx, x, y)
		end
	end

	self.onMouseMoved = function(rbx, x, y)
		if self.clicked and self.willFireClickOnMouseUp then
			local movedDist = (Vector2.new(x, y) - self.clickPosition).magnitude

			if movedDist > MAX_DIST_BEFORE_DRAG then
				self.willFireClickOnMouseUp = false

				if props.onDragStart then
					props.onDragStart(rbx, x, y)
				end
			end
		end

		if props.onMouseMoved then
			props.onMouseMoved(rbx, x, y)
		end
	end

	self.onMouseButton1Up = function(rbx, x, y)
		self.clicked = false
		self.clickPosition = Vector2.new(x, y)

		-- The mouse was down and not moved enough to start a drag
		-- So fire a click instead
		if self.willFireClickOnMouseUp then
			self.willFireClickOnMouseUp = false
			if props.onClick then
				props.onClick(rbx, x, y)
			end
		end

		if props.onMouseUp then
			props.onMouseUp(rbx, x, y)
		end
	end
end

function DraggableButton:render()
	local props = Immutable.JoinDictionaries(self.props, {
		[Roact.Event.MouseButton1Down] = self.onMouseButton1Down,
		[Roact.Event.MouseMoved] = self.onMouseMoved,
		[Roact.Event.MouseButton1Up] = self.onMouseButton1Up,
	})
	props = Immutable.RemoveFromDictionary(props, "onDragStart", "onClick", "onMouseDown", "onMouseMoved", "onMouseUp")

	return Roact.createElement("ImageButton", props)
end

return DraggableButton
