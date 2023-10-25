local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local Container = script.Parent
local App = script.Parent.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Cryo = require(Packages.Cryo)
local Otter = require(Packages.Otter)
local Roact = require(Packages.Roact)
local t = require(Packages.t)
local RoactGamepad = require(Packages.RoactGamepad)

local Focusable = RoactGamepad.Focusable

local withStyle = require(Packages.UIBlox.Core.Style.withStyle)
local CursorKind = require(App.SelectionImage.CursorKind)
local withSelectionCursorProvider = require(App.SelectionImage.withSelectionCursorProvider)

local UIBloxConfig = require(UIBlox.UIBloxConfig)
local Images = require(Packages.UIBlox.App.ImageSet.Images)
local ScrollBarType = require(Container.Enum.ScrollBarType)
local ScrollBar = require(script.Parent.ScrollBar)

local SCROLL_BAR_RIGHT_PADDING = 4
local SCROLL_BAR_THICKNESS = 2
local HIDE_SIDEBAR_AFTER_IN_SECONDS = 0.70
local SPRING_PARAMETERS = {
	frequency = 3,
	dampingRatio = 1.5,
}
local ICON_XBOX_RS_VERTICAL = "icons/controls/keys/xboxRSVertical"

local VerticalScrollView = Roact.Component:extend("VerticalScrollView")

VerticalScrollView.validateProps = t.strictInterface({
	-- Size of the scroll view
	size = t.optional(t.UDim2),
	-- Position of the scroll view
	position = t.optional(t.UDim2),
	layoutOrder = t.optional(t.number),

	-- Determines how elastic scrolling behaves for touch input
	elasticBehavior = t.optional(t.EnumItem),
	canvasSizeY = t.optional(t.UDim),
	-- When true, automatically detects Canvas Size Y based on its child elements
	useAutomaticCanvasSize = t.optional(t.boolean),
	-- If the vertical scrolling list should be focusable by gamepad or not
	isGamepadFocusable = t.optional(t.boolean),
	-- If the vertical scrolling list can scroll or not
	scrollingEnabled = t.optional(t.boolean),
	-- Whether or not MainCanvas can be selected by a gamepad
	selectable = t.optional(t.boolean),

	-- Optional passthrough props for the scrolling frame
	[Roact.Change.CanvasPosition] = t.optional(t.callback),
	[Roact.Change.CanvasSize] = t.optional(t.callback),
	scrollingFrameRef = t.optional(t.table),

	-- Navigation parameter for RoactGamepad support
	NextSelectionLeft = t.optional(t.table),
	-- Navigation parameter for RoactGamepad support
	NextSelectionRight = t.optional(t.table),
	-- Navigation parameter for RoactGamepad support
	NextSelectionUp = t.optional(t.table),
	-- Navigation parameter for RoactGamepad support
	NextSelectionDown = t.optional(t.table),

	-- Content of the scrolling view
	[Roact.Children] = t.optional(t.table),

	-- Type of scroll bar
	scrollBarType = t.optional(t.string),
})

VerticalScrollView.defaultProps = {
	size = UDim2.new(1, 0, 1, 0),
	canvasSizeY = UDim.new(2, 0),
	useAutomaticCanvasSize = false,
	isGamepadFocusable = false,
	selectable = nil,
	scrollingEnabled = true,
	scrollBarType = ScrollBarType.Compact,
}

