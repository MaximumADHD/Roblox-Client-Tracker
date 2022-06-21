--[[
	A horizontal scrolling frame with a custom scroll bar.

	Props:
		UDim2 Size = The size of the parent frame containing the ScrollingFrame and bar.
		int LayoutOrder = The sort order of this component.
		int ZIndex = The display index of this component.
		int Width = The width of the parent component.
		Vector2 AnchorPoint = The pivot of this component's position.
		UDim2 CanvasSize = The canvas size of the ScrollingFrame.
		float BackgroundTransparency = The transparency of this component's background.

		function OnSizeChanged(rbx) = A callback for when the ScrollingFrame size changes.
		function OnInputChanged(rbx, input) A callback for when the user performs any
			input on the ScrollingFrame container.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Constants = require(Plugin.Src.Util.Constants)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local DragTarget = Framework.UI.DragListener

local ArrowButton = require(Plugin.Src.Components.ArrowButton)
local GetFFlagExtendPluginTheme = require(Plugin.LuaFlags.GetFFlagExtendPluginTheme)

local WideScrollingFrame = Roact.PureComponent:extend("WideScrollingFrame")

function WideScrollingFrame:init()
	self.scrollArea = Roact.createRef()

	self.state = {
		CanvasPosition = Vector2.new(),
		dragging = false,
		mouseXOffset = 0,
		hovering = false,
	}

	self.onSizeChanged = function(rbx)
		if self.props.OnSizeChanged then
			self.props.OnSizeChanged(rbx)
		end
	end

	self.onCanvasPositionChanged = function(rbx)
		if rbx.CanvasPosition ~= self.state.CanvasPosition then
			self:setState({
				CanvasPosition = rbx.CanvasPosition,
			})
		end
	end

	self.onDragStarted = function(rbx, input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			self:setState({
				mouseXOffset = input.Position.X - rbx.AbsolutePosition.X,
				dragging = true,
			})
		end
	end

	self.setCanvasPosition = function(xScale)
		local props = self.props
		local canvasWidth = props.CanvasSize.X.Offset
		local newPosition = math.floor(xScale * canvasWidth + 0.5)
		self:setState({
			CanvasPosition = Vector2.new(newPosition, 0),
		})
	end

	self.onDragMoved = function(input)
		local state = self.state
		local mouseXOffset = state.mouseXOffset
		local scrollArea = self.scrollArea.current
		local xPos = input.Position.X - scrollArea.AbsolutePosition.X - mouseXOffset
		local xScale = math.clamp(xPos / scrollArea.AbsoluteSize.X, 0, 1)
		self.setCanvasPosition(xScale)
	end

	self.onDragEnded = function()
		self:setState({
			dragging = false
		})
	end

	self.scroll = function(rbx, input)
		local props = self.props
		local canvasWidth = props.CanvasSize.X.Offset
		local barWidth = props.Width / canvasWidth * rbx.AbsoluteSize.X
		self:setState({
			mouseXOffset = barWidth / 2,
		})
		self.onDragMoved(input)
	end

	self.mouseEnter = function()
		self:setState({
			hovering = true,
		})
	end

	self.mouseLeave = function()
		self:setState({
			hovering = false,
		})
	end
end

function WideScrollingFrame:render()
	local props = self.props
	local theme = GetFFlagExtendPluginTheme() and props.Stylizer or props.Stylizer.PluginTheme
	local state = self.state
	local size = props.Size
	local anchorPoint = props.AnchorPoint
	local position = props.Position
	local canvasSize = props.CanvasSize
	local layoutOrder = props.LayoutOrder
	local zIndex = props.ZIndex
	local width = props.Width
	local backgroundTransparency = props.BackgroundTransparency or 0

	local dragging = state.dragging
	local hovering = state.hovering
	local canvasPosition = state.CanvasPosition

	local scrollTheme = theme.scrollBarTheme

	local canvasWidth = canvasSize.X.Offset > 0 and canvasSize.X.Offset or 1
	local showScrollbar = width < canvasWidth
	local scrollPos = math.min(canvasPosition.X, canvasWidth - width)

	local scrollbarColor
	if dragging then
		scrollbarColor = scrollTheme.pressedColor
	elseif hovering then
		scrollbarColor = scrollTheme.hoverColor
	else
		scrollbarColor = scrollTheme.controlColor
	end

	return Roact.createElement("Frame", {
		Size = size,
		Position = position,
		LayoutOrder = layoutOrder,
		AnchorPoint = anchorPoint,
		BackgroundColor3 = theme.backgroundColor,
		BorderColor3 = theme.borderColor,
		BackgroundTransparency = backgroundTransparency,
		ZIndex = zIndex,
	}, {
		Canvas = Roact.createElement("ScrollingFrame", {
			Size = UDim2.new(1, 0, 1, -Constants.SCROLL_BAR_SIZE),
			CanvasSize = canvasSize,
			CanvasPosition = canvasPosition,
			ScrollBarThickness = 0,
			BackgroundTransparency = 1,

			[Roact.Change.AbsoluteSize] = self.onSizeChanged,
			[Roact.Change.CanvasPosition] = self.onCanvasPositionChanged,
			[Roact.Event.InputBegan] = props.OnInputChanged,
			[Roact.Event.InputChanged] = props.OnInputChanged,
		}, props[Roact.Children]),

		Footer = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, Constants.SCROLL_BAR_SIZE),
			Position = UDim2.new(0, 0, 1, 0),
			AnchorPoint = Vector2.new(0, 1),
			BackgroundColor3 = scrollTheme.backgroundColor,
			BorderColor3 = scrollTheme.borderColor,
		}, {
			ScrollArea = showScrollbar and Roact.createElement("Frame", {
				Position = UDim2.new(0.5, 0, 0, 0),
				AnchorPoint = Vector2.new(0.5, 0),
				Size = UDim2.new(1, -Constants.SCROLL_BAR_SIZE * 2 - Constants.SCROLL_BAR_PADDING, 1, 0),
				BackgroundTransparency = 1,

				[Roact.Change.AbsoluteSize] = self.recalculateExtents,
				[Roact.Ref] = self.scrollArea,
				[Roact.Event.InputBegan] = function(rbx, input)
					if not dragging and input.UserInputType == Enum.UserInputType.MouseButton1 then
						self.scroll(rbx, input)
					end
				end,
			},{
				ScrollBar = Roact.createElement("Frame", {
					Size = UDim2.new(width / canvasWidth, 0, 1, 0),
					Position = UDim2.new(scrollPos / canvasWidth, 0, 0, 0),
					BorderSizePixel = 0,
					BackgroundColor3 = scrollbarColor,

					[Roact.Event.MouseEnter] = self.mouseEnter,
					[Roact.Event.mouseLeave] = self.mouseLeave,
					[Roact.Event.InputBegan] = self.onDragStarted,
				}),
			}),

			LeftButton = showScrollbar and Roact.createElement(ArrowButton, {
				Rotation = 270,
				OnActivated = function()
					self.setCanvasPosition(0)
				end,
			}),

			RightButton = showScrollbar and Roact.createElement(ArrowButton, {
				Rotation = 90,
				Position = UDim2.new(1, 0, 0, 0),
				AnchorPoint = Vector2.new(1, 0),
				OnActivated = function()
					self.setCanvasPosition(1)
				end,
			}),

			DragTarget = dragging and Roact.createElement(DragTarget, {
				OnDragMoved = self.onDragMoved,
				OnDragEnded = self.onDragEnded,
			}),
		}),
	})
end

WideScrollingFrame = withContext({
	Stylizer = ContextServices.Stylizer,
})(WideScrollingFrame)

return WideScrollingFrame