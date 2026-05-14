--!strict
local Packages = script.Parent.Parent
local React = require(Packages.React)
local Otter = require(Packages.Otter)
type Callback<T> = Otter.MotorCallback<T>
type Motor<G, V> = Otter.Motor<G, V>

type SubscribeToOnStep<V> = (Callback<V>) -> Otter.Unsubscribe
type ValueGroup = { [string]: number }

export type SetGoal<G> = (G) -> ()

local function useMotor<V, G>(initialValue: V, onStep: Callback<V>, onComplete: Callback<V>?): SetGoal<G>
	-- Initialize the motor and bound setGoal functions only once
	local motor = React.useRef(nil :: Motor<G, V>?)
	local boundSetGoal = React.useRef(nil :: SetGoal<G>?)

	if not motor.current then
		local newMotor: Motor<G, V>
		if typeof(initialValue) == "number" then
			newMotor = Otter.createSingleMotor(initialValue) :: any
		else
			newMotor = Otter.createGroupMotor((initialValue :: any) :: ValueGroup) :: any
		end

		boundSetGoal.current = function(goal)
			newMotor:setGoal(goal)
		end
		motor.current = newMotor
	end

	-- If we're given a new `onComplete` function, unsubscribe the old one
	-- and subscribe the new one
	React.useEffect(function(): (() -> ())?
		local disconnectOnComplete
		local disconnectOnStep
		if motor.current then
			if onComplete then
				disconnectOnComplete = motor.current:onComplete(onComplete)
			end
			disconnectOnStep = motor.current:onStep(onStep)
		end
		return function()
			if disconnectOnComplete then
				disconnectOnComplete()
			end
			if disconnectOnStep then
				disconnectOnStep()
			end
		end
	end, { onStep, onComplete } :: { any })

	-- Clean up the motor when we're done
	React.useEffect(function()
		return function()
			if motor.current then
				motor.current:destroy()
				motor.current = nil
			end
		end
	end, { motor.current })

	return boundSetGoal.current :: SetGoal<G>
end

return useMotor
