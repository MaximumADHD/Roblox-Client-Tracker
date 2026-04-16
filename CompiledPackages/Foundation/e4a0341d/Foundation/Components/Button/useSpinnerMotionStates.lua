local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Motion = require(Packages.Motion)
local TransitionPreset = Motion.TransitionPreset
type TransitionConfig = Motion.TransitionConfig

type SpinnerMotionConfig = {
	scale: React.Binding<number>,
	transparency: React.Binding<number>,
	transition: {
		default: TransitionConfig,
		[string]: TransitionConfig?,
	}?,
}

export type SpinnerMotionStates = {
	Default: SpinnerMotionConfig,
	Loading: SpinnerMotionConfig,
}

local function useSpinnerMotionStates(): SpinnerMotionStates
	return {
		Default = Motion.createState({
			scale = 0,
			transparency = 1,
		}, {
			default = Motion.transition(TransitionPreset.Default, { duration = 0.2 }),
			transparency = Motion.transition({ easingStyle = Enum.EasingStyle.Linear, duration = 0.2 }),
		}),
		Loading = Motion.createState({
			scale = 1,
			transparency = 0,
		}, {
			default = Motion.transition(TransitionPreset.Default, { duration = 0.2, delay = 0.1 }),
			transparency = Motion.transition({ easingStyle = Enum.EasingStyle.Linear, duration = 0.2 }),
		}),
	}
end

return useSpinnerMotionStates
