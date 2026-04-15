local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local useTokens = require(Foundation.Providers.Style.useTokens)

local Motion = require(Packages.Motion)
local TransitionPreset = Motion.TransitionPreset
type TransitionConfig = Motion.TransitionConfig

type OptionSelectorGroupItemMotionConfig = {
	transparency: React.Binding<number>,
	textTransparency: React.Binding<number>,
	iconTransparency: React.Binding<number>,
	transition: {
		default: TransitionConfig,
		[string]: TransitionConfig?,
	}?,
}

export type OptionSelectorGroupItemMotionStates = {
	Default: OptionSelectorGroupItemMotionConfig,
	Disabled: OptionSelectorGroupItemMotionConfig,
}

local function useOptionSelectorGroupItemMotionStates(
	defaultTransparency: number?,
	disabledTransparency: number
): OptionSelectorGroupItemMotionStates
	local tokens = useTokens()
	return {
		Default = Motion.createState({
			transparency = defaultTransparency or 0,
			textTransparency = defaultTransparency or 0,
		}, {
			iconTransparency = Motion.transition(
				TransitionPreset.Default,
				{ easingStyle = Enum.EasingStyle.Linear, duration = tokens.Time.Time_500 }
			),
			transparency = Motion.transition({ easingStyle = Enum.EasingStyle.Linear, duration = tokens.Time.Time_200 }),
			default = Motion.transition(TransitionPreset.Default, { duration = tokens.Time.Time_200 }),
		}),
		Disabled = Motion.createState({
			transparency = disabledTransparency,
			textTransparency = disabledTransparency,
		}, {
			default = Motion.transition({ easingStyle = Enum.EasingStyle.Linear, duration = tokens.Time.Time_100 }),
		}),
	}
end

return useOptionSelectorGroupItemMotionStates
