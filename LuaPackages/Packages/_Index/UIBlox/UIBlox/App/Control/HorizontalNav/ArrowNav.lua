--!nonstrict
--[[
	Component used for each of the left and right navigation arrows
	in an ArrowFrame.

	Clicking and holding down these arrows will scroll the content in
	the associated ScrollingListWithArrowsAndGradient.
]]
local RunService = game:GetService("RunService")

local Control = script.Parent.Parent
local App = Control.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local Core = UIBlox.Core

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local Otter = require(Packages.Otter)
local ImageSetComponent = require(Core.ImageSet.ImageSetComponent)
local ImageSetButton = ImageSetComponent.Button
local withStyle = require(Core.Style.withStyle)
local NavigationDirection = require(script.Parent.NavigationDirection)

local ARROW_SIZE = 36

local SCROLL_CONSTANT = 500
local ADDITIONAL_SCROLL_PERCENTAGE = 0.4

local ANIMATION_SPRING_SETTINGS = {
	dampingRatio = 1,
	frequency = 3.5,
}

local ArrowNav = Roact.PureComponent:extend("ArrowNav")

ArrowNav.validateProps = t.intersection(
	t.strictInterface({
		AnchorPoint = t.optional(t.Vector2),
		Position = t.optional(t.UDim2),
		Image = t.table,
		Visible = t.optional(t.union(t.boolean, t.table)),
		navDirection = t.optional(t.userdata), -- determine the direction of the navigation (Left / Right)
		onPressHoldInputBegan = t.optional(t.callback), -- Overrides default functionality for what to do on button press and hold began
		onPressHoldInputEnded = t.optional(t.callback), -- Overrides default functionality for what to do on button press and hold end

		--[[Contains information necessary for using the default functionality if not using
		onPressHoldInputBegan and onPressHoldInputEnded props for functionality]]
		defaultUseProps = t.optional(t.strictInterface({
			scrollingFrameRef = t.table, --(RoactRef) Reference to scrollingframe housing this component,
			-- If all your buttons are the same size and you know how many there will be, just set
			-- buttonWidth and numButtons.
			-- If you have variable-sized buttons you have to set buttonRefs.
			-- The underlying code will only use buttonRefs if buttonWidth and numButtons are not set.
			buttonRefs = t.optional(t.table), --(table of RoactRefs) table of references to the button contents within the scrollingframe,
			buttonWidth = t.optional(t.number),
			numButtons = t.optional(t.number),
			padOutsideEdges = t.optional(t.boolean),
			buttonPadding = t.number, -- amount of padding between the buttons,
			updateCanvasPosition = t.callback, --(RoactBinding update function) Modifies binding in parent component to move scrollingframe,
		})),
	}),
	function(props)
		if props.defaultUseProps then
			if props.defaultUseProps.buttonRefs ~= nil then
				if props.defaultUseProps.buttonWidth ~= nil then
					return false, "Cannot set both buttonWidth and buttonRefs"
				end
				if props.defaultUseProps.numButtons ~= nil then
					return false, "Cannot set both numButtons and buttonRefs"
				end
			end
			if props.defaultUseProps.buttonWidth ~= nil and props.defaultUseProps.numButtons == nil then
				return false, "If setting buttonWidth must also set numButtons"
			end
			if props.defaultUseProps.buttonWidth == nil and props.defaultUseProps.numButtons ~= nil then
				return false, "If setting numButtons must also set buttonWidth"
			end
			if
				props.defaultUseProps.buttonRefs == nil
				and props.defaultUseProps.buttonWidth == nil
				and props.defaultUseProps.numButtons == nil
			then
				return false, "Must set either buttonRefs or (buttonWidth and numButtons)"
			end
		end
		return true
	end
)

ArrowNav.defaultProps = {
	AnchorPoint = Vector2.new(0, 0),
	Position = UDim2.new(0, 0, 0, 0),
	Visible = true,
}

function ArrowNav:init()
	self.holdConn = nil
	self.timeOfInputBegan = 0

	self.handleInputBegan = function(rbx, inputObject)
		local navDirection = self.props.navDirection
		if self.props.onPressHoldInputBegan then
			self.props.onPressHoldInputBegan(inputObject, navDirection)
		else
			self:onPressHoldInputBegan(inputObject, navDirection)
		end
	end

	self.handleInputEnded = function(rbx, inputObject)
		local navDirection = self.props.navDirection
		if self.props.onPressHoldInputEnded then
			self.props.onPressHoldInputEnded(inputObject, navDirection)
		else
			self:onPressHoldInputEnded(inputObject, navDirection)
		end
	end
end

function ArrowNav:getGoal(navDirection)
	return Otter.spring(self:getScrollToLocation(navDirection), ANIMATION_SPRING_SETTINGS)
end

function ArrowNav:didMount()
	self:setMotor(0)
end

function ArrowNav:setMotor(initValue: number)
	self.motor = Otter.createSingleMotor(initValue)
	self.motor:onStep(function(newValue)
		self.props.defaultUseProps.updateCanvasPosition(Vector2.new(newValue, 0))
	end)
	self.motor:onComplete(function(newValue)
		self.props.defaultUseProps.updateCanvasPosition(Vector2.new(newValue, 0))
	end)
end

