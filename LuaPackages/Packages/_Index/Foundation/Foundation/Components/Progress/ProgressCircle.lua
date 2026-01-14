local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Constants = require(script.Parent.constants)
local Image = require(Foundation.Components.Image)
local Text = require(Foundation.Components.Text)
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

export type ProgressCircleProps = {
	-- Shape of the progress indicator, either "Bar" or "Circle"
	shape: typeof(ProgressShape.Circle),
	-- Size of the progress indicator
	size: ProgressSize?,
	-- Progress value shown (can be nil to show indeterminate progress)
	value: number?,
} & Types.CommonProps

local defaultProps = {
	size = ProgressSize.Medium,
}

local function ProgressGradient(props: {
	side: Enum.HorizontalAlignment,
	isIndeterminate: true | false,
	rotation: React.Binding<number>,
	progress: React.Binding<number?>,
	pulse: React.Binding<number>,
})
	local side = props.side
	local isIndeterminate = props.isIndeterminate

	local tokens = useTokens()
	local preferences = usePreferences()

	local TRANSPARENCY_SEQ = React.useMemo(function()
		local fillTransparency = tokens.Color.Content.Emphasis.Transparency
		local trackTransparency = if isIndeterminate then 1 else tokens.Color.Shift.Shift_200.Transparency

		return NumberSequence.new({
			NumberSequenceKeypoint.new(0, fillTransparency),
			NumberSequenceKeypoint.new(0.4999, fillTransparency),
			NumberSequenceKeypoint.new(0.5, trackTransparency),
			NumberSequenceKeypoint.new(1, trackTransparency),
		})
	end, { tokens, isIndeterminate } :: { any })

	local COLOR_SEQ = React.useMemo(function()
		return ColorSequence.new({
			ColorSequenceKeypoint.new(0, tokens.Color.Content.Emphasis.Color3),
			ColorSequenceKeypoint.new(0.4999, tokens.Color.Content.Emphasis.Color3),
			ColorSequenceKeypoint.new(0.5, tokens.Color.Shift.Shift_200.Color3),
			ColorSequenceKeypoint.new(1, tokens.Color.Shift.Shift_200.Color3),
		})
	end, { tokens })

	local minRotation = if side == Enum.HorizontalAlignment.Left then 180 else 0
	local maxRotation = if side == Enum.HorizontalAlignment.Left then 360 else 180

	if isIndeterminate and preferences.reducedMotion then
		local rotation: React.Binding<number> | number
		if not isIndeterminate then
			rotation = props.rotation
		else
			rotation = if side == Enum.HorizontalAlignment.Left then 0 else 180
		end

		return React.createElement("UIGradient", {
			Transparency = props.pulse:map(function(pulseValue: number)
				return NumberSequence.new(
					math.lerp(
						tokens.Color.Content.Emphasis.Transparency,
						tokens.Color.Shift.Shift_200.Transparency,
						pulseValue
					)
				)
			end),
			Color = props.pulse:map(function(pulseValue: number)
				return ColorSequence.new(
					tokens.Color.Content.Emphasis.Color3:Lerp(tokens.Color.Shift.Shift_200.Color3, pulseValue)
				)
			end),
			Rotation = rotation,
		})
	else
		return React.createElement("UIGradient", {
			Transparency = TRANSPARENCY_SEQ,
			Color = COLOR_SEQ,
			Rotation = props.progress:map(function(progressValue: number?)
				if progressValue == nil then
					return 0
				end

				return math.clamp(progressValue * 360, minRotation, maxRotation)
			end),
		}) :: React.ReactElement
	end
end

