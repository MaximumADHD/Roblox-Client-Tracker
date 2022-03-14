local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

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

local getPageMargin = require(UIBlox.App.Container.getPageMargin)

local SCROLL_BAR_RIGHT_PADDING = 4
local MOUSE_SCROLL_BAR_THICKNESS = 8
local TOUCH_OR_CONTROLLER_SCROLL_BAR_THICKNESS = 2
local CANVAS_SIZE_X = UDim.new(0, 0)
local HIDE_SIDEBAR_AFTER_IN_SECONDS = 0.70
local SPRING_PARAMETERS = {
	frequency = 3,
	dampingRatio = 1.5,
}

local VerticalScrollView = Roact.Component:extend("VerticalScrollView")

VerticalScrollView.defaultProps = {
	-- Frame Props
	size = UDim2.new(1, 0, 1, 0),
	-- ScrollingFrame Props
	canvasSizeY = UDim.new(2, 0),
	useAutomaticCanvasSize = false,
	isGamepadFocusable = false,
}

VerticalScrollView.validateProps = t.strictInterface({
	-- Frame Props
	size = t.optional(t.UDim2),
	position = t.optional(t.UDim2),
	elasticBehavior = t.optional(t.EnumItem),

	-- ScrollingFrame Props
	canvasSizeY = t.optional(t.UDim),
	useAutomaticCanvasSize = t.optional(t.boolean),
	paddingHorizontal = t.optional(t.number),
	isGamepadFocusable = t.optional(t.boolean),

	-- Optional passthrough props for the scrolling frame
	[Roact.Change.CanvasPosition] = t.optional(t.callback),
	[Roact.Change.CanvasSize] = t.optional(t.callback),
	scrollingFrameRef = t.optional(t.table),

	-- Optional gamepad props
	NextSelectionLeft = t.optional(t.table),
	NextSelectionRight = t.optional(t.table),
	NextSelectionUp = t.optional(t.table),
	NextSelectionDown = t.optional(t.table),

	-- Children
	[Roact.Children] = t.optional(t.table),
})

function VerticalScrollView:init()
	self:setState({
		scrollBarThickness = 0,
		scrollingWithTouch = false,
	})

	self.scrollBarImageTransparency, self.updateScrollBarImageTransparency = Roact.createBinding(0)
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
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			self.disconnectWaitToHideSidebar()
			self:setState({
				scrollBarThickness = MOUSE_SCROLL_BAR_THICKNESS,
			})
			self.scrollBarImageTransparencyMotor:setGoal(Otter.instant(0))
		end
	end
	self.inputEnded = function(instance, input)
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
				scrollBarThickness = TOUCH_OR_CONTROLLER_SCROLL_BAR_THICKNESS,
			})
			self.waitToHideSidebarConnection = RunService.Heartbeat:Connect(self.waitToHideSidebar)
		end

		if self.props[Roact.Change.CanvasPosition] then
			self.props[Roact.Change.CanvasPosition](rbx)
		end
	end

	self.onGamepadFocused = function()
		self.scrollBarImageTransparencyMotor:setGoal(Otter.instant(0))
		self:setState({
			scrollBarThickness = TOUCH_OR_CONTROLLER_SCROLL_BAR_THICKNESS,
		})
	end

	self.onGamepadFocusLost = function()
		self.scrollBarImageTransparencyMotor:setGoal(Otter.instant(1))
	end

	self.parentFrameRef = Roact.createRef()
	self.paddingBinding, self.updatePaddingBinding = Roact.createBinding(0)

	self.getPadding = function(offset)
		offset = offset or 0
		if self.props.paddingHorizontal then
			local paddingHorizontal = math.max(0, self.props.paddingHorizontal - offset)
			return UDim.new(0, paddingHorizontal)
		else
			return self.paddingBinding:map(function(absoluteWidth)
				return UDim.new(0, getPageMargin(absoluteWidth) - offset)
			end)
		end
	end
end

function VerticalScrollView:renderWithProviders(stylePalette, getSelectionCursor)
	local theme = stylePalette.Theme

	local canvasSizeY = self.props.canvasSizeY
	local children = self.props[Roact.Children] or {}
	local position = self.props.position
	local size = self.props.size

	local isGamepadFocusable = self.props.isGamepadFocusable

	local scrollBarThickness = self.state.scrollBarThickness

	local scrollingFrameChildren = Cryo.Dictionary.join({
		scrollingFrameInnerMargin = Roact.createElement("UIPadding", {
			PaddingLeft = self.getPadding(),
			PaddingRight = self.getPadding(SCROLL_BAR_RIGHT_PADDING),
		}),
	}, children)

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Position = position,
		Size = size,
		[Roact.Change.AbsoluteSize] = function(rbx)
			self.updatePaddingBinding(rbx.AbsoluteSize.X)
		end,
		[Roact.Ref] = self.parentFrameRef,
	}, {
		scrollingFrameOuterMargins = Roact.createElement("UIPadding", {
			PaddingRight = UDim.new(0, SCROLL_BAR_RIGHT_PADDING),
		}),
		scrollingFrame = Roact.createElement(isGamepadFocusable and Focusable.ScrollingFrame or "ScrollingFrame", {
			Active = true,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Size = UDim2.fromScale(1, 1),
			ElasticBehavior = self.props.elasticBehavior,
			-- ScrollingFrame Specific
			CanvasSize = UDim2.new(CANVAS_SIZE_X, canvasSizeY),
			AutomaticCanvasSize = self.props.useAutomaticCanvasSize and Enum.AutomaticSize.Y or nil,
			ScrollBarImageColor3 = theme.UIEmphasis.Color,
			ScrollBarImageTransparency = self.scrollBarImageTransparency,
			ScrollBarThickness = scrollBarThickness,
			ScrollingDirection = Enum.ScrollingDirection.Y,

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
			[Roact.Change.CanvasSize] = self.props[Roact.Change.CanvasSize],
			[Roact.Ref] = self.props.scrollingFrameRef,
		}, scrollingFrameChildren),
	})
end

function VerticalScrollView:render()
	return withStyle(function(stylePalette)
		return withSelectionCursorProvider(function(getSelectionCursor)
			return self:renderWithProviders(stylePalette, getSelectionCursor)
		end)
	end)
end

function VerticalScrollView:didMount()
	local rbx = self.parentFrameRef:getValue()
	if rbx then
		self.updatePaddingBinding(rbx.AbsoluteSize.X)
	end
end

function VerticalScrollView:willUnmount()
	self.disconnectWaitToHideSidebar()
end

return Roact.forwardRef(function(props, ref)
	return Roact.createElement(VerticalScrollView, Cryo.Dictionary.join(props, { scrollingFrameRef = ref }))
end)