function ArrowNav:render()
	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme
		return Roact.createElement(ImageSetButton, {
			AnchorPoint = self.props.AnchorPoint,
			Position = self.props.Position,
			Image = self.props.Image,
			Visible = self.props.Visible,
			BackgroundTransparency = 1,
			ImageColor3 = theme.IconEmphasis.Color,
			Size = UDim2.fromOffset(ARROW_SIZE, ARROW_SIZE),
			[Roact.Event.InputBegan] = self.handleInputBegan,
			[Roact.Event.InputEnded] = self.handleInputEnded,
		})
	end)
end

function ArrowNav:willUnmount()
	self:disconnectHoldConn()
	if self.motor then
		self.motor:destroy()
		self.motor = nil
	end
end

function ArrowNav:getNewCanvasPosition(xPos: number)
	local scrollingFrame = self.props.defaultUseProps.scrollingFrameRef.current
	return scrollingFrame.CanvasPosition + Vector2.new(xPos, 0)
end

function ArrowNav:disconnectHoldConn()
	if self.holdConn == nil then
		return
	end
	self.holdConn:Disconnect()
	self.holdConn = nil
end

function ArrowNav:onPressHoldInputBegan(inputObj, navDirection)
	if inputObj.UserInputState ~= Enum.UserInputState.Begin then
		return
	end
	self.timeOfInputBegan = tick()
	self:disconnectHoldConn()
	self.holdConn = RunService.RenderStepped:connect(function(delta)
		local secondsPassed = (tick() - self.timeOfInputBegan)
		local leftDirection = NavigationDirection.IsLeft
		local direction = navDirection == leftDirection and -1 or 1
		local newCanvasPosition = self:getNewCanvasPosition(direction * SCROLL_CONSTANT * delta * secondsPassed ^ 2)
		self.props.defaultUseProps.updateCanvasPosition(newCanvasPosition)
	end)
end

function ArrowNav:onPressHoldInputEnded(inputObj, navDirection)
	if inputObj.UserInputState ~= Enum.UserInputState.End then
		return
	end
	local scrollingFrameRef = self.props.defaultUseProps.scrollingFrameRef.current
	if tick() - self.timeOfInputBegan <= 0.5 then
		--reset motor in case of shift from Mouse/Keyboard input and updating canvasPosition with other input (ex: Touch)
		if self.motor then
			self.motor:destroy()
		end
		self:setMotor(scrollingFrameRef.CanvasPosition.X)
		self.motor:setGoal(self:getGoal(navDirection))
	else
		self.motor:setGoal(Otter.instant(scrollingFrameRef.CanvasPosition.X))
	end
	self:disconnectHoldConn()
end

function ArrowNav:getScrollToLocation(navDirection): number
	local buttonSizes = self:getButtonSizes()

	if navDirection == NavigationDirection.IsLeft then
		return self:getScrollToLeftLocation(buttonSizes)
	else
		return self:getScrollToRightLocation(buttonSizes)
	end
end

function ArrowNav:getButtonSizes()
	local buttonRefs = self.props.defaultUseProps.buttonRefs
	local buttonWidth = self.props.defaultUseProps.buttonWidth
	local numButtons = self.props.defaultUseProps.numButtons

	if buttonWidth and numButtons then
		return table.create(numButtons, buttonWidth)
	end

	local buttonSizes = {}
	for _, btnRef in ipairs(buttonRefs) do
		local btnSize = btnRef.current and btnRef.current.AbsoluteSize.X or 0
		table.insert(buttonSizes, btnSize)
	end
	return buttonSizes
end

function ArrowNav:getScrollToLeftLocation(buttonSizes)
	local scrollingFrame = self.props.defaultUseProps.scrollingFrameRef.current
	local buttonPadding = self.props.defaultUseProps.buttonPadding

	local scrollToLeft = scrollingFrame.CanvasPosition.X - scrollingFrame.AbsoluteSize.X * ADDITIONAL_SCROLL_PERCENTAGE

	local scrollTo = 0
	for _, btnSize in ipairs(buttonSizes) do
		if scrollTo + btnSize + buttonPadding >= scrollToLeft then
			return scrollTo
		end
		scrollTo += btnSize + buttonPadding
	end

	return scrollTo
end

function ArrowNav:getScrollToRightLocation(buttonSizes)
	local scrollingFrame = self.props.defaultUseProps.scrollingFrameRef.current
	local buttonPadding = self.props.defaultUseProps.buttonPadding
	local padOutsideEdges = self.props.defaultUseProps.padOutsideEdges

	local scrollToRight = scrollingFrame.CanvasPosition.X + scrollingFrame.AbsoluteSize.X * ADDITIONAL_SCROLL_PERCENTAGE

	--this version of scrollTo tries to find the right edge of the menu by accumulating the buttonSizes
	--plus buttonPadding from left to right until it goes past the right edge of the menu. We pre-subtract
	--the scrollingFrame.AbsoluteSize.X from the scrollTo to avoid having to do this when we return.
	local scrollTo = -scrollingFrame.AbsoluteSize.X
	if padOutsideEdges then
		scrollTo += buttonPadding
	end
	for _, btnSize in ipairs(buttonSizes) do
		if scrollTo > scrollToRight then
			return scrollTo
		end
		scrollTo += btnSize + buttonPadding
	end

	return scrollTo
end

return ArrowNav
