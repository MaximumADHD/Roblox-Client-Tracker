local Root = script.Parent.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local Roact = PurchasePromptDeps.Roact
local Otter = PurchasePromptDeps.Otter
local t = PurchasePromptDeps.t

local Animator = Roact.Component:extend(script.Name)

local SPRING_CONFIG = {
	dampingRatio = 1,
	frequency = 1.6,
}

Animator.validateProps = t.interface({
	shouldShow = t.boolean,
	
	onShown = t.optional(t.callback),
	onHidden = t.optional(t.callback),
})

function Animator:init()
	local animationProgress, setProgress = Roact.createBinding(1)

	self.motor = Otter.createSingleMotor(1)
	self.motor:start()

	self.motor:onStep(setProgress)
	self.animationProgress = animationProgress

	self.motor:onComplete(function()
		if self.props.shouldShow then
			if self.props.onShown then
				self.props.onShown()
			end
		else
			if self.props.onHidden then
				self.props.onHidden()
			end
		end
	end)

	self.motor:setGoal(Otter.spring(self.props.shouldShow and 0 or 1, SPRING_CONFIG))
end

function Animator:didUpdate(prevProps, prevState)
	if prevProps.shouldShow ~= self.props.shouldShow then
		self.motor:setGoal(Otter.spring(self.props.shouldShow and 0 or 1, SPRING_CONFIG))
	end
end

function Animator:render()
	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
		Position = self.animationProgress:map(function(value)
			return UDim2.new(0, 0, -1 * value, 0)
		end),
	}, self.props[Roact.Children])
end

return Animator
