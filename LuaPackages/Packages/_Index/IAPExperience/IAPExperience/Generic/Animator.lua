local ProductPurchaseRoot = script.Parent
local IAPExperienceRoot = ProductPurchaseRoot.Parent
local Packages = IAPExperienceRoot.Parent

local Roact = require(Packages.Roact)
local Otter = require(Packages.Otter)

local Animator = Roact.Component:extend(script.Name)

local SPRING_CONFIG = {
	dampingRatio = 1,
	frequency = 1.6,
}

type Props = {
	shouldAnimate: boolean,
	shouldShow: boolean,

	onShown: ()->any?,
	onHidden: ()->any?,

	[Roact.Children]: any,
}

function Animator:init()
	self.state = {
		shouldRenderChildren = self.props.shouldShow;
	}

	local animationProgress, setProgress = Roact.createBinding(1)

	self.motor = Otter.createSingleMotor(1)
	self.motor:start()

	self.motor:onStep(setProgress)
	self.animationProgress = animationProgress

	self.motor:onComplete(function()
		local props: Props = self.props
		if props.shouldShow then
			if props.onShown ~= nil then
				props.onShown()
			end
		else
			self:setState({
				shouldRenderChildren = false
			})
			if props.onHidden ~= nil then
				props.onHidden()
			end
		end
	end)

	self.motor:setGoal(Otter.spring(self.props.shouldShow and 0 or 1, SPRING_CONFIG))
end

function Animator:didUpdate(prevProps: Props, prevState)
	local props: Props = self.props

	if prevProps.shouldShow ~= props.shouldShow then
		if props.shouldShow then
			self:setState({
				shouldRenderChildren = props.shouldShow
			})
		end
		self.motor:setGoal(Otter.spring(props.shouldShow and 0 or 1, SPRING_CONFIG))
	end
end

function Animator:willUnmount()
	self.motor:destroy()
end

function Animator:render()
	local props: Props = self.props

	if props.shouldAnimate then
		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
			Position = self.animationProgress:map(function(value)
				return UDim2.new(0, 0, -1 * value, 0)
			end),
		}, self.state.shouldRenderChildren and self.props[Roact.Children] or nil)
	else
		if self.props.shouldShow then
			return self.props[Roact.Children]
		else
			return nil
		end
	end
end

return Animator
