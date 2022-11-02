-- This component is used to create an intro scroll animation if the current menu is wider than what can be displayed, to indicate
-- to the user that there are more menu options available than what is visible. It does not render anything, but rather
-- automatically causes the scrolling frame passed in via scrollingFrameRef to update its scroll position accordingly.
local Packages = script.Parent.Parent.Parent.Parent.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local Otter = require(Packages.Otter)

local MAX_AUTO_SCROLL_PERCENTAGE = 0.25

local ANIMATION_SPRING_SETTINGS = {
	dampingRatio = 1,
	frequency = 3.5,
}

local IntroScroll = Roact.PureComponent:extend("IntroScroll")

IntroScroll.validateProps = t.strictInterface({
	childWidgetIndex = t.number,
	scrollingFrameRef = t.table, --(RoactRef) Reference to scrollingframe housing this component,
	updateCanvasPosition = t.callback, --(RoactBinding update function) Modifies binding in parent component to move scrollingframe,
})

function IntroScroll:init()
	self.motor = Otter.createSingleMotor(0)
	self.motor:onStep(function(newValue)
		self.props.updateCanvasPosition(Vector2.new(newValue, 0))
	end)
end

function IntroScroll:didUpdate(previousProps, _)
	if self.props.childWidgetIndex and self.props.childWidgetIndex ~= previousProps.childWidgetIndex then
		local scrollingFrame = self.props.scrollingFrameRef.current
		local amount = math.clamp(
			scrollingFrame.AbsoluteCanvasSize.X - scrollingFrame.AbsoluteSize.X,
			0,
			scrollingFrame.AbsoluteSize.X * MAX_AUTO_SCROLL_PERCENTAGE
		)
		-- Let's set the motor value so the menu will start slightly scrolled to the left to reveal additional options instantly.
		self.motor:setGoal(Otter.instant(amount))
		self.motor:step(0)
		-- Now let's set the goal to 0, using the spring animation settings to initiate a smooth scroll back to 0.
		self.motor:setGoal(self:getGoal())
	end
end

function IntroScroll:getGoal(goal)
	return Otter.spring(0, ANIMATION_SPRING_SETTINGS)
end

function IntroScroll:render()
	return nil
end

function IntroScroll:willUnmount()
	if self.motor then
		self.motor:destroy()
		self.motor = nil
	end
end

return IntroScroll
