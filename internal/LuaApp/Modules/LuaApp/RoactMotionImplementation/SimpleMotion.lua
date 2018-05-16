--[[
	Implements motion for a single set of values and a single child object.

	Example:

		Roact.createElement(RoactMotion.SimpleMotion, {
			style = {
				x = RoactMotion.spring(10),
			},
			render = function(values)
				return Roact.createElement(MyThing, {
					x = x,
				})
			end
		})

	When the value passed to `RoactMotion.spring` changes, the rendered children
	will animate to the new value.
]]

local RunService = game:GetService("RunService")

local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Roact = require(Modules.Common.Roact)

local stepSpring = require(script.Parent.stepSpring)
local merge = require(script.Parent.merge)
local Config = require(script.Parent.Config)
local MotionType = require(script.Parent.MotionType)
local MotionSpecifier = require(script.Parent.MotionSpecifier)

local SimpleMotion = Roact.Component:extend("SimpleMotion")

local renderSteppedCallbacks = {}

RunService.RenderStepped:Connect(function(dt)
	for callback in pairs(renderSteppedCallbacks) do
		callback(dt)
	end
end)

function SimpleMotion:init()
	-- Build up a list of initial values to use
	-- First, we pull from 'style', which is a dictionary of specifiers
	-- We also initialize starting velocities for all motion specifiers here
	local startValues = {}
	local velocities = {}
	for key, value in pairs(self.props.style) do
		velocities[key] = 0
		startValues[key] = MotionSpecifier.extractValue(value)
	end

	-- ...and then we pull from defaultStyle, if it's given.
	-- This is just a dictionary of numbers
	if self.props.defaultStyle then
		for key, value in pairs(self.props.defaultStyle) do
			startValues[key] = value
		end
	end

	-- Setting resting to false will trigger the spring to re-evaluate its
	-- position and velocity based on newest props. When the spring enters a
	-- resting position, resting will be set to true.
	self.resting = false

	-- When wasResting = false and resting = true, the callback function
	-- onRested will be called.
	-- Setting it to true here because we don't want to trigger onRested
	-- when the spring is initialized and went to resting immediately.
	self.wasResting = true

	self.accumulator = 0
	self.state = {
		values = startValues,
		velocities = velocities,
	}
end

function SimpleMotion:render()
	return self.props.render(self.state.values)
end

function SimpleMotion:update(dt)
	if self.resting then
		return
	end

	local newValues = merge(self.state.values)
	local newVelocities = merge(self.state.velocities)
	local stateChanged = false

	-- We use a fixed update rate to make sure our springs are predictable.
	self.accumulator = self.accumulator + dt % Config.MAX_ACCUMULATION

	while self.accumulator >= Config.UPDATE_RATE do
		self.accumulator = self.accumulator - Config.UPDATE_RATE

		-- We should only rest if all values have almost reached their goals
		local shouldRest = true

		for key, targetSpecifier in pairs(self.props.style) do
			local targetType = MotionSpecifier.getType(targetSpecifier)

			local newPosition, newVelocity

			if targetType == MotionType.Instant then
				newPosition = targetSpecifier
				newVelocity = 0
				-- Instant MotionType should callback instantly after the move
				self.wasResting = false
			elseif targetType == MotionType.Spring then
				newPosition, newVelocity = stepSpring(
					Config.UPDATE_RATE * Config.TIME_FACTOR,
					newValues[key],
					newVelocities[key],
					targetSpecifier.value,
					targetSpecifier.stiffness,
					targetSpecifier.damping,
					targetSpecifier.precision
				)
			else
				error(("Unsupported MotionType %q"):format(targetType))
			end

			newValues[key] = newPosition
			newVelocities[key] = newVelocity

			if newPosition ~= self.state.values[key] or
				newVelocity ~= self.state.velocities[key] then
				stateChanged = true
			end

			-- Because 'stepSpring' does rounding for us, we don't have to
			-- worry about floating point errors.
			local realTargetValue = MotionSpecifier.extractValue(targetSpecifier)
			if newPosition ~= realTargetValue or newVelocity ~= 0 then
				shouldRest = false
			end
		end

		if shouldRest then
			self.resting = true
			self.accumulator = 0

			break
		end
	end

	if stateChanged then
		self:setState({
			values = newValues,
			velocities = newVelocities,
		})
	end

	if not self.wasResting and self.resting and self.props.onRested then
		self.props.onRested()
	end

	self.wasResting = self.resting
end

function SimpleMotion:didMount()
	self.renderCallback = function(dt)
		self:update(dt)
	end
	renderSteppedCallbacks[self.renderCallback] = true
end

function SimpleMotion:willUnmount()
	renderSteppedCallbacks[self.renderCallback] = nil
end

function SimpleMotion:willUpdate(newProps)
	if newProps == self.props then
		return
	end

	self.resting = false
end

return SimpleMotion