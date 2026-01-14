local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Constants = require(script.Parent.constants)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local usePreferences = require(Foundation.Providers.Preferences.usePreferences)
local useProgressBinding = require(script.Parent.useProgressBinding)
local useProgressVariants = require(script.Parent.useProgressVariants)
local usePulseBinding = require(Foundation.Utility.usePulseBinding)
local useRotation = require(Foundation.Utility.useRotation)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local ProgressShape = require(Foundation.Enums.ProgressShape)
type ProgressShape = ProgressShape.ProgressShape

local ProgressSize = require(Foundation.Enums.ProgressSize)
type ProgressSize = ProgressSize.ProgressSize

export type ProgressBarProps = {
	-- Shape of the progress indicator, either "Bar" or "Circle"
	shape: typeof(ProgressShape.Bar),
	-- Size of the progress indicator
	size: typeof(ProgressSize.Medium)?,
	-- Progress value shown (can be nil to show indeterminate progress)
	value: number?,
	-- Width of the progress bar when shape = "Bar"
	width: UDim?,
} & Types.CommonProps

local defaultProps = {
	size = ProgressSize.Medium,
	width = UDim.new(1, 0),
}

local function ProgressBar(progressProps: ProgressBarProps & {
	ref: React.Ref<GuiObject>?,
})
	local props = withDefaults(progressProps, defaultProps)
	local tokens = useTokens()
	local preferences = usePreferences()
	local variants = useProgressVariants(tokens, props.size)
	local progress, isIndeterminate = useProgressBinding(props)
	local rotation = useRotation(1)
	local pulse = usePulseBinding(1 / Constants.INDETERMINATE_SHIMMER_SPEED)

	return React.createElement(
		View,
		withCommonProps(props, {
			Size = UDim2.new(props.width, UDim.new(0, variants.bar.height)),
			tag = "radius-small bg-shift-400",
			ref = props.ref,
		}),
		{
			Fill = React.createElement(View, {
				backgroundStyle = tokens.Color.Content.Emphasis,
				tag = "size-full radius-small",
				ref = props.ref,
				testId = `{props.testId}--fill`,
			}, {
				Gradient = React.createElement("UIGradient", {
					Color = ColorSequence.new(tokens.Color.Content.Emphasis.Color3),
					Transparency = if isIndeterminate
						then pulse:map(function(pulseValue: number)
							if preferences.reducedMotion then
								return NumberSequence.new(pulseValue)
							end

							return NumberSequence.new({
								NumberSequenceKeypoint.new(0, 1),
								NumberSequenceKeypoint.new(0.2, 1),
								NumberSequenceKeypoint.new(0.5, tokens.Color.Content.Emphasis.Transparency),
								NumberSequenceKeypoint.new(0.8, 1),
								NumberSequenceKeypoint.new(1, 1),
							})
						end)
						else progress:map(function(progressValue: number?)
							local value = progressValue or 0
							if value == 0 then
								return NumberSequence.new(1)
							elseif value == 1 then
								return NumberSequence.new(0)
							end

							local numberSequenceKeypoints = {
								NumberSequenceKeypoint.new(0, 0),
								NumberSequenceKeypoint.new(value, 0),
								NumberSequenceKeypoint.new(math.min(value + 0.001, 1), 1),
							}
							if value < 0.999 then
								table.insert(numberSequenceKeypoints, NumberSequenceKeypoint.new(1, 1))
							end

							-- print(numberSequenceKeypoints)
							return NumberSequence.new(numberSequenceKeypoints)
						end),
					Offset = if isIndeterminate
						then rotation:map(function(rotationValue: number)
							if preferences.reducedMotion then
								return Vector2.new(0, 0)
							else
								return Vector2.new(
									((rotationValue * Constants.INDETERMINATE_SHIMMER_SPEED) % 360) / 360 * 2 - 1,
									0
								)
							end
						end)
						else nil,
				}),
			}),
		}
	)
end

return ProgressBar
