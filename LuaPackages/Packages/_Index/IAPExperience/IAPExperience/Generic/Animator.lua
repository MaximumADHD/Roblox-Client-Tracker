local LocalizationService = game:GetService("LocalizationService")

local ProductPurchaseRoot = script.Parent
local IAPExperienceRoot = ProductPurchaseRoot.Parent
local Packages = IAPExperienceRoot.Parent
local LocaleProvider = require(IAPExperienceRoot.Locale.LocaleProvider)

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

	animateDown: boolean?,

	onShown: () -> any?,
	onHidden: () -> any?,

	renderChildren: () -> any,

	ZIndex: number?,
}

function Animator:init()
	self.state = {
		shouldRenderChildren = self.props.shouldShow,
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
				shouldRenderChildren = false,
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
				shouldRenderChildren = props.shouldShow,
			})
		end
		self.motor:setGoal(Otter.spring(props.shouldShow and 0 or 1, SPRING_CONFIG))
	end
end

function Animator:willUnmount()
	self.motor:destroy()
end

function Animator:renderWithoutLocale()
	local props: Props = self.props

	if props.shouldAnimate then
		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
			Position = self.animationProgress:map(function(value)
				if props.animateDown then
					return UDim2.new(0, 0, -1 * value, 0)
				else
					return UDim2.new(0, 0, 1 * value, 0)
				end
			end),
			ZIndex = props.ZIndex,
		}, self.state.shouldRenderChildren and props.renderChildren() or nil)
	else
		if props.shouldShow then
			return props.renderChildren()
		else
			return nil
		end
	end
end

function Animator:render()
	-- TODO(UBIQUITY-666): Explore the option to use the generic LocaleProvider from Universal App
	-- And deprecate this provider from IAPExperience package.
	-- Have to wrap it here to make the CentralOverlay work with this module.
	return Roact.createElement(LocaleProvider, {
		locale = LocalizationService and LocalizationService.RobloxLocaleId,
	}, {
		self:renderWithoutLocale()
	})
end

return Animator