local function ProgressCircle(progressProps: ProgressCircleProps & {
	ref: React.Ref<GuiObject>?,
})
	local props = withDefaults(progressProps, defaultProps)
	local tokens = useTokens()
	local preferences = usePreferences()
	local variants = useProgressVariants(tokens, props.size)
	local progress, isIndeterminate = useProgressBinding(props)
	local indeterminateProgress = React.useBinding(0.8)
	local rotation = useRotation(1)
	local pulse = usePulseBinding(1 / Constants.INDETERMINATE_SHIMMER_SPEED)

	local circleSize = UDim2.fromOffset(variants.circle.size, variants.circle.size)

	if isIndeterminate and not preferences.reducedMotion then
		return React.createElement( -- Rotating elements in a list layout does not actually rotate them. Wrap spinning Circle in a View.
			View,
			withCommonProps(props, {
				tag = "auto-xy",
				ref = props.ref,
			}),
			{
				IndeterminateContainer = React.createElement(View, {
					Size = circleSize,
					Rotation = rotation,
					testId = `{props.testId}--indeterminate-container`,
				}, {

					LeftGradient = React.createElement(View, {
						Size = UDim2.fromScale(0.5, 1),
						tag = "position-top-left clip",
						testId = `{props.testId}--left-gradient`,
					}, {
						Image = React.createElement(Image, {
							Image = "rbxasset://textures/ui/Controls/RadialFill.png",
							Size = UDim2.fromScale(2, 1),
							tag = "content-emphasis position-top-left",
						}, {
							Gradient = React.createElement(ProgressGradient, {
								side = Enum.HorizontalAlignment.Left,
								isIndeterminate = isIndeterminate,
								rotation = rotation,
								progress = indeterminateProgress,
								pulse = pulse,
							}),
						}),
					}),
					RightGradient = React.createElement(View, {
						Size = UDim2.fromScale(0.5, 1),
						tag = "clip position-top-center",
						testId = `{props.testId}--right-gradient`,
					}, {
						Image = React.createElement(Image, {
							Image = "rbxasset://textures/ui/Controls/RadialFill.png",
							Size = UDim2.fromScale(2, 1),
							Position = UDim2.fromScale(-1, 0),
							tag = "content-emphasis",
						}, {
							Gradient = React.createElement(ProgressGradient, {
								side = Enum.HorizontalAlignment.Right,
								isIndeterminate = isIndeterminate,
								rotation = rotation,
								progress = indeterminateProgress,
								pulse = pulse,
							}),
						}),
					}),
				}),
			}
		)
	else
		return React.createElement(
			View,
			withCommonProps(props, {
				Size = circleSize,
				ref = props.ref,
			}),
			{
				LeftGradient = React.createElement(View, {
					Size = UDim2.fromScale(0.5, 1),
					tag = "position-top-left clip",
					testId = `{props.testId}--left-gradient`,
				}, {
					Image = React.createElement(Image, {
						Image = "rbxasset://textures/ui/Controls/RadialFill.png",
						Size = UDim2.fromScale(2, 1),
						tag = "content-emphasis position-top-left",
					}, {
						Gradient = React.createElement(ProgressGradient, {
							side = Enum.HorizontalAlignment.Left,
							isIndeterminate = isIndeterminate,
							rotation = rotation,
							progress = progress,
							pulse = pulse,
						}),
					}),
				}),
				RightGradient = React.createElement(View, {
					Size = UDim2.fromScale(0.5, 1),
					tag = "clip position-top-center",
					testId = `{props.testId}--right-gradient`,
				}, {
					Image = React.createElement(Image, {
						Image = "rbxasset://textures/ui/Controls/RadialFill.png",
						Size = UDim2.fromScale(2, 1),
						Position = UDim2.fromScale(-1, 0),
						tag = "content-emphasis",
					}, {
						Gradient = React.createElement(ProgressGradient, {
							side = Enum.HorizontalAlignment.Right,
							isIndeterminate = isIndeterminate,
							rotation = rotation,
							progress = progress,
							pulse = pulse,
						}),
					}),
				}),
				ProgressLabel = if variants.circle.labelFont and not isIndeterminate
					then React.createElement(Text, {
						Text = progress:map(function(progressValue: number?)
							if progressValue == nil then
								return "0%"
							end

							return `{math.floor(progressValue * 100)}%`
						end),
						fontStyle = variants.circle.labelFont,
						tag = "anchor-center-center position-center-center",
						testId = `{props.testId}--label`,
					})
					else nil,
			}
		)
	end
end

return ProgressCircle
