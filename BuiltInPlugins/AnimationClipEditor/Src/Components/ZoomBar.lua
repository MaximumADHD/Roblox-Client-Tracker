--[[
	Represents a horizontal scroll bar with controllers on the edges that control
	the zoom level of the Dope Sheet.

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
local Util = Framework.Util
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR
local Constants = require(Plugin.Src.Util.Constants)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local DragTarget = Framework.UI.DragListener
local ArrowButton = require(Plugin.Src.Components.ArrowButton)

local ZoomBar = Roact.PureComponent:extend("ZoomBar")

function ZoomBar:calculateScrollAndZoom()
	local zoom = math.clamp(1 - (self.RightValue - self.LeftValue), 0, 1)
	local scroll = 0
	if zoom > 0 then
		scroll = self.LeftValue / zoom
	end

	if self.props.AdjustScrollZoom then
		self.props.AdjustScrollZoom(scroll, zoom)
	end
end

function ZoomBar:getDraggableWidth()
	return self.props.ContainerSize.X - Constants.SCROLL_BAR_PADDING - Constants.SCROLL_BAR_SIZE * 4
end

function ZoomBar:isDragging()
	return self.state.Zooming or self.state.Scrolling
end

function ZoomBar:calculateLeftAndRight(scroll, zoom)
	self.LeftValue = scroll * zoom
	self.RightValue = (1 - zoom) + (scroll * zoom)
end

function ZoomBar:init()
	self.state = {
		Scrolling = false,
		Zooming = false,
		Hovering = false,
	}

	self.LeftValue = 0
	self.RightValue = 1

	self.updateLeft = function(position)
		local scaled = (position - self.props.LeftX - self.ClickOffset + Constants.SCROLL_BAR_SIZE)
			/ self:getDraggableWidth()
		self.LeftValue = math.clamp(scaled, 0, self.RightValue)
	end

	self.updateRight = function(position)
		local scaled = (position - self.props.LeftX - self.ClickOffset)	/ self:getDraggableWidth()
		self.RightValue = math.clamp(scaled, self.LeftValue, 1)
	end

	self.updateMiddle = function(xPos)
		local oldLeft = self.LeftValue
		local difference = 1 - self.RightValue
		self.LeftValue = math.clamp(xPos, 0, oldLeft + difference)
		self.RightValue = self.RightValue + (self.LeftValue - oldLeft)
		self:calculateScrollAndZoom()
	end

	self.dragMiddle = function(position)
		local scaled = (position - self.props.LeftX - self.ClickOffset) / self:getDraggableWidth()
		self.updateMiddle(scaled)
	end

	self.onZoomBegan = function(rbx, input, zoomFunc)
		if Enum.UserInputType.MouseButton1 == input.UserInputType then
			self:setState({
				Zooming = true
			})
			self.ClickOffset = input.Position.X - rbx.AbsolutePosition.X + Constants.SCROLL_BAR_SIZE * 2
			self.ZoomFunc = zoomFunc
		end
	end

	self.onScrollBegan = function(rbx, input)
		if Enum.UserInputType.MouseButton1 == input.UserInputType then
			self:setState({
				Scrolling = true
			})
			self.ClickOffset = input.Position.X - rbx.AbsolutePosition.X + Constants.SCROLL_BAR_SIZE * 2
		end
	end

	self.onInputChanged = function(input)
		if self:isDragging() then
			if self.state.Zooming then
				self.ZoomFunc(input.Position.X)
				self:calculateScrollAndZoom()
			elseif self.state.Scrolling then
				self.dragMiddle(input.Position.X)
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
		local theme = THEME_REFACTOR and props.Stylizer.PluginTheme or props.Theme:get("PluginTheme")
		local zoomBarTheme = theme.zoomBarTheme

		local position = props.Position
		local size = props.Size
		local layoutOrder = props.LayoutOrder
		local zIndex = props.ZIndex
		local hovering = state.Hovering
		local dragging = self:isDragging()

		local scroll = props.Scroll or 0
		local zoom = props.Zoom or 0

		if not dragging then
			self:calculateLeftAndRight(scroll, zoom)
		end

		local leftZoomX = self.LeftValue * self:getDraggableWidth() + Constants.SCROLL_BAR_SIZE
		local rightZoomX = Constants.SCROLL_BAR_SIZE * 2 + self.RightValue * self:getDraggableWidth()
		local scrollX = leftZoomX + Constants.SCROLL_BAR_SIZE
		local scrollControlWidth = rightZoomX - leftZoomX - Constants.SCROLL_BAR_SIZE

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
					self.ClickOffset = scrollControlWidth / 2 + Constants.SCROLL_BAR_SIZE * 2
					self.dragMiddle(input.Position.X)
				end
			end,
		}, {
			DragTarget = self:isDragging() and Roact.createElement(DragTarget, {
				OnDragMoved = self.onInputChanged,
				OnDragEnded = self.onInputEnded,
			}),

			LeftZoomControl = Roact.createElement("ImageLabel", {
				Position = UDim2.new(0, leftZoomX, 0, 0),
				Size = UDim2.new(0, Constants.SCROLL_BAR_SIZE, 0, Constants.SCROLL_BAR_SIZE),
				BackgroundColor3 = zoomBarTheme.controlColor,
				BorderSizePixel = zoomBarTheme.borderSize,
				BorderColor3 = zoomBarTheme.borderColor,
				Image = zoomBarTheme.controlImage,
				ScaleType = Enum.ScaleType.Fit,
				ImageColor3 = zoomBarTheme.imageColor,
				ZIndex = zIndex,
				[Roact.Event.InputBegan] = function(rbx, input)
					self.onZoomBegan(rbx, input, self.updateLeft)
				end,
			}),

			ScrollControl = Roact.createElement("Frame", {
				Position = UDim2.new(0, scrollX, 0, 0),
				Size = UDim2.new(0, scrollControlWidth, 1, 0),
				BackgroundColor3 = scrollbarColor,
				BorderColor3 = zoomBarTheme.borderColor,
				BorderSizePixel = zoomBarTheme.borderSize,
				ZIndex = zIndex,

				[Roact.Event.InputBegan] = self.onScrollBegan,
				[Roact.Event.MouseEnter] = self.mouseEnter,
				[Roact.Event.MouseLeave] = self.mouseLeave,
			}),

			RightZoomControl = Roact.createElement("ImageLabel", {
				Position = UDim2.new(0, rightZoomX, 0, 0),
				Size = UDim2.new(0, Constants.SCROLL_BAR_SIZE, 0, Constants.SCROLL_BAR_SIZE),
				BackgroundColor3 = zoomBarTheme.controlColor,
				BorderSizePixel = zoomBarTheme.borderSize,
				BorderColor3 = zoomBarTheme.borderColor,
				Image = zoomBarTheme.controlImage,
				ScaleType = Enum.ScaleType.Fit,
				ImageColor3 = zoomBarTheme.imageColor,
				ZIndex = zIndex,
				[Roact.Event.InputBegan] = function(rbx, input)
					self.onZoomBegan(rbx, input, self.updateRight)
				end,
			}),

			LeftButton = Roact.createElement(ArrowButton, {
				Rotation = 270,
				OnActivated = function()
					self.updateMiddle(self.LeftValue - Constants.ZOOM_INCREMENT)
				end,
			}),

			RightButton = Roact.createElement(ArrowButton, {
				Rotation = 90,
				Position = UDim2.new(1, 0, 0, 0),
				AnchorPoint = Vector2.new(1, 0),
				OnActivated = function()
					self.updateMiddle(self.LeftValue + Constants.ZOOM_INCREMENT)
				end,
			}),
		})
end


ZoomBar = withContext({
	Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
	Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
})(ZoomBar)




return ZoomBar