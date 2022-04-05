--[[
	Represents a vertical scroll bar with controllers on the edges that control
	the zoom level of the Canvas Editor.

	Properties:
		UDim2 Position = position of the ZoomBar draggable area
		UDim2 Size = size of the ZoomBar draggable area
		Vector2 ContainerSize = Size of the parent frame of this component
		int LayoutOrder = The layout order of the frame, if in a Layout.
		int ZIndex = The draw index of the frame.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local Constants = require(Plugin.Src.Util.Constants)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local DragTarget = Framework.UI.DragListener
local ArrowButton = require(Plugin.Src.Components.ArrowButton)

local ZoomBar = Roact.PureComponent:extend("ZoomBar")

ZoomBar.HORIZONTAL = "Horizontal"
ZoomBar.VERTICAL = "Vertical"

function ZoomBar:calculateScrollAndZoom()
	local zoom = math.clamp(1 - (self.MaxValue - self.MinValue), 0, 1)
	local scroll = 0
	if zoom > 0 then
		scroll = self.MinValue / zoom
	end

	if self.props.AdjustScrollZoom then
		self.props.AdjustScrollZoom(scroll, zoom)
	end
end

function ZoomBar:getDraggableSize()
	if self.props.Direction == ZoomBar.HORIZONTAL then
		return self.props.ContainerSize.X - Constants.SCROLL_BAR_PADDING - Constants.SCROLL_BAR_SIZE * 4
	else
		return self.props.ContainerSize.Y - Constants.SCROLL_BAR_PADDING - Constants.SCROLL_BAR_SIZE * 4
	end
end

function ZoomBar:isDragging()
	return self.state.Zooming or self.state.Scrolling
end

function ZoomBar:calculateMinAndMax()
	local props = self.props
	local scroll = props.Scroll or 0
	local zoom = props.Zoom or 0
	self.MinValue = scroll * zoom
	self.MaxValue = (1 - zoom) + (scroll * zoom)
end

function ZoomBar:init()
	self.state = {
		Scrolling = false,
		Zooming = false,
		Hovering = false,
	}

	self.MinValue = 0
	self.MaxValue = 1

	self.updateMin = function(position)
		local scaled = (position - self.props.Min - self.ClickOffset + Constants.SCROLL_BAR_SIZE) / self:getDraggableSize()
		self.MinValue = math.clamp(scaled, 0, self.MaxValue)
	end

	self.updateMax = function(position)
		local scaled = (position - self.props.Min - self.ClickOffset) / self:getDraggableSize()
		self.MaxValue = math.clamp(scaled, self.MinValue, 1)
	end

	self.updateMiddle = function(position)
		local oldMin = self.MinValue
		local difference = 1 - self.MaxValue
		self.MinValue = math.clamp(position, 0, oldMin + difference)
		self.MaxValue = self.MaxValue + (self.MinValue - oldMin)
		self:calculateScrollAndZoom()
	end

	self.dragMiddle = function(position)
		local scaled = (position - self.props.Min - self.ClickOffset) / self:getDraggableSize()
		self.updateMiddle(scaled)
	end

	self.onZoomBegan = function(rbx, input, zoomFunc)
		if Enum.UserInputType.MouseButton1 == input.UserInputType then
			self:setState({
				Zooming = true
			})
			if self.props.Direction == ZoomBar.HORIZONTAL then
				self.ClickOffset = input.Position.X - rbx.AbsolutePosition.X + Constants.SCROLL_BAR_SIZE * 2
			else
				self.ClickOffset = input.Position.Y - rbx.AbsolutePosition.Y + Constants.SCROLL_BAR_SIZE * 2
			end
			self.ZoomFunc = zoomFunc
		end
	end

	self.onScrollBegan = function(rbx, input)
		if Enum.UserInputType.MouseButton1 == input.UserInputType then
			self:setState({
				Scrolling = true
			})
			if self.props.Direction == ZoomBar.HORIZONTAL then
				self.ClickOffset = input.Position.X - rbx.AbsolutePosition.X + Constants.SCROLL_BAR_SIZE * 2
			else
				self.ClickOffset = input.Position.Y - rbx.AbsolutePosition.Y + Constants.SCROLL_BAR_SIZE * 2
			end
		end
	end

	self.onInputChanged = function(input)
		if self:isDragging() then
			local inputValue = self.props.Direction == ZoomBar.HORIZONTAL and input.Position.X or input.Position.Y
			if self.state.Zooming then
				self.ZoomFunc(inputValue)
				self:calculateScrollAndZoom()
			elseif self.state.Scrolling then
				self.dragMiddle(inputValue)
			end
		end
	end

	self.onInputEnded = function()
		self:setState({
			Zooming = false,
			Scrolling = false,
		})
	end

	self.mouseEnter = function()
		self:setState({
			Hovering = true,
		})
	end

	self.mouseLeave = function()
		self:setState({
			Hovering = false,
		})
	end
end

function ZoomBar:render()
	local props = self.props
	local state = self.state
	local theme = props.Stylizer.PluginTheme
	local zoomBarTheme = theme.zoomBarTheme

	local position = props.Position
	local size = props.Size
	local layoutOrder = props.LayoutOrder
	local zIndex = props.ZIndex
	local hovering = state.Hovering
	local dragging = self:isDragging()

	if not dragging then
		self:calculateMinAndMax()
	end

	local minZoom = self.MinValue * self:getDraggableSize() + Constants.SCROLL_BAR_SIZE + 1
	local maxZoom = Constants.SCROLL_BAR_SIZE * 2 + self.MaxValue * self:getDraggableSize()

	local scroll = minZoom + Constants.SCROLL_BAR_SIZE
	local scrollControlSize = maxZoom - minZoom - Constants.SCROLL_BAR_SIZE
	local isHorizontal = self.props.Direction == ZoomBar.HORIZONTAL

	local scrollbarColor
	if dragging then
		scrollbarColor = zoomBarTheme.pressedColor
	elseif hovering then
		scrollbarColor = zoomBarTheme.hoverColor
	else
		scrollbarColor = zoomBarTheme.controlColor
	end

	return Roact.createElement("ImageButton", {
		Position = position,
		Size = size,
		BackgroundColor3 = zoomBarTheme.backgroundColor,
		BorderColor3 = zoomBarTheme.borderColor,
		LayoutOrder = layoutOrder,
		ZIndex = zIndex,
		AutoButtonColor = false,
		ImageTransparency = 1,

		[Roact.Event.InputBegan] = function(rbx, input)
			if not self:isDragging() and input.UserInputType == Enum.UserInputType.MouseButton1 then
				self.ClickOffset = scrollControlSize / 2 + Constants.SCROLL_BAR_SIZE * 2
				self.dragMiddle(isHorizontal and input.Position.X or input.Position.Y)
			end
		end,
	}, {
		DragTarget = self:isDragging() and Roact.createElement(DragTarget, {
			OnDragMoved = self.onInputChanged,
			OnDragEnded = self.onInputEnded,
		}),

		MinZoomControl = Roact.createElement("ImageLabel", {
			Position = isHorizontal and UDim2.new(0, minZoom, 0, 0) or UDim2.new(0, 0, 0, minZoom),
			Size = UDim2.new(0, Constants.SCROLL_BAR_SIZE, 0, Constants.SCROLL_BAR_SIZE),
			BackgroundColor3 = zoomBarTheme.controlColor,
			BorderSizePixel = zoomBarTheme.borderSize,
			BorderColor3 = zoomBarTheme.borderColor,
			Image = zoomBarTheme.controlImage,
			Rotation = isHorizontal and 0 or 90,
			ScaleType = Enum.ScaleType.Fit,
			ImageColor3 = zoomBarTheme.imageColor,
			ZIndex = zIndex,
			[Roact.Event.InputBegan] = function(rbx, input)
				self.onZoomBegan(rbx, input, self.updateMin)
			end,
		}),

		ScrollControl = Roact.createElement("Frame", {
			Position = isHorizontal and UDim2.new(0, scroll, 0, 0) or UDim2.new(0, 0, 0, scroll),
			Size = isHorizontal and UDim2.new(0, scrollControlSize, 1, 0) or UDim2.new(1, 0, 0, scrollControlSize),
			BackgroundColor3 = scrollbarColor,
			BorderColor3 = zoomBarTheme.borderColor,
			BorderSizePixel = zoomBarTheme.borderSize,
			ZIndex = zIndex,

			[Roact.Event.InputBegan] = self.onScrollBegan,
			[Roact.Event.MouseEnter] = self.mouseEnter,
			[Roact.Event.MouseLeave] = self.mouseLeave,
		}),

		MaxZoomControl = Roact.createElement("ImageLabel", {
			Position = isHorizontal and UDim2.new(0, maxZoom, 0, 0) or UDim2.new(0, 0, 0, maxZoom),
			Size = UDim2.new(0, Constants.SCROLL_BAR_SIZE, 0, Constants.SCROLL_BAR_SIZE),
			BackgroundColor3 = zoomBarTheme.controlColor,
			BorderSizePixel = zoomBarTheme.borderSize,
			BorderColor3 = zoomBarTheme.borderColor,
			Image = zoomBarTheme.controlImage,
			Rotation = isHorizontal and 0 or 90,
			ScaleType = Enum.ScaleType.Fit,
			ImageColor3 = zoomBarTheme.imageColor,
			ZIndex = zIndex,
			[Roact.Event.InputBegan] = function(rbx, input)
				self.onZoomBegan(rbx, input, self.updateMax)
			end,
		}),

		MinButton = Roact.createElement(ArrowButton, {
			Rotation = isHorizontal and 270 or 0,
			OnActivated = function()
				self.updateMiddle(self.MinValue - Constants.ZOOM_INCREMENT)
			end,
		}),

		MaxButton = Roact.createElement(ArrowButton, {
			Rotation = isHorizontal and 90 or 180,
			Position = isHorizontal and UDim2.new(1, 0, 0, 0) or UDim2.new(0, 0, 1, 0),
			AnchorPoint = isHorizontal and Vector2.new(1, 0) or Vector2.new(0, 1),
			OnActivated = function()
				self.updateMiddle(self.MinValue + Constants.ZOOM_INCREMENT)
			end,
		}),
	})
end

ZoomBar = withContext({
	Stylizer = ContextServices.Stylizer,
})(ZoomBar)

return ZoomBar