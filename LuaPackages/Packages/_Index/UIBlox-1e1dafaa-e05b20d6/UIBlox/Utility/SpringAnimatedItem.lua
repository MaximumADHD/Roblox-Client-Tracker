--[[
	Creates a Roact component which will automatically animate.
	The animations are created with Otter springs.

	Example:
		To create a frame whose position animates up / down:
		AnimatedFrame = Roact.createElement(SpringAnimatedItem.AnimatedFrame, {
			regularProps = {
				Size = ...,
				BackgroundColor3 = ...,
			},
			animatedValues = {
				positionY = goal,
			},
			mapValuesToProps = function(values)
				return {
					Position = UDim2.new(0, 0, 0, values.positionY),
				}
			end,
		})
		Whenever goal changes, the frame will animate toward the new position.
]]

local Packages = script.Parent.Parent.Parent

local Otter = require(Packages.Otter)
local Roact = require(Packages.Roact)
local Cryo = require(Packages.Cryo)
local t = require(Packages.t)

local PropTypes = t.intersection(
	t.strictInterface({
		-- Values in this table will be animated with Otter.
		animatedValues = t.table,

		-- This function describes how the animated values should be converted to
		-- Roblox properties.
		mapValuesToProps = t.callback,

		-- Options to pass to Otter's spring configuration
		springOptions =  t.optional(t.table),

		-- Called when the animation is complete
		onComplete = t.optional(t.callback),

		-- Props to pass to the inner component.
		regularProps = t.table,

		-- Children passed in by Roact
		[Roact.Children] = t.optional(t.table),
	}),
	function(props)
		if props[Roact.Children] ~= nil and props.regularProps[Roact.Children] ~= nil then
			return false, "Children must be specified in one place, but the [Roact.Children] key was found" ..
				" in both props and props.regularProps on SpringAnimatedItem."
		end

		return true
	end
)

local SpringAnimatedItem = {}

function SpringAnimatedItem.wrap(component)
	local AnimatedComponent = Roact.PureComponent:extend(string.format("SpringAnimatedItem(%s)",
		tostring(component)))

	AnimatedComponent.defaultProps = {
		regularProps = {},
	}

	function AnimatedComponent:init()
		self.ref = self.props.regularProps[Roact.Ref] or Roact.createRef()

		self.applyAnimatedValues = function(values)
			local rbx = self.ref.current
			if rbx == nil then
				return
			end

			local mapValuesToProps = self.props.mapValuesToProps

			local rbxProps = mapValuesToProps(values)
			for key, value in pairs(rbxProps) do
				rbx[key] = value
			end
		end

		self.onComplete = function()
			if self.props.onComplete then
				self.props.onComplete()
			end
		end

		self.motor = nil
	end

	function AnimatedComponent:didMount()
		local animatedValues = self.props.animatedValues

		-- Apply initial values
		self.applyAnimatedValues(animatedValues)

		-- Set up motor
		self.motor = Otter.createGroupMotor(animatedValues)
		self.motor:onStep(function(newValues)
			self.applyAnimatedValues(newValues)
		end)
		self.motor:onComplete(self.onComplete)
		self.motor:start()
	end

	function AnimatedComponent:willUpdate(newProps)
		if self.props.regularProps[Roact.Ref] ~= newProps.regularProps[Roact.Ref] and
			newProps.regularProps[Roact.Ref] ~= nil then
			self.ref = newProps.regularProps[Roact.Ref]
		end
	end

	function AnimatedComponent:render()
		assert(PropTypes(self.props))

		local regularProps = self.props.regularProps
		local props = Cryo.Dictionary.join(regularProps, {
			[Roact.Ref] = self.ref,
			[Roact.Children] = self.props[Roact.Children],
		})

		return Roact.createElement(component, props)
	end

	function AnimatedComponent:didUpdate(oldProps)
		-- If the animatedValues changed, set new goals for the motor so they animate.
		if self.props.animatedValues ~= oldProps.animatedValues then
			local goals = {}
			for key, newValue in pairs(self.props.animatedValues) do
				local springOptions = self.props.springOptions -- nil means default
				goals[key] = Otter.spring(newValue, springOptions)
			end
			self.motor:setGoal(goals)
		end
	end

	function AnimatedComponent:willUnmount()
		self.motor:destroy()
		self.motor = nil
	end

	return AnimatedComponent
end

SpringAnimatedItem.AnimatedFrame = SpringAnimatedItem.wrap("Frame")
SpringAnimatedItem.AnimatedScrollingFrame = SpringAnimatedItem.wrap("ScrollingFrame")
SpringAnimatedItem.AnimatedImageLabel = SpringAnimatedItem.wrap("ImageLabel")
SpringAnimatedItem.AnimatedTextButton = SpringAnimatedItem.wrap("TextButton")
SpringAnimatedItem.AnimatedUIScale = SpringAnimatedItem.wrap("UIScale")

return SpringAnimatedItem
