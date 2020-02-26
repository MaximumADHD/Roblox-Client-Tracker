local AnimationRoot = script.Parent
local Core = AnimationRoot.Parent
local UIBlox = Core.Parent
local Packages = UIBlox.Parent
local Roact = require(Packages.Roact)
local t = require(UIBlox.Parent.t)
local enumerateValidator = require(UIBlox.Utility.enumerateValidator)
local SlidingDirection = require(AnimationRoot.Enum.SlidingDirection)
local SpringAnimatedItem = require(UIBlox.Utility.SpringAnimatedItem)

local ANIMATION_SPRING_SETTINGS = {
	dampingRatio = 1,
	frequency = 4,
}

-- A transparent frame covers the whole page, represent current navigated page
local SlidingContainer = Roact.PureComponent:extend("SlidingContainer")

local InitialPosition = {
	-- Slide up from bottom of page
	[SlidingDirection.Up] = UDim2.new(0, 0, 1, 0),

	-- Slide down from top of page
	[SlidingDirection.Down] = UDim2.new(0, 0, -1, 0),

	-- Slide left from right of page
	[SlidingDirection.Left] = UDim2.new(1, 0, 0, 0),

	-- Slide right from left of page
	[SlidingDirection.Right] = UDim2.new(-1, 0, 0, 0),
}

local validateProps = t.strictInterface({
	layoutOrder = t.optional(t.integer),
	onComplete = t.optional(t.callback),
	show = t.optional(t.boolean),
	slidingDirection = enumerateValidator(SlidingDirection),
	springOptions = t.optional(t.table),
	[Roact.Children] = t.optional(t.table),
})

SlidingContainer.defaultProps = {
	springOptions = ANIMATION_SPRING_SETTINGS,
}

function SlidingContainer:render()
	assert(validateProps(self.props))

	local show = self.props.show
	local slidingDirection = self.props.slidingDirection

	return Roact.createElement(SpringAnimatedItem.AnimatedFrame, {
		springOptions = self.props.springOptions,
		animatedValues = {
			step = show and 0 or 1,
		},
		mapValuesToProps = function(values)
			local position = InitialPosition[slidingDirection]
			return {
				Position = UDim2.new(position.X.Scale * values.step, 0, position.Y.Scale * values.step, 0),
			}
		end,
		regularProps = {
			BackgroundTransparency = 1,
			LayoutOrder = self.props.layoutOrder,
			Position = show and InitialPosition[slidingDirection] or UDim2.new(0, 0, 0, 0),
			Size = UDim2.new(1, 0, 1, 0),
		},
		onComplete = self.props.onComplete,
		[Roact.Children] = self.props[Roact.Children],
	})
end

return SlidingContainer
