local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Otter = require(Packages.Otter)
local React = require(Packages.React)
local ReactOtter = require(Packages.ReactOtter)

local BackgroundStyleContext = require(Foundation.Providers.Style.BackgroundStyleContext)
local Icon = require(Foundation.Components.Icon)
local InputSize = require(Foundation.Enums.InputSize)
local Tokens = require(Foundation.Providers.Style.Tokens)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local useBackgroundStyle = BackgroundStyleContext.useBackgroundStyle
local StateLayerAffordance = require(Foundation.Enums.StateLayerAffordance)
local useScrimVariants = require(script.Parent.useScrimVariants)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)

type InputSize = InputSize.InputSize
type StateChangedCallback = Types.StateChangedCallback

local EASE_CONFIG: Otter.EaseOptions = {
	easingStyle = Tokens.defaultTokens.Ease.StandardOut,
	duration = Tokens.defaultTokens.Time.Time_200,
}

-- Both sequences have to share a keypoint count.
local function lerpNumberSequence(from: NumberSequence, to: NumberSequence, progress: number): NumberSequence
	local fromKeypoints = from.Keypoints
	local toKeypoints = to.Keypoints
	local keypoints = {}
	for index, fromKeypoint in fromKeypoints do
		local toKeypoint = toKeypoints[index]
		keypoints[index] = NumberSequenceKeypoint.new(
			fromKeypoint.Time + (toKeypoint.Time - fromKeypoint.Time) * progress,
			fromKeypoint.Value + (toKeypoint.Value - fromKeypoint.Value) * progress
		)
	end
	return NumberSequence.new(keypoints)
end

type ScrimProps = {
	size: InputSize,
	rowHeight: React.Binding<number>,
	alignment: Enum.HorizontalAlignment,
	isHovered: boolean,
	preferredInput: Enum.PreferredInput,
	isVisible: boolean,
	onActivated: () -> (),
	onStateChanged: StateChangedCallback?,
} & Types.CommonProps

local function Scrim(props: ScrimProps)
	local tokens = useTokens()
	local backgroundStyle = useBackgroundStyle()
	local variants = useScrimVariants(tokens, props.alignment, props.preferredInput)

	local isEnd = props.alignment == Enum.HorizontalAlignment.Right
	local isAlwaysShown = props.preferredInput == Enum.PreferredInput.Touch
		or props.preferredInput == Enum.PreferredInput.Gamepad

	local progress, setProgress = ReactOtter.useAnimatedBinding(if props.isHovered then 1 else 0)
	React.useEffect(function()
		setProgress(ReactOtter.ease(if props.isHovered then 1 else 0, EASE_CONFIG))
	end, { props.isHovered })

	local chevronPosition = progress:map(function(value)
		if isAlwaysShown then
			return UDim2.fromScale(0.5, 0.5)
		end
		local direction = if isEnd then 1 else -1
		return UDim2.fromScale(0.5 + direction * (1 - value), 0.5)
	end)

	local scrimSize = props.rowHeight:map(function(height: number)
		return UDim2.new(0, height + variants.fade, 1, 0)
	end)

	local gradient = progress:map(function(value)
		if isAlwaysShown then
			return variants.hoverGradient
		end
		return lerpNumberSequence(variants.gradient, variants.hoverGradient, value)
	end)

	local transparency, setTransparency = ReactOtter.useAnimatedBinding(if props.isVisible then 0 else 1)
	React.useEffect(function()
		setTransparency(ReactOtter.ease(if props.isVisible then 0 else 1, EASE_CONFIG))
	end, { props.isVisible })

	return React.createElement(
		View,
		withCommonProps(props, {
			Size = scrimSize,
			GroupTransparency = transparency,
		}),
		{
			Scrim = React.createElement(View, {
				tag = "size-full",
				backgroundStyle = backgroundStyle,
				onActivated = props.onActivated,
				stateLayer = {
					affordance = StateLayerAffordance.None,
				},
				onStateChanged = props.onStateChanged,
				isDisabled = not props.isVisible,
				selection = { Selectable = false },
				testId = `{props.testId}--button`,
			}, {
				Gradient = React.createElement("UIGradient", {
					Transparency = gradient,
				}),

				DirectionIcon = React.createElement(View, {
					tag = variants.iconAlignmentTag,
					Size = UDim2.fromScale(0, 1),
					aspectRatio = {
						AspectRatio = 1,
						AspectType = Enum.AspectType.ScaleWithParentSize,
						DominantAxis = Enum.DominantAxis.Height,
					},
					ZIndex = 2,
				}, {
					Icon = React.createElement(Icon, {
						AnchorPoint = Vector2.new(0.5, 0.5),
						Position = chevronPosition,
						size = props.size,
						name = variants.directionIcon,
						testId = `{props.testId}--direction-indicator`,
					}),
				}),
			}),
		}
	)
end

return Scrim
