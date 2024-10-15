local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local ReactUtils = require(Packages.ReactUtils)
local useClock = ReactUtils.useClock

local Components = Foundation.Components
local View = require(Components.View)
local Types = require(Components.Types)
type Bindable<T> = Types.Bindable<T>

local Radius = require(Foundation.Enums.Radius)
type Radius = Radius.Radius

local useTokens = require(Foundation.Providers.Style.useTokens)
local usePreferences = require(Foundation.Providers.Preferences.usePreferences)
local withDefaults = require(Foundation.Utility.withDefaults)
local withCommonProps = require(Foundation.Utility.withCommonProps)

local lerp = require(Foundation.Utility.lerp)

local TRANSPARENCY_DELTA = 0.1
local GRADIENT_OFFSET = 3
local ANIMATION_SPEED = 2

type Props = {
	radius: Radius?,
	Size: Bindable<UDim2>?,
	AnchorPoint: Bindable<Vector2>?,
} & Types.CommonProps

local defaultProps = {
	radius = Radius.None,
	Size = UDim2.fromScale(1, 1),
}

local function Skeleton(skeletonProps: Props, ref: React.Ref<GuiObject>?)
	local props = withDefaults(skeletonProps, defaultProps)
	local clockBinding = useClock()
	local tokens = useTokens()
	local preferences = usePreferences()

	local cornerRadius = if props.radius ~= Radius.None then UDim.new(0, tokens.Radius[props.radius]) else nil

	return React.createElement(
		View,
		withCommonProps(props, {
			cornerRadius = cornerRadius,
			backgroundStyle = if preferences.reducedMotion
				then clockBinding:map(function(value: number)
					local alpha = (1 + math.sin(value * ANIMATION_SPEED)) / 2
					return {
						Color3 = tokens.Color.Content.Emphasis.Color3,
						Transparency = lerp(
							tokens.Color.Extended.White.White_10.Transparency,
							tokens.Color.Extended.White.White_10.Transparency - TRANSPARENCY_DELTA,
							alpha
						),
					}
				end)
				else tokens.Color.Extended.White.White_10,
			AnchorPoint = props.AnchorPoint,
			Size = props.Size,
			ref = ref,
		}),
		{
			Gradient = if not preferences.reducedMotion
				then React.createElement("UIGradient", {
					Color = ColorSequence.new(tokens.Color.Content.Emphasis.Color3),
					Transparency = NumberSequence.new({
						NumberSequenceKeypoint.new(0, 0),
						NumberSequenceKeypoint.new(0.5, 1),
						NumberSequenceKeypoint.new(1, 0),
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
