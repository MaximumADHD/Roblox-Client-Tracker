--[[
	Steps forward a spring one step. Handles rounding errors for us.

	This function is similar to React Motion's 'stepper' function:
	https://github.com/chenglou/react-motion/blob/167c1d19c02c47af64c8c07aeee760d9b3c7559a/src/stepper.js

	It's based off of the simple Damped Harmonic Motion equation:

		x" + cx' + kx = 0
		x" = -cx' - kx

	We simplify objects to have a mass of 1.
]]

return function(deltaTime, position, velocity, destination, stiffness, damping, precision)
	local displacement = position - destination
	local springForce = -stiffness * displacement
	local dampForce = -damping * velocity

	local acceleration = springForce + dampForce
	local newVelocity = velocity + acceleration * deltaTime
	local newPosition = position + velocity * deltaTime

	-- This allows us to put the simulation to sleep once it reaches its goal.
	if math.abs(newVelocity) < precision and math.abs(destination - newPosition) < precision then
		return destination, 0
	end

	return newPosition, newVelocity
end