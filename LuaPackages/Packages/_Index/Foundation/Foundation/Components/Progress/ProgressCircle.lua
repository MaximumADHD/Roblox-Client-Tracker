local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Constants = require(script.Parent.constants)
local Flags = require(Foundation.Utility.Flags)
local Image = require(Foundation.Components.Image)
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
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

-- Luau matches props invariantly, so a value refined to `true` does not satisfy a `boolean` prop.
type IsIndeterminate = true | false

export type ProgressCircleProps = {
	-- Shape of the progress indicator, either "Bar" or "Circle"
	shape: typeof(ProgressShape.Circle),
	-- Size of the progress indicator
	size: ProgressSize?,
	-- Progress value shown (can be nil to show indeterminate progress)
	value: Bindable<number>?,
} & Types.CommonProps

local defaultProps = {
	size = ProgressSize.Medium,
}

local RADIAL_FILL_IMAGE = "rbxasset://textures/ui/Controls/RadialFill.png"

-- The ring is baked into RadialFill.png (a 5px-thick ring on a 58px circle), so it grows with the image.
-- Anything drawn on top of the ring has to be sized as a fraction of the circle, not in pixels.
local RING_IMAGE_DIAMETER = 58
local RING_IMAGE_THICKNESS = 5
local RING_THICKNESS_SCALE = RING_IMAGE_THICKNESS / RING_IMAGE_DIAMETER
-- Half a thickness in from the outer edge is the middle of the ring, where the cap sits.
local CAP_CENTER_SCALE = RING_THICKNESS_SCALE / 2
local CAP_Z_INDEX = 2

-- The spinner animates by rotating the whole circle, so its arc length is fixed.
local INDETERMINATE_ARC_FRACTION = 0.8

local function getRotationFromProgress(progress: number?, side: Enum.HorizontalAlignment)
	local minRotation = if side == Enum.HorizontalAlignment.Left then 180 else 0
	local maxRotation = if side == Enum.HorizontalAlignment.Left then 360 else 180
	return if progress == nil then 0 else math.clamp(progress * 360, minRotation, maxRotation)
end

local function getLabelFromProgress(progress: number?): string
	return if progress == nil then "0%" else `{math.floor(progress * 100)}%`
end

local function getCapAngleFromProgress(progress: number?): number
	return math.clamp(progress or 0, 0, 1) * 360
end

local function hasVisibleArc(progress: number?): boolean
	return (progress or 0) > 0
end

--[[
	A UIGradient can only cut along a straight line, so the swept RadialFill arc ends in a flat
	radial edge. An opaque circle the width of the ring, parked at the arc's end, rounds it off;
	Content.Emphasis is opaque in every theme, so the overlap leaves no seam. The wrapper shares
	the circle's center, so rotating it sweeps the cap along the ring.
]]
local function ArcCap(props: {
	angle: Bindable<number>,
	isVisible: Bindable<boolean>?,
	testId: string?,
})
	local tokens = useTokens()

	return React.createElement(View, {
		Size = UDim2.fromScale(1, 1),
		Rotation = props.angle,
		Visible = props.isVisible,
		ZIndex = CAP_Z_INDEX,
		testId = props.testId,
	}, {
		Cap = React.createElement(View, {
			Position = UDim2.fromScale(0.5, CAP_CENTER_SCALE),
			Size = UDim2.fromScale(RING_THICKNESS_SCALE, RING_THICKNESS_SCALE),
			backgroundStyle = tokens.Color.Content.Emphasis,
			tag = "anchor-center-center radius-circle",
			ZIndex = CAP_Z_INDEX,
		}),
	})
end

local function ArcCaps(props: {
	progress: Bindable<number>?,
	testId: string?,
})
	local isVisible = mapBindable(props.progress, hasVisibleArc)

	return React.createElement(React.Fragment, {}, {
		StartCap = React.createElement(ArcCap, {
			angle = 0,
			isVisible = isVisible,
			testId = `{props.testId}--start-cap`,
		}),
		EndCap = React.createElement(ArcCap, {
			angle = mapBindable(props.progress, getCapAngleFromProgress),
			isVisible = isVisible,
			testId = `{props.testId}--end-cap`,
		}),
	})
end

local function ProgressGradient(props: {
	side: Enum.HorizontalAlignment,
	isIndeterminate: IsIndeterminate,
	progress: Bindable<number>?,
	pulse: React.Binding<number>?,
})
	local side = props.side
	local isIndeterminate = props.isIndeterminate
	local progress = props.progress
	local pulse = props.pulse

	local tokens = useTokens()
	local preferences = usePreferences()

	local transparencySequence = React.useMemo(function()
		local fillTransparency = tokens.Color.Content.Emphasis.Transparency
		local trackTransparency = if isIndeterminate then 1 else tokens.Color.Shift.Shift_200.Transparency

		return NumberSequence.new({
			NumberSequenceKeypoint.new(0, fillTransparency),
			NumberSequenceKeypoint.new(0.4999, fillTransparency),
			NumberSequenceKeypoint.new(0.5, trackTransparency),
			NumberSequenceKeypoint.new(1, trackTransparency),
		})
	end, { tokens, isIndeterminate } :: { unknown })

	local colorSequence = React.useMemo(function()
		return ColorSequence.new({
			ColorSequenceKeypoint.new(0, tokens.Color.Content.Emphasis.Color3),
			ColorSequenceKeypoint.new(0.4999, tokens.Color.Content.Emphasis.Color3),
			ColorSequenceKeypoint.new(0.5, tokens.Color.Shift.Shift_200.Color3),
			ColorSequenceKeypoint.new(1, tokens.Color.Shift.Shift_200.Color3),
		})
	end, { tokens })

	if isIndeterminate and preferences.reducedMotion and pulse then
		return React.createElement("UIGradient", {
			Transparency = pulse:map(function(pulseValue: number)
				return NumberSequence.new(
					math.lerp(
						tokens.Color.Content.Emphasis.Transparency,
						tokens.Color.Shift.Shift_200.Transparency,
						pulseValue
					)
				)
			end),
			Color = pulse:map(function(pulseValue: number)
				return ColorSequence.new(
					tokens.Color.Content.Emphasis.Color3:Lerp(tokens.Color.Shift.Shift_200.Color3, pulseValue)
				)
			end),
			Rotation = if side == Enum.HorizontalAlignment.Left then 0 else 180,
		})
	else
		return React.createElement("UIGradient", {
			Transparency = transparencySequence,
			Color = colorSequence,
			Rotation = mapBindable(progress, function(progressValue: number?)
				return getRotationFromProgress(progressValue, side)
			end),
		}) :: React.ReactElement
	end
