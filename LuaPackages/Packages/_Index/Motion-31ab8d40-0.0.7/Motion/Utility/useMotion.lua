local Utility = script.Parent
local Motion = Utility.Parent
local Packages = Motion.Parent
local React = require(Packages.React)
local useAnimatedValue = require(Utility.useAnimatedValue)
local Types = require(Motion.Types)
local TimingConfigs = require(Utility.TimingConfigs)
local TransitionPreset = require(Motion.Enums.TransitionPreset)

type TransitionConfig = Types.TransitionConfig
type MotionState = Types.MotionState
type MotionTransition = Types.MotionTransition

local TRANSITION_PROPERTY_NAME = "transition"

export type AnimationOptions = {
	onAnimationComplete: ((string | boolean) -> ())?,
}

local function useMotion(initialState: Types.MotionState): ({ [string]: React.Binding<any> }, (
	newState: Types.MotionState,
	options: AnimationOptions?
) -> ())
	local animatedValues: { [string]: React.Binding<any> } = {}
	local animators: { [string]: (target: any, transitionConfig: TransitionConfig?) -> () } = {}

	-- Use useRef to maintain a stable reference to delayed animations
	-- (prevents issues with the reference being lost during re-renders)
	local delayedAnimationsRef = React.useRef({}) :: { current: { [string]: thread? } }

	-- Create bindings for each property (excluding transition if present)
	for propName, initialValue in initialState do
		if type(initialValue) ~= "table" or propName ~= TRANSITION_PROPERTY_NAME then
			local value, animator = useAnimatedValue(initialValue)
			animatedValues[propName] = value
			animators[propName] = animator
		end
	end

	local function animate(newState: Types.MotionState, options: AnimationOptions?): ()
		if not newState then
			return
		end

		-- Count how many properties we'll animate
		local totalProperties = 0
		local completedProps = {}
		for propName in animators do
			if propName ~= TRANSITION_PROPERTY_NAME and newState[propName] ~= nil then
				totalProperties += 1
			end
		end

		local completedCount = 0

		-- This function is called when an individual property finishes animating
		local function propertyOnComplete(propName: string): ()
			completedProps[propName] = newState[propName]
			completedCount += 1

			if options and options.onAnimationComplete then
				(options.onAnimationComplete :: (boolean | string) -> ())(propName)
			end

			-- Once all properties are done, fire the overall callback
			if completedCount == totalProperties and options and options.onAnimationComplete then
				(options.onAnimationComplete :: (boolean | string) -> ())(true)
			end
		end

		-- Animate each property
		for propName, animator in animators do
			if propName ~= TRANSITION_PROPERTY_NAME and newState[propName] ~= nil then
				-- 1. Cancel any pending delayed animation for this property
				if delayedAnimationsRef.current[propName] then
					local thread = delayedAnimationsRef.current[propName]
					if thread then
						task.cancel(thread)
					end
					delayedAnimationsRef.current[propName] = nil
				end

				-- Get the transition config
				local transitionTable = newState.transition
					or { [TransitionPreset.Default] = TimingConfigs.getDefaultTransition() }
				local transitionConfig: TransitionConfig = transitionTable[propName]
					or transitionTable[TransitionPreset.Default]
					or TimingConfigs.getDefaultTransition()

				-- Clone the transition config
				local clonedTransitionConfig = table.clone(transitionConfig)

				-- Set onComplete callback
				clonedTransitionConfig.onComplete = function()
					propertyOnComplete(propName)
				end

				local delay = clonedTransitionConfig.delay or 0

				-- 2. Handle the property animation
				if delay > 0 then
					-- For delayed animations, create and store a new thread
					local thread = task.delay(delay, function()
						-- Clear the reference
						delayedAnimationsRef.current[propName] = nil

						-- Then start the animation — this ensures the animator
						-- will be called with the most recent state
						animator(newState[propName], clonedTransitionConfig)
					end)

					-- Store the thread for potential cancellation
					delayedAnimationsRef.current[propName] = thread
				else
					-- For immediate animations, start right away
					-- This will interrupt any in-progress animation
					animator(newState[propName], clonedTransitionConfig)
				end
			end
		end
	end

	return animatedValues, animate
end

return useMotion
