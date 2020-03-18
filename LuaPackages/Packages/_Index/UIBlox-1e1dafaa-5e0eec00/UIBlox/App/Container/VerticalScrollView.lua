local RunService = game:GetService("RunService")

local App = script.Parent.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Cryo = require(Packages.Cryo)
local Otter = require(Packages.Otter)
local Roact = require(Packages.Roact)
local t = require(Packages.t)

local withStyle = require(Packages.UIBlox.Core.Style.withStyle)

local TOTAL_MARGIN_WIDTH = 24
local SCROLL_BAR_RIGHT_MARGIN = 4
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
	canvasSizeY = UDim.new(2, 0)
}

VerticalScrollView.validateProps = t.strictInterface({
	-- Frame Props
	size = t.optional(t.UDim2),
	position = t.optional(t.UDim2),

	-- ScrollingFrame Props
	canvasSizeY = t.optional(t.UDim),

	-- Children
	[Roact.Children] = t.optional(t.table)
})

function VerticalScrollView:init()
	self:setState({
		scrollBarThickness = 0,
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
			self.waitToHideSidebarConnection:Disconnect()
		end
	end
	self.disconnectWaitToHideSidebar = function()
		if self.waitToHideSidebarConnection then
			self.waitToHideSidebarConnection:Disconnect()
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

		local scrollBarThickness = self.state.scrollBarThickness

		local scrollingFrameChildren = Cryo.Dictionary.join({
			scrollingFrameInnerMargin = Roact.createElement("UIPadding", {
				PaddingLeft = UDim.new(0,TOTAL_MARGIN_WIDTH),
				PaddingRight = UDim.new(0, TOTAL_MARGIN_WIDTH - SCROLL_BAR_RIGHT_MARGIN), }),
			},
			children
		)

		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Position = position,
			Size = size,
		}, {
			scrollingFrameOuterMargins = Roact.createElement("UIPadding", {
				PaddingRight = UDim.new(0, SCROLL_BAR_RIGHT_MARGIN),
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

				-- TODO: how to handle controller actions
				[Roact.Event.InputBegan] = function(instance, input)
					if input.UserInputType == Enum.UserInputType.MouseMovement then
						self.disconnectWaitToHideSidebar()
						self:setState({
							scrollBarThickness = MOUSE_SCROLL_BAR_THICKNESS,
						})
						self.scrollBarImageTransparencyMotor:setGoal(Otter.instant(0))
					elseif input.UserInputType == Enum.UserInputType.Touch then
						self.disconnectWaitToHideSidebar()
						self:setState({
							scrollBarThickness = TOUCH_OR_CONTROLLER_SCROLL_BAR_THICKNESS,
						})
						self.scrollBarImageTransparencyMotor:setGoal(Otter.instant(0))
					end
				end,
				[Roact.Event.InputEnded] = function(instance, input)
					if input.UserInputType == Enum.UserInputType.MouseMovement then
						self.disconnectWaitToHideSidebar()
						self.scrollBarImageTransparencyMotor:setGoal(Otter.instant(1))
					elseif input.UserInputType == Enum.UserInputType.Touch and
						-- because, we also receive Enum.UserInputState.Change here
						input.UserInputState == Enum.UserInputState.End
					then
						self.disconnectWaitToHideSidebar()
						-- in case user just touched the screen without swiping,
						-- set the lastTimeCanvasPositionChanged
						self.lastTimeCanvasPositionChanged = tick()
						self.waitToHideSidebarConnection = RunService.Heartbeat:Connect(self.waitToHideSidebar)
					end
				end,
				[Roact.Change.CanvasPosition] = function()
					self.lastTimeCanvasPositionChanged = tick()
				end,
			}, scrollingFrameChildren)
		})
	end)
end

function VerticalScrollView:willUnmount()
	if self.waitToHideSidebarConnection then
		self.waitToHideSidebarConnection:Disconnect()
	end
end

return VerticalScrollView
