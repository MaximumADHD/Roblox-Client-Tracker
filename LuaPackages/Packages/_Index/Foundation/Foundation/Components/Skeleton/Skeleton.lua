local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local ReactUtils = require(Packages.ReactUtils)
local useClock = ReactUtils.useClock

local Components = Foundation.Components
local Types = require(Components.Types)
local View = require(Components.View)
type Bindable<T> = Types.Bindable<T>

local Radius = require(Foundation.Enums.Radius)
type Radius = Radius.Radius

local usePreferences = require(Foundation.Providers.Preferences.usePreferences)
local usePulseBinding = require(Foundation.Utility.usePulseBinding)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local lerp = require(Foundation.Utility.lerp)

local TRANSPARENCY_DELTA = 0.1
local GRADIENT_OFFSET = 3
local ANIMATION_SPEED = 2

export type SkeletonProps = {
	radius: Radius?,
	Size: Bindable<UDim2>?,
} & Types.CommonProps

local defaultProps = {
	radius = Radius.None,
	Size = UDim2.fromScale(1, 1),
	testId = "--foundation-skeleton",
}

local function Skeleton(skeletonProps: SkeletonProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(skeletonProps, defaultProps)
	local clockBinding = useClock()
	local pulseBinding = usePulseBinding(ANIMATION_SPEED)
	local tokens = useTokens()
	local preferences = usePreferences()

	local cornerRadius = if props.radius ~= Radius.None then UDim.new(0, tokens.Radius[props.radius]) else nil

	return React.createElement(
		View,
		withCommonProps(props, {
			cornerRadius = cornerRadius,
			backgroundStyle = if preferences.reducedMotion
				then pulseBinding:map(function(alpha: number)
					return {
						Color3 = tokens.Color.Shift.Shift_300.Color3,
						Transparency = lerp(
							tokens.Color.Extended.White.White_10.Transparency,
							tokens.Color.Extended.White.White_10.Transparency - TRANSPARENCY_DELTA,
							alpha
						),
					}
				end)
				-- Full opacity background lets the gradients transparency take accurate effect
				else tokens.Color.Extended.White.White_100,
			Size = props.Size,
			ref = ref,
		}),
		{
			Gradient = if not preferences.reducedMotion
				then React.createElement("UIGradient", {
					Color = ColorSequence.new({
						ColorSequenceKeypoint.new(0, tokens.Color.Shift.Shift_300.Color3),
						ColorSequenceKeypoint.new(0.5, tokens.Color.Extended.White.White_30.Color3),
						ColorSequenceKeypoint.new(1, tokens.Color.Shift.Shift_300.Color3),
					}),
					Transparency = NumberSequence.new({
						NumberSequenceKeypoint.new(0, tokens.Color.Shift.Shift_300.Transparency),
						NumberSequenceKeypoint.new(0.5, tokens.Color.Extended.White.White_30.Transparency),
						NumberSequenceKeypoint.new(1, tokens.Color.Shift.Shift_300.Transparency),
					}),
					Offset = clockBinding:map(function(value: number)
						return Vector2.new(value * ANIMATION_SPEED % GRADIENT_OFFSET - (GRADIENT_OFFSET / 2), 0)
					end),
					Rotation = 15,
				})
				else nil,
		}
	)
end

return React.memo(React.forwardRef(Skeleton))
