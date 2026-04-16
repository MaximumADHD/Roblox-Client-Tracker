local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Motion = require(Packages.Motion)
local TransitionPreset = Motion.TransitionPreset
type TransitionConfig = Motion.TransitionConfig

local Types = require(Foundation.Components.Types)
type ColorStyleValue = Types.ColorStyleValue

type KnobMotionConfig = {
	transparency: React.Binding<number>,
	knobStyle: ColorStyleValue,
	transition: {
		default: TransitionConfig,
		[string]: TransitionConfig?,
	}?,
}

export type SliderMotionStates = {
	Hidden: KnobMotionConfig,
	Idle: KnobMotionConfig,
	Dragging: KnobMotionConfig,
}

local function useSliderMotionStates(
	defaultKnobStyle: ColorStyleValue,
	interactingKnobStyle: ColorStyleValue?
): SliderMotionStates
	return {
		Hidden = Motion.createState({
			transparency = 1,
			knobStyle = {
				Color3 = defaultKnobStyle.Color3,
				Transparency = 1,
			},
		}, {
			default = Motion.transition(TransitionPreset.Default, { duration = 0.15 }),
		}),
		Idle = Motion.createState({
			transparency = 0,
			knobStyle = defaultKnobStyle,
		}, {
			default = Motion.transition(TransitionPreset.Default, { duration = 0.15 }),
		}),
		Dragging = Motion.createState({
			transparency = 0,
			knobStyle = interactingKnobStyle,
		}, {
			default = Motion.transition(TransitionPreset.Default, { duration = 0.1 }),
		}),
	}
end

return useSliderMotionStates
