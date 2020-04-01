local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local App = script.Parent.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Cryo = require(Packages.Cryo)
local Otter = require(Packages.Otter)
local Roact = require(Packages.Roact)
local t = require(Packages.t)

local withStyle = require(Packages.UIBlox.Core.Style.withStyle)

local PADDING_HORIZONTAL = 24
local SCROLL_BAR_RIGHT_PADDING = 4
local MOUSE_SCROLL_BAR_THICKNESS = 8
local TOUCH_OR_CONTROLLER_SCROLL_BAR_THICKNESS = 2
local CANVAS_SIZE_X = UDim.new(0, 0)
local HIDE_SIDEBAR_AFTER_IN_SECONDS = 0.70
local SPRING_PARAMETERS = {
	frequency = 3,
	dampingRatio = 1.5,
}

local VerticalScrollView = Roact.Component:extend()

VerticalScrollView.defaultProps = {
	-- Frame Props
	size = UDim2.new(1, 0, 1, 0),
	-- ScrollingFrame Props
	canvasSizeY = UDim.new(2, 0),
	paddingHorizontal = PADDING_HORIZONTAL,
}

VerticalScrollView.validateProps = t.strictInterface({
	-- Frame Props
	size = t.optional(t.UDim2),
	position = t.optional(t.UDim2),

	-- ScrollingFrame Props
	canvasSizeY = t.optional(t.UDim),
	paddingHorizontal = t.optional(t.numberMin(PADDING_HORIZONTAL/2)),

	-- Children
	[Roact.Children] = t.optional(t.table)
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
		local delta = currentTime  - self.lastTimeCanvasPositionChanged
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
end

function VerticalScrollView:render()
	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme

		local canvasSizeY = self.props.canvasSizeY
		local children = self.props[Roact.Children] or {}
		local position = self.props.position
		local size = self.props.size
		local paddingHorizontal = self.props.paddingHorizontal

		local scrollBarThickness = self.state.scrollBarThickness

		local scrollingFrameChildren = Cryo.Dictionary.join({
			scrollingFrameInnerMargin = Roact.createElement("UIPadding", {
				PaddingLeft = UDim.new(0,paddingHorizontal),
				PaddingRight = UDim.new(0, paddingHorizontal - SCROLL_BAR_RIGHT_PADDING), }),
			},
			children
		)

		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Position = position,
			Size = size,
		}, {
			scrollingFrameOuterMargins = Roact.createElement("UIPadding", {
				PaddingRight = UDim.new(0, SCROLL_BAR_RIGHT_PADDING),
			}),
			scrollingFrame = Roact.createElement("ScrollingFrame", {
				Active = true,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = UDim2.fromScale(1, 1),
				-- ScrollingFrame Specific
				CanvasSize = UDim2.new(CANVAS_SIZE_X, canvasSizeY),
				ScrollBarImageColor3 = theme.UIEmphasis.Color,
				ScrollBarImageTransparency = self.scrollBarImageTransparency,
				ScrollBarThickness = scrollBarThickness,
				ScrollingDirection = Enum.ScrollingDirection.Y,

				-- https://jira.rbx.com/browse/MOBLUAPP-2451
				-- TODO: 1.) Currently code assumes that Mouse is on desktop and touch is on mobile
				--		On a mac touch pad is reported as mouse not as touch
				--		No sure how many users use mouse on a phone
				-- TODO: 2.) how to handle controller actions - when we do this,
				--		we should make this part of the code platform specific
				[Roact.Event.InputBegan] = function(instance, input)
					if input.UserInputType == Enum.UserInputType.MouseMovement then
						self.disconnectWaitToHideSidebar()
						self:setState({
							scrollBarThickness = MOUSE_SCROLL_BAR_THICKNESS,
						})
						self.scrollBarImageTransparencyMotor:setGoal(Otter.instant(0))
					end
				end,
				[Roact.Event.InputEnded] = function(instance, input)
					if input.UserInputType == Enum.UserInputType.MouseMovement then
						self.disconnectWaitToHideSidebar()
						self.scrollBarImageTransparencyMotor:setGoal(Otter.instant(1))
					end
				end,
				[Roact.Change.CanvasPosition] = function()
					self.lastTimeCanvasPositionChanged = tick()
					if not self.waitToHideSidebarConnection	and
						UserInputService:GetLastInputType() == Enum.UserInputType.Touch
					then
						self.scrollBarImageTransparencyMotor:setGoal(Otter.instant(0))
						self:setState({
							scrollBarThickness = TOUCH_OR_CONTROLLER_SCROLL_BAR_THICKNESS,
						})
						self.waitToHideSidebarConnection = RunService.Heartbeat:Connect(self.waitToHideSidebar)
					end
				end,
			}, scrollingFrameChildren)
		})
	end)
end

function VerticalScrollView:willUnmount()
	self.disconnectWaitToHideSidebar()
end

return VerticalScrollView