function VerticalScrollView:init()
	self.parentFrameRef = Roact.createRef()
	self.mainCanvasRef = Roact.createRef()

	self.scrollPosition, self.updateScroll = Roact.createBinding(0)
	if UIBloxConfig.useNewScrollBar then
		self.mainCanvasSize, self.updateCanvasSize = Roact.createBinding(Vector2.new(0, 0))
	else
		self.mainCanvasSize, self.updateCanvasSize = Roact.createBinding(UDim2.fromOffset(0, 0))
	end

	self:setState({
		scrollBarThickness = 0,
		scrollingWithTouch = false,
	})

	if UIBloxConfig.useNewScrollBar then
		self.scrollBarImageTransparency, self.updateScrollBarImageTransparency = Roact.createBinding(1)
	else
		self.scrollBarImageTransparency, self.updateScrollBarImageTransparency = Roact.createBinding(0)
	end
	self.scrollBarImageTransparencyMotor = Otter.createSingleMotor(0)
	self.scrollBarImageTransparencyMotor:onStep(self.updateScrollBarImageTransparency)

	self.lastTimeCanvasPositionChanged = tick()

	self.waitToHideSidebarConnection = nil
	self.waitToHideSidebar = function()
		local currentTime = tick()
		local delta = currentTime - self.lastTimeCanvasPositionChanged
		if delta > HIDE_SIDEBAR_AFTER_IN_SECONDS then
			self.scrollBarImageTransparencyMotor:setGoal(Otter.spring(1, SPRING_PARAMETERS))
			self.disconnectWaitToHideSidebar()
		end
	end
	self.disconnectWaitToHideSidebar = function()
		if self.waitToHideSidebarConnection then
			self.waitToHideSidebarConnection:Disconnect()
			self.waitToHideSidebarConnection = nil
		end
	end
	self.inputBegan = function(instance, input)
		if not self.props.scrollingEnabled then
			return
		end

		if input.UserInputType == Enum.UserInputType.MouseMovement then
			self.disconnectWaitToHideSidebar()
			self:setState({
				scrollBarThickness = SCROLL_BAR_THICKNESS,
			})
			self.scrollBarImageTransparencyMotor:setGoal(Otter.instant(0))
		end
	end
	self.inputEnded = function(instance, input)
		if not self.props.scrollingEnabled then
			return
		end

		if input.UserInputType == Enum.UserInputType.MouseMovement then
			self.disconnectWaitToHideSidebar()
			self.scrollBarImageTransparencyMotor:setGoal(Otter.instant(1))
		end
	end
	self.canvasPosition = function(rbx)
		self.lastTimeCanvasPositionChanged = tick()
		if not self.waitToHideSidebarConnection and UserInputService:GetLastInputType() == Enum.UserInputType.Touch then
			self.scrollBarImageTransparencyMotor:setGoal(Otter.instant(0))
			self:setState({
				scrollBarThickness = SCROLL_BAR_THICKNESS,
			})
			self.waitToHideSidebarConnection = RunService.Heartbeat:Connect(self.waitToHideSidebar)
		end

		self.updateScroll(rbx.CanvasPosition.Y)

		if self.props[Roact.Change.CanvasPosition] then
			self.props[Roact.Change.CanvasPosition](rbx)
		end
	end

	self.onGamepadFocused = function()
		self.scrollBarImageTransparencyMotor:setGoal(Otter.instant(0))
		self:setState({
			scrollBarThickness = SCROLL_BAR_THICKNESS,
		})
	end

	self.onGamepadFocusLost = function()
		self.scrollBarImageTransparencyMotor:setGoal(Otter.instant(1))
	end

	self.getMainCanvasPosition = function()
		return self.scrollPosition:map(function(canvasPositionY)
			return Vector2.new(0, canvasPositionY)
		end)
	end

	self.onMainCanvasSizeChange = function(rbx)
		self.updateCanvasSize(rbx.AbsoluteCanvasSize)
	end

	self.getMainCanvasSize = function()
		return self.mainCanvasSize:map(function(absoluteSize)
			return UDim2.new(0, SCROLL_BAR_THICKNESS, 0, absoluteSize.Y)
		end)
	end

	if UIBloxConfig.useNewScrollBar then
		self.viewSize, self.updateViewSize = Roact.createBinding(Vector2.new(0, 0))
		self.mainCanvasPosition, self.updateMainCanvasPosition = Roact.createBinding(Vector2.new(0, 0))

		self.onScrollBarDragging = function(positionY)
			self.updateMainCanvasPosition(Vector2.new(0, positionY))
		end

		self.onViewSizeChange = function(rbx)
			self.updateViewSize(rbx.AbsoluteSize)
		end

		self.onSelectionChanged = function(mainCanvas, mainCanvasSelected, _, newSelection)
			if UIBloxConfig.fixVerticalScrollViewOnSelectionChanged then
				if not mainCanvasSelected and newSelection == nil then
					self.onGamepadFocusLost()
					return
				end
			end

			if mainCanvasSelected or newSelection:IsDescendantOf(mainCanvas) then
				self.onGamepadFocused()
			else
				self.onGamepadFocusLost()
			end
		end
	end
