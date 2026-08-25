local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Constants = require(script.Parent.constants)
local Flags = require(Foundation.Utility.Flags)
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local getTestIdTag = require(Foundation.Utility.getTestIdTag)
local mapBindable = require(Foundation.Utility.mapBindable)
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

type Bindable<T> = Types.Bindable<T>

local function getBarSequenceFromProgress(progressValue: number?)
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

	return NumberSequence.new(numberSequenceKeypoints)
end

local function getFillSizeFromProgress(progress: number?): UDim2
	return UDim2.fromScale(progress or 0, 1)
end

local function getIndeterminateShimmerTransparency(
	pulseValue: number,
	reducedMotion: boolean,
	emphasisTransparency: number
): NumberSequence
	if reducedMotion then
		return NumberSequence.new(pulseValue)
	end

	return NumberSequence.new({
		NumberSequenceKeypoint.new(0, 1),
		NumberSequenceKeypoint.new(0.2, 1),
		NumberSequenceKeypoint.new(0.5, emphasisTransparency),
		NumberSequenceKeypoint.new(0.8, 1),
		NumberSequenceKeypoint.new(1, 1),
	})
end

local function getIndeterminateShimmerOffset(rotationValue: number, reducedMotion: boolean): Vector2
	if reducedMotion then
		return Vector2.new(0, 0)
	end

	return Vector2.new(((rotationValue * Constants.INDETERMINATE_SHIMMER_SPEED) % 360) / 360 * 2 - 1, 0)
end

type ProgressBarIndeterminateGradientProps = {
	emphasisColor3: Color3,
	emphasisTransparency: number,
	reducedMotion: boolean,
	testId: string?,
}

local function ProgressBarIndeterminateGradient(props: ProgressBarIndeterminateGradientProps)
	local rotation = useRotation(1)
	local pulse = usePulseBinding(1 / Constants.INDETERMINATE_SHIMMER_SPEED)

	return React.createElement("UIGradient", {
		Color = ColorSequence.new(props.emphasisColor3),
		Transparency = pulse:map(function(pulseValue: number)
			return getIndeterminateShimmerTransparency(pulseValue, props.reducedMotion, props.emphasisTransparency)
		end),
		Offset = rotation:map(function(rotationValue: number)
			return getIndeterminateShimmerOffset(rotationValue, props.reducedMotion)
		end),
		[React.Tag] = getTestIdTag(props.testId),
	})
end

export type ProgressBarProps = {
	-- Shape of the progress indicator, either "Bar" or "Circle"
	shape: typeof(ProgressShape.Bar),
	-- Size of the progress indicator
	size: typeof(ProgressSize.Medium)?,
	-- Progress value shown (can be nil to show indeterminate progress)
	value: Bindable<number>?,
	-- Width of the progress bar when shape = "Bar"
	width: UDim?,
	-- Displays start and end value labels below the bar when FoundationProgressBarBetaUpdate is enabled
	showLabel: boolean?,
	-- Minimum value label text
	minValueLabel: string?,
	-- Maximum value label text
	maxValueLabel: string?,
} & Types.CommonProps

local defaultProps = {
	size = ProgressSize.Medium,
	width = UDim.new(1, 0),
	showLabel = false,
	minValueLabel = "0",
	maxValueLabel = "100",
}

local function ProgressBar(progressProps: ProgressBarProps & {
	ref: React.Ref<GuiObject>?,
})
	local props = withDefaults(progressProps, defaultProps)
	local tokens = useTokens()
	local preferences = usePreferences()
	local variants =
		useProgressVariants(tokens, if Flags.FoundationProgressBarBetaUpdate then ProgressSize.Medium else props.size)
	local progress, isIndeterminate = useProgressBinding(props.value)
	local rotation = useRotation(1)
	local pulse = usePulseBinding(1 / Constants.INDETERMINATE_SHIMMER_SPEED)
	local progressSequence = mapBindable(progress, getBarSequenceFromProgress)

	return React.createElement(
		View,
		withCommonProps(props, {
			tag = if Flags.FoundationProgressBarBetaUpdate
				then "col gap-xsmall size-full-0 auto-y"
				else "radius-small bg-shift-400",
			Size = if Flags.FoundationProgressBarBetaUpdate
				then UDim2.new(props.width, UDim.new(0, 0))
				else UDim2.new(props.width, UDim.new(0, variants.bar.height)),
			ref = props.ref,
		}),
		if Flags.FoundationProgressBarBetaUpdate
			then {
				Track = React.createElement(View, {
					Size = UDim2.new(UDim.new(1, 0), UDim.new(0, variants.bar.height)),
					cornerRadius = UDim.new(0, tokens.Radius.Circle),
					tag = "size-full-0 clip bg-shift-400",
					LayoutOrder = 1,
					testId = `{props.testId}--track`,
				}, {
					Fill = React.createElement(
						View,
						{
							backgroundStyle = tokens.Color.Content.Emphasis,
							cornerRadius = UDim.new(0, tokens.Radius.Circle),
							Size = if isIndeterminate
								then UDim2.fromScale(1, 1)
								else mapBindable(progress, getFillSizeFromProgress),
							tag = if isIndeterminate then "size-full" else nil,
							testId = `{props.testId}--fill`,
						},
						if isIndeterminate
							then {
								Gradient = React.createElement(ProgressBarIndeterminateGradient, {
									emphasisColor3 = tokens.Color.Content.Emphasis.Color3,
									emphasisTransparency = tokens.Color.Content.Emphasis.Transparency,
									reducedMotion = preferences.reducedMotion,
									testId = `{props.testId}--fill--gradient`,
								}),
							}
							else nil
					),
				}),
				Labels = if props.showLabel and not isIndeterminate
					then React.createElement(View, {
						tag = "row size-full-0 auto-y",
						LayoutOrder = 2,
						testId = `{props.testId}--labels`,
					}, {
						MinValue = React.createElement(Text, {
							Text = props.minValueLabel,
							tag = "fill auto-xy text-label-medium text-align-x-left content-default",
							LayoutOrder = 1,
							testId = `{props.testId}--label-min`,
						}),
						MaxValue = React.createElement(Text, {
							Text = props.maxValueLabel,
							tag = "fill auto-xy text-label-medium text-align-x-right content-default",
							LayoutOrder = 2,
							testId = `{props.testId}--label-max`,
						}),
					})
					else nil,
			}
			else {
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
							else progressSequence,
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
