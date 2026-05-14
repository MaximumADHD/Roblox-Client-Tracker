local Types = require(script.Parent.Types)

local TransitionPreset = require(script.Parent.Enums.TransitionPreset)
type TransitionPreset = TransitionPreset.TransitionPreset

local TimingConfigs = require(script.Parent.Utility.TimingConfigs)
local defaultTimings = TimingConfigs.presets
local defaultTransition = defaultTimings[TransitionPreset.Default]

local Motion = {}

local function getTransition(
	state: Types.MotionState
): { default: Types.TransitionConfig, [string]: Types.TransitionConfig? }
	return state.transition or { default = defaultTransition }
end

function Motion.createState(
	values: { [string]: any },
	transitions: { [string]: Types.TransitionConfig }?
): Types.MotionState
	-- Create state with guaranteed default transition
	local state = {
		transition = {
			default = (transitions and transitions.default or defaultTransition) :: Types.TransitionConfig,
		},
	} :: Types.MotionState

	for propName, value in values do
		state[propName] = value
		if transitions and transitions[propName] then
			local stateTransition = getTransition(state)
			stateTransition[propName] = transitions[propName] :: Types.TransitionConfig
		end
	end

	return state
end

function Motion.transition(
	presetOrConfig: TransitionPreset | string | Types.TransitionConfig?,
	overrides: Types.TransitionConfig?
): Types.TransitionConfig
	local config = if type(presetOrConfig) == "string"
		then defaultTimings[presetOrConfig] or defaultTransition
		else presetOrConfig

	local transition = {
		duration = config and config.duration or defaultTransition.duration,
		easingStyle = config and config.easingStyle or defaultTransition.easingStyle,
		delay = config and config.delay or defaultTransition.delay,
	}

	if overrides then
		if overrides.duration then
			transition.duration = overrides.duration
		end
		if overrides.easingStyle then
			transition.easingStyle = overrides.easingStyle
		end
		if overrides.delay then
			transition.delay = overrides.delay
		end
	end

	return transition
end

function Motion.animate(
	state: Types.MotionState,
	animators: { [string]: (value: any, timing: Types.TransitionConfig) -> () }
): ()
	if not state then
		return
	end

	-- Get transition or use default if not provided
	local transition = state.transition or { default = defaultTransition }

	for propertyName, animator in animators do
		-- Get property-specific transition or fall back to default
		local propTransition = transition[propertyName]

		local timing = if propTransition ~= nil then propTransition :: Types.TransitionConfig else transition.default

		if timing.delay and timing.delay > 0 then
			local timingWithCallback = table.clone(timing)
			task.delay(timing.delay, function()
				animator(state[propertyName], timingWithCallback)
			end)
		else
			animator(state[propertyName], timing)
		end
	end
end

return Motion