end

function VerticalScrollView:getScrollBarStyleProps(style, scrollBarType)
	local tokens = style.Tokens

	if scrollBarType == ScrollBarType.Wide then
		return {
			userInteractionEnabled = true,
			width = tokens.Global.Size_200,
			handleWidth = tokens.Global.Size_100,
			paddingStartEnd = tokens.Global.Space_50,
			marginRight = 0,
		}
	elseif scrollBarType == ScrollBarType.Gamepad then
		return {
			userInteractionEnabled = false,
			width = tokens.Global.Space_200,
			handleWidth = tokens.Global.Space_100,
			handleIcon = Images[ICON_XBOX_RS_VERTICAL],
			handleIconSize = tokens.Semantic.Icon.Size.Medium,
			handleIconColor = {
				Color = tokens.Semantic.Color.Icon.Emphasis.Color3,
				Transparency = tokens.Semantic.Color.Icon.Emphasis.Transparency,
			},
			paddingStartEnd = tokens.Global.Space_300,
			marginRight = tokens.Global.Space_300,
		}
	end

	-- fallback to ScrollBarType.Compact
	return {
		userInteractionEnabled = false,
		width = tokens.Global.Space_150,
		handleWidth = tokens.Global.Size_25,
		paddingStartEnd = tokens.Global.Space_50,
		marginRight = 0,
	}
end

function VerticalScrollView:renderScrollBar(style)
	local tokens = style.Tokens
	local scrollBarType = self.props.scrollBarType

	local styleProps = self:getScrollBarStyleProps(style, scrollBarType)

	return Roact.createElement(ScrollBar, {
		userInteractionEnabled = styleProps.userInteractionEnabled,
		width = styleProps.width,
		anchorPoint = Vector2.new(1, 0),
		position = if UIBloxConfig.fixScrollBarLayout10ft
			then UDim2.new(1, -styleProps.marginRight, 0, 0)
			else UDim2.fromScale(1, 0),
		zIndex = 2,
		transparency = self.scrollBarImageTransparency,
		backgroundColor = styleProps.backgroundColor,
		paddingStartEnd = if UIBloxConfig.fixScrollBarLayout10ft
			then styleProps.paddingStartEnd
			else tokens.Global.Space_50,
		handleWidth = styleProps.handleWidth,
		handleColor = {
			Color = tokens.Semantic.Color.Ui.Emphasis.Color3,
			Transparency = tokens.Semantic.Color.Ui.Emphasis.Transparency,
		},
		handleCornerRadius = tokens.Semantic.Radius.Circle,
		handleIcon = styleProps.handleIcon,
		handleIconColor = styleProps.handleIconColor,
		handleIconSize = styleProps.handleIconSize,
		onDragging = self.onScrollBarDragging,

		viewSize = self.viewSize,
		canvasSize = self.mainCanvasSize,
		canvasPosition = self.getMainCanvasPosition(),
	})
end