end

-- Each half clips its own copy of the RadialFill annulus, because one swept gradient cannot cover 360 degrees.
local function ProgressRing(props: {
	progress: Bindable<number>?,
	isIndeterminate: IsIndeterminate,
	pulse: React.Binding<number>?,
	hasCaps: boolean,
	testId: string?,
})
	return React.createElement(React.Fragment, {}, {
		LeftGradient = React.createElement(View, {
			Size = UDim2.fromScale(0.5, 1),
			tag = "position-top-left clip",
			testId = `{props.testId}--left-gradient`,
		}, {
			Image = React.createElement(Image, {
				Image = RADIAL_FILL_IMAGE,
				Size = UDim2.fromScale(2, 1),
				tag = "position-top-left content-emphasis",
			}, {
				Gradient = React.createElement(ProgressGradient, {
					side = Enum.HorizontalAlignment.Left,
					isIndeterminate = props.isIndeterminate,
					progress = props.progress,
					pulse = props.pulse,
				}),
			}),
		}),
		RightGradient = React.createElement(View, {
			Size = UDim2.fromScale(0.5, 1),
			tag = "position-top-center clip",
			testId = `{props.testId}--right-gradient`,
		}, {
			Image = React.createElement(Image, {
				Image = RADIAL_FILL_IMAGE,
				Size = UDim2.fromScale(2, 1),
				Position = UDim2.fromScale(-1, 0),
				tag = "content-emphasis",
			}, {
				Gradient = React.createElement(ProgressGradient, {
					side = Enum.HorizontalAlignment.Right,
					isIndeterminate = props.isIndeterminate,
					progress = props.progress,
					pulse = props.pulse,
				}),
			}),
		}),
		Caps = if props.hasCaps
			then React.createElement(ArcCaps, {
				progress = props.progress,
				testId = props.testId,
			})
			else nil,
	})
end

-- Rotating an element inside a list layout does not actually rotate it, so the spinner needs its own wrapper.
local function SpinningRing(props: {
	size: UDim2,
	rotation: React.Binding<number>,
	hasCaps: boolean,
	testId: string?,
})
	return React.createElement(View, {
		Size = props.size,
		Rotation = props.rotation,
		testId = `{props.testId}--indeterminate-container`,
	}, {
		Ring = React.createElement(ProgressRing, {
			progress = INDETERMINATE_ARC_FRACTION,
			isIndeterminate = true,
			hasCaps = props.hasCaps,
			testId = props.testId,
		}),
	})
end

local function ProgressCircle(progressProps: ProgressCircleProps & {
	ref: React.Ref<GuiObject>?,
})
	local props = withDefaults(progressProps, defaultProps)
	local tokens = useTokens()
	local preferences = usePreferences()
	local variants = useProgressVariants(tokens, props.size)
	local progress, isIndeterminate = useProgressBinding(props.value)
	local rotation = useRotation(1)
	local pulse = usePulseBinding(1 / Constants.INDETERMINATE_SHIMMER_SPEED)

	local circleSize = UDim2.fromOffset(variants.circle.size, variants.circle.size)

	if isIndeterminate and not preferences.reducedMotion then
		return React.createElement(
			View,
			withCommonProps(props, {
				tag = "auto-xy",
				ref = props.ref,
			}),
			{
				IndeterminateContainer = React.createElement(SpinningRing, {
					size = circleSize,
					rotation = rotation,
					hasCaps = Flags.FoundationProgressCircleRoundCaps,
					testId = props.testId,
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
				Ring = React.createElement(ProgressRing, {
					progress = progress,
					isIndeterminate = isIndeterminate,
					pulse = pulse,
					-- Reduced-motion indeterminate pulses a solid ring, so it has no arc ends to round.
					hasCaps = Flags.FoundationProgressCircleRoundCaps and not isIndeterminate,
					testId = props.testId,
				}),
				ProgressLabel = if variants.circle.labelFont and not isIndeterminate
					then React.createElement(Text, {
						Text = mapBindable(progress, getLabelFromProgress),
						fontStyle = variants.circle.labelFont,
						tag = "position-center-center anchor-center-center",
						testId = `{props.testId}--label`,
					})
					else nil,
			}
		)
	end
end

return ProgressCircle
