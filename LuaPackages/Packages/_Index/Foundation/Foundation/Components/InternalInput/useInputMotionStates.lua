local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Types = require(Foundation.Components.Types)
type ColorStyleValue = Types.ColorStyleValue

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local React = require(Packages.React)

local Motion = require(Packages.Motion)
local TransitionPreset = Motion.TransitionPreset
type TransitionConfig = Motion.TransitionConfig

type InputMotionConfig = {
	transparency: React.Binding<number>,
	backgroundColor: React.Binding<Color3>,
	transition: {
		default: TransitionConfig,
		[string]: TransitionConfig?,
	}?,
}

export type InputMotionStates = {
	Default: InputMotionConfig,
	Hover: InputMotionConfig,
	Checked: InputMotionConfig,
}

local function useInputMotionStates(tokens: Tokens, customCheckedStyle: ColorStyleValue?): InputMotionStates
	local defaultStyle = tokens.Color.Content.Default
	local hoverStyle = tokens.Color.Content.Emphasis
	local checkedStyle = customCheckedStyle or tokens.Color.ActionSubEmphasis.Background

	return {
		Default = Motion.createState({
			backgroundStyle = {
				Color3 = defaultStyle.Color3,
				Transparency = 1,
			},
			strokeStyle = defaultStyle,
			labelStyle = defaultStyle,
		}, {
			default = Motion.transition(TransitionPreset.Default, { duration = 0.2 }),
			transparency = Motion.transition({ easingStyle = Enum.EasingStyle.Linear, duration = 0.2 }),
		}),
		Hover = Motion.createState({
			backgroundStyle = {
				Color3 = hoverStyle.Color3,
				Transparency = 1,
			},
			strokeStyle = hoverStyle,
			labelStyle = hoverStyle,
		}, {
			default = Motion.transition(TransitionPreset.Default, { duration = 0 }),
			transparency = Motion.transition({ easingStyle = Enum.EasingStyle.Linear, duration = 0 }),
		}),
		Checked = Motion.createState({
			-- Stroke and background color are the same for checked state
			backgroundStyle = checkedStyle,
			strokeStyle = checkedStyle,
			labelStyle = hoverStyle,
		}, {
			default = Motion.transition(TransitionPreset.Default, { duration = 0.2 }),
			transparency = Motion.transition({ easingStyle = Enum.EasingStyle.Linear, duration = 0.2 }),
		}),
	}
end

return useInputMotionStates
