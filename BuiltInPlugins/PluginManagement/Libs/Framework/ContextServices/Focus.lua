--[[
	A utility for elements that need to display on top of all other elements,
	and elements that need to capture focus and block input to all other elements.
	Uses Portals to place elements in the main PluginGui.
	The Focus constructor expects a LayerCollector (PluginGui, ScreenGui, etc).

	NOTE: If you use DockWidget/Dialog from the DeveloperFramework, you do not
	have to manually create or provide a Focus.

	Functions:
		getTarget():
			Returns the top-level LayerCollector above the current component.

	Components:
		ShowOnTop
			A Roact component that wraps its children such that they will be
			rendered on top of all other components.
			Props:
				int Priority = The ZIndex of this component relative to other
					focused elements.

		CaptureFocus
			A Roact component that wraps its children such that they will be
			rendered on top of all other components, and will block input to all
			other components.

			Props:
				int Priority = The ZIndex of this component relative to other
					focused elements.
				callback OnFocusLost = A callback for when the user clicks
					outside of the focused element.

		DragListener
			A component that can listen to change in mouse position while active,
			and then has a callback for removal once the user is done dragging.

			Props:
				function OnDragMoved(input) = A callback for when the user drags
					the mouse. The input param is the InputObject from the InputChanged event.

				function OnDragEnded() = A callback for when the user has stopped dragging.

			Usage:
				From a stateful component, hold on to a dragging state. When the user
				presses the mouse on a draggable element, set the dragging state to
				true. When dragging is true, render this element. Hook up this element's
				OnDragEnded function to setting the dragging state to false.

		KeyboardListener
			A Roact component that listens to keyboard events within the PluginGui.

			Props:
				callback OnKeyPressed(input, keysHeld)
					A callback for when the user presses a key inside the plugin.
					The input param is the InputObject for the InputBegan event. The
					keysHeld param is a map containing every key that is currently held.
				callback OnKeyReleased(input)
					A callback for when the user releases a key.
]]

local FOCUSED_ZINDEX = 1000000
local Framework = script.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local ContextItem = require(Framework.ContextServices.ContextItem)
local mapToProps = require(Framework.ContextServices.mapToProps)
local Provider = require(Framework.ContextServices.Provider)

local Focus = ContextItem:extend("Focus")

function Focus.new(target)
	assert(target and target:IsA("LayerCollector"),
		"Focus.new: Expected a LayerCollector as the target.")

	local self = {
		target = target,
	}

	setmetatable(self, Focus)
	return self
end

function Focus:createProvider(root)
	return Roact.createElement(Provider, {
		ContextItem = self,
	}, {root})
end

function Focus:getTarget()
	return self.target
end

local CaptureFocus = Roact.PureComponent:extend("CaptureFocus")
function CaptureFocus:render()
	local props = self.props
	local target = props.Focus:getTarget()
	local priority = props.Priority or 0
	return Roact.createElement(Roact.Portal, {
		target = target,
	}, {
		-- Consume all clicks outside the element to close it when it loses focus
		TopLevelDetector = Roact.createElement("ImageButton", {
			ZIndex = priority + FOCUSED_ZINDEX,
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			[Roact.Event.Activated] = self.props.OnFocusLost,
		}, {
			-- Also block all scrolling events going through
			ScrollBlocker = Roact.createElement("ScrollingFrame", {
				Size = UDim2.new(1, 0, 1, 0),
				-- We need to have ScrollingEnabled = true for this frame for it to block
				-- But we don't want it to actually scroll, so its canvas must be same size as the frame
				ScrollingEnabled = true,
				CanvasSize = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				ScrollBarThickness = 0,
			}, self.props[Roact.Children]),
		}),
	})
end
mapToProps(CaptureFocus, {
	Focus = Focus,
})

local ShowOnTop = Roact.PureComponent:extend("ShowOnTop")
function ShowOnTop:render()
	local props = self.props
	local target = props.Focus:getTarget()
	local priority = self.props.Priority or 0
	return Roact.createElement(Roact.Portal, {
		target = target,
	}, {
		TopLevelFrame = Roact.createElement("Frame", {
			ZIndex = priority + FOCUSED_ZINDEX,
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
		}, self.props[Roact.Children]),
	})
end
mapToProps(ShowOnTop, {
	Focus = Focus,
})

local DragListener = Roact.PureComponent:extend("DragListener")
function DragListener:init()
	self.inputChanged = function(rbx, input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			if self.props.OnDragMoved then
				self.props.OnDragMoved(input)
			end
		end
	end

	self.inputEnded = function()
		if self.props.OnDragEnded then
			self.props.OnDragEnded()
		end
	end
end
function DragListener:render()
	return Roact.createElement(CaptureFocus, {
		OnFocusLost = self.inputEnded,
	}, {
		Listener = Roact.createElement("ImageButton", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, 0),

			[Roact.Event.InputChanged] = self.inputChanged,
			[Roact.Event.InputEnded] = self.inputEnded,
			[Roact.Event.MouseButton1Up] = self.inputEnded,
			[Roact.Event.MouseButton2Up] = self.inputEnded,
		}, self.props[Roact.Children])
	})
end

local KeyboardListener = Roact.PureComponent:extend("KeyboardListener")
function KeyboardListener:init()
	self.keysHeld = {}
	assert(self._context[Focus.Key] ~= nil, "No Provider found for Focus.")
	self.target = self._context[Focus.Key].value:getTarget()

	self.onInputBegan = function(input)
		if input.UserInputType == Enum.UserInputType.Keyboard then
			self.keysHeld[input.KeyCode] = true
			self.props.OnKeyPressed(input, self.keysHeld)
		end
	end

	self.onInputEnded = function(input)
		if input.UserInputType == Enum.UserInputType.Keyboard then
			self.keysHeld[input.KeyCode] = nil
			self.props.OnKeyReleased(input)
		end
	end

	if self.target:IsA("DockWidgetPluginGui") then
		self.focusConnection = self.target.WindowFocusReleased:Connect(function()
			for key, _ in pairs(self.keysHeld) do
				self.props.OnKeyReleased({
					KeyCode = key,
					UserInputType = Enum.UserInputType.Keyboard,
				})
			end
			self.keysHeld = {}
		end)
	end
end
function KeyboardListener:render()
	return Roact.createElement(ShowOnTop, {}, {
		Listener = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			[Roact.Event.InputBegan] = function(_, input)
				self.onInputBegan(input)
			end,
			[Roact.Event.InputEnded] = function(_, input)
				self.onInputEnded(input)
			end,
		}),
	})
end
function KeyboardListener:willUnmount()
	if self.focusConnection then
		self.focusConnection:Disconnect()
	end
end

Focus.CaptureFocus = CaptureFocus
Focus.ShowOnTop = ShowOnTop
Focus.DragListener = DragListener
Focus.KeyboardListener = KeyboardListener

return Focus