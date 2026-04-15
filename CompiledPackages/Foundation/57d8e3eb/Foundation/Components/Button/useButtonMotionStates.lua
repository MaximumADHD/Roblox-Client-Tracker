local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Motion = require(Packages.Motion)
local TransitionPreset = Motion.TransitionPreset
type TransitionConfig = Motion.TransitionConfig

type ButtonMotionConfig = {
	transparency: React.Binding<number>,
	textTransparency: React.Binding<number>,
	iconTransparency: React.Binding<number>,
	iconScale: React.Binding<number>,
	transition: {
		default: TransitionConfig,
		[string]: TransitionConfig?,
	}?,
}

export type ButtonMotionStates = {
	Default: ButtonMotionConfig,
	Loading: ButtonMotionConfig,
	Disabled: ButtonMotionConfig,
}

local function useButtonMotionStates(defaultTransparency: number?, disabledTransparency: number): ButtonMotionStates
	return {
		Default = Motion.createState({
			transparency = defaultTransparency or 0,
			textTransparency = defaultTransparency or 0,
			iconScale = 1,
		}, {
			iconTransparency = Motion.transition(
				TransitionPreset.Default,
				{ easingStyle = Enum.EasingStyle.Linear, duration = 0.5 }
			),
			transparency = Motion.transition({ easingStyle = Enum.EasingStyle.Linear, duration = 0.2 }),
			default = Motion.transition(TransitionPreset.Default, { duration = 0.2 }),
		}),
		Loading = Motion.createState({
			transparency = 0,
			textTransparency = 1,
			iconTransparency = 1,
			iconScale = 0,
		}, {
			iconTransparency = Motion.transition(
				TransitionPreset.Default,
				{ easingStyle = Enum.EasingStyle.Linear, duration = 0.2 }
			),
			default = Motion.transition(TransitionPreset.Default, { duration = 0.2 }),
		}),
		Disabled = Motion.createState({
			transparency = disabledTransparency,
			textTransparency = disabledTransparency,
		}, {
			default = Motion.transition({ easingStyle = Enum.EasingStyle.Linear, duration = 0.1 }),
		}),
	}
end

return useButtonMotionStates
