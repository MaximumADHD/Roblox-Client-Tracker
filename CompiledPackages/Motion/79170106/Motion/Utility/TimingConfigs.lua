local Motion = script.Parent.Parent
local Types = require(Motion.Types)
local TransitionPreset = require(Motion.Enums.TransitionPreset)
local TimingConfigs = {}

-- Default timing presets that can be used throughout the library
TimingConfigs.presets = {
	[TransitionPreset.Default] = {
		duration = 0.3,
		easingStyle = { 0.2, 0.0, 0.0, 1.0 },
		delay = 0,
	} :: Types.TransitionConfig,

	[TransitionPreset.Quick] = {
		duration = 0.05,
		easingStyle = { 0.2, 0.0, 0.0, 1.0 },
		delay = 0,
	} :: Types.TransitionConfig,

	[TransitionPreset.Slow] = {
		duration = 1.0,
		easingStyle = { 0.2, 0.0, 0.0, 1.0 },
		delay = 0,
	} :: Types.TransitionConfig,
}

-- Helper function to get default transition configuration
function TimingConfigs.getDefaultTransition(): Types.TransitionConfig
	local defaultConfig = TimingConfigs.presets[TransitionPreset.Default]

	return {
		duration = defaultConfig.duration,
		easingStyle = defaultConfig.easingStyle,
		delay = defaultConfig.delay,
	}
end

-- Helper function to create a default transition state
function TimingConfigs.createDefaultTransitionState(): { default: Types.TransitionConfig }
	return {
		default = TimingConfigs.getDefaultTransition(),
	}
end

return TimingConfigs
