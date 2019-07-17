--[[
	Creates a Roact component which will automatically animate.
	The animations are created with Otter springs.

	Props:
		animatedValues: (table) Values in this table will be animated with Otter.
		mapValuesToProps: (function) This function describes how the animated values should
			be converted to Roblox properties.
		springOptions : (table). For configuring the spring in Otter.
		onComplete : (function). Called when the animation is complete.
		regularProps: (table) All the other props your component needs should be put here.

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

local SpringAnimatedItem = {}

function SpringAnimatedItem.wrap(component)
	local AnimatedComponent = Roact.PureComponent:extend(string.format("SpringAnimatedItem(%s)",
		tostring(component)))

	AnimatedComponent.defaultProps = {
		regularProps = {},
	}

	local PropTypes = t.strictInterface({
		animatedValues = t.table,
		mapValuesToProps = t.callback,
		springOptions =  t.optional(t.table),
		onComplete = t.optional(t.callback),
		regularProps = t.table,
	})

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
SpringAnimatedItem.AnimatedImageLabel = SpringAnimatedItem.wrap("ImageLabel")
SpringAnimatedItem.AnimatedTextButton = SpringAnimatedItem.wrap("TextButton")
SpringAnimatedItem.AnimatedUIScale = SpringAnimatedItem.wrap("UIScale")

return SpringAnimatedItem