function VerticalScrollView:renderWithProviders(stylePalette, getSelectionCursor)
	local theme = stylePalette.Theme
	local position = self.props.position
	local size = self.props.size
	local layoutOrder = self.props.layoutOrder
	local canvasSizeY = self.props.canvasSizeY
	local automaticSize = self.props.useAutomaticCanvasSize and Enum.AutomaticSize.Y or nil
	local isGamepadFocusable = self.props.isGamepadFocusable
	local scrollBarThickness = self.state.scrollBarThickness
	local scrollingEnabled = self.props.scrollingEnabled

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Position = position,
		Size = size,
		LayoutOrder = layoutOrder,
		ClipsDescendants = true,

		[Roact.Ref] = self.parentFrameRef,
	}, {
		MainCanvas = Roact.createElement(isGamepadFocusable and Focusable.ScrollingFrame or "ScrollingFrame", {
			Active = false,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Size = UDim2.fromScale(1, 1),
			ElasticBehavior = self.props.elasticBehavior,
			-- ScrollingFrame Specific
			CanvasSize = UDim2.new(UDim.new(1, 0), canvasSizeY),
			AutomaticCanvasSize = automaticSize,
			CanvasPosition = if UIBloxConfig.useNewScrollBar then self.mainCanvasPosition else nil,

			ScrollingEnabled = scrollingEnabled,
			ScrollingDirection = Enum.ScrollingDirection.Y,

			--hide scroll bar
			ScrollBarImageTransparency = 1,
			ScrollBarThickness = 0,

			Selectable = self.props.selectable,
			SelectionImageObject = getSelectionCursor(CursorKind.RoundedRect),
			onFocusGained = isGamepadFocusable and self.onGamepadFocused or nil,
			onFocusLost = isGamepadFocusable and self.onGamepadFocusLost or nil,

			NextSelectionLeft = self.props.NextSelectionLeft,
			NextSelectionRight = self.props.NextSelectionRight,
			NextSelectionUp = self.props.NextSelectionUp,
			NextSelectionDown = self.props.NextSelectionDown,

			-- https://jira.rbx.com/browse/MOBLUAPP-2451
			-- TODO: 1.) Currently code assumes that Mouse is on desktop and touch is on mobile
			--		On a mac touch pad is reported as mouse not as touch
			--		No sure how many users use mouse on a phone
			-- TODO: 2.) how to handle controller actions - when we do this,
			--		we should make this part of the code platform specific
			[Roact.Event.InputBegan] = self.inputBegan,
			[Roact.Event.InputEnded] = self.inputEnded,
			[Roact.Change.CanvasPosition] = self.canvasPosition,
			[Roact.Change.AbsoluteCanvasSize] = self.onMainCanvasSizeChange,
			[Roact.Change.CanvasSize] = self.props[Roact.Change.CanvasSize],

			[Roact.Ref] = self.props.scrollingFrameRef,

			[Roact.Change.AbsoluteSize] = if UIBloxConfig.useNewScrollBar then self.onViewSizeChange else nil,
			[Roact.Event.SelectionChanged] = if isGamepadFocusable and UIBloxConfig.useNewScrollBar
				then self.onSelectionChanged
				else nil,
		}, self.props[Roact.Children]),

		ScrollBar = if UIBloxConfig.useNewScrollBar
			then self:renderScrollBar(stylePalette)
			else Roact.createElement("ScrollingFrame", {
				Active = false,
				Size = UDim2.new(0, SCROLL_BAR_THICKNESS, 1, 0),
				AnchorPoint = Vector2.new(1, 0),
				Position = UDim2.new(1, -SCROLL_BAR_RIGHT_PADDING, 0, 0),

				CanvasSize = self.getMainCanvasSize(),
				CanvasPosition = self.getMainCanvasPosition(),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,

				ScrollBarImageColor3 = theme.UIEmphasis.Color,
				ScrollBarImageTransparency = self.scrollBarImageTransparency,
				ScrollBarThickness = scrollBarThickness,
				ScrollingDirection = Enum.ScrollingDirection.Y,

				ScrollingEnabled = false,
			}),
	})
end

function VerticalScrollView:render()
	return withStyle(function(stylePalette)
		return withSelectionCursorProvider(function(getSelectionCursor)
			return self:renderWithProviders(stylePalette, getSelectionCursor)
		end)
	end)
end

function VerticalScrollView:willUnmount()
	self.disconnectWaitToHideSidebar()
end

return Roact.forwardRef(function(props, ref)
	return Roact.createElement(VerticalScrollView, Cryo.Dictionary.join(props, { scrollingFrameRef = ref }))
end)
