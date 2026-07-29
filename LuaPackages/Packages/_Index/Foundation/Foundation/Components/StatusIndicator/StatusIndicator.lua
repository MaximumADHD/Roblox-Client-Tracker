local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)
local ReactIs = require(Packages.ReactIs)

local Flags = require(Foundation.Utility.Flags)
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local useStatusIndicatorVariants = require(script.Parent.useStatusIndicatorVariants)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)
local isDev = _G.__DEV__ == true

local StatusIndicatorSize = require(Foundation.Enums.StatusIndicatorSize)
type StatusIndicatorSize = StatusIndicatorSize.StatusIndicatorSize
local StatusIndicatorVariant = require(Foundation.Enums.StatusIndicatorVariant)
type StatusIndicatorVariant = StatusIndicatorVariant.StatusIndicatorVariant

local StatusIndicatorShape = require(Foundation.Enums.StatusIndicatorShape)
type StatusIndicatorShape = StatusIndicatorShape.StatusIndicatorShape

local ValidNumericVariants = require(script.Parent.ValidNumericVariants)

type Bindable<T> = Types.Bindable<T>

type StatusIndicatorEmpty = {
	variant: StatusIndicatorVariant?,
	shape: StatusIndicatorShape?,
	size: StatusIndicatorSize?,
	max: nil, -- discriminant union mechanism to avoid type errors
	value: nil, -- discriminant union mechanism to avoid type errors
} & Types.CommonProps

export type StatusIndicatorNumericVariant =
	typeof(StatusIndicatorVariant.Emphasis)
	| typeof(StatusIndicatorVariant.Standard)
	| typeof(StatusIndicatorVariant.Alert) -- Remove with FoundationStatusIndicatorVariantExperiment
	| typeof(StatusIndicatorVariant.Contrast_Experiment) -- Remove with FoundationStatusIndicatorVariantExperiment

type StatusIndicatorNumeric = {
	variant: StatusIndicatorNumericVariant?,
	value: Bindable<number>,
	size: StatusIndicatorSize?,
	max: number?,
	shape: nil,
}

type StatusIndicatorEmptyProps = StatusIndicatorEmpty & Types.CommonProps
type StatusIndicatorNumericProps = StatusIndicatorNumeric & Types.CommonProps

export type StatusIndicatorProps = StatusIndicatorEmptyProps | StatusIndicatorNumericProps

local defaultProps = {
	variant = StatusIndicatorVariant.Standard,
	shape = StatusIndicatorShape.Circle,
	size = if Flags.FoundationAvatarBeta then StatusIndicatorSize.Small else nil :: never,
	max = math.huge,
	testId = "--foundation-status-indicator",
}

local function StatusIndicator(statusIndicatorProps: StatusIndicatorProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(statusIndicatorProps, defaultProps)
	local refinedShape: StatusIndicatorShape = if props.value then StatusIndicatorShape.Circle else props.shape

	if isDev and props.value ~= nil then
		assert(
			ValidNumericVariants[props.variant],
			`{props.variant} is not a supported numeric variant. The following are valid numeric variants: {table.concat(
				Dash.filter(Dash.keys(ValidNumericVariants), function(value, _)
					return ValidNumericVariants[value] == true
				end),
				","
			)}`
		)
	end

	local tokens = useTokens()
	local hasValue = props.value ~= nil
	local variantProps = useStatusIndicatorVariants(
		tokens,
		props.variant,
		hasValue,
		refinedShape,
		if Flags.FoundationAvatarBeta then props.size else nil :: never
	)

	local formatValue = React.useCallback(function(value: number)
		if props.max and value > props.max then
			return `{props.max}+`
		else
			return tostring(value)
		end
	end, { props.max })

	return React.createElement(
		View,
		withCommonProps(props, {
			tag = variantProps.container.tag,
			backgroundStyle = if variantProps.container.backgroundStyle
				then variantProps.container.backgroundStyle
				else nil,
			ref = ref,
			Size = if Flags.FoundationAvatarBeta then variantProps.container.size else nil,
		}),
		{
			Text = if hasValue and variantProps.content.style
				then React.createElement(Text, {
					Text = if ReactIs.isBinding(props.value)
						then (props.value :: React.Binding<number>):map(formatValue)
						else formatValue(props.value :: number),
					textStyle = variantProps.content.style,
					fontStyle = {
						Font = variantProps.content.font,
						FontSize = tokens.Typography.LabelSmall.FontSize,
						LineHeight = tokens.Typography.LabelSmall.LineHeight,
					},
					tag = variantProps.content.tag,
					testId = `{props.testId}--text`,
				})
				else nil,
			InnerRing = if (if Flags.FoundationAvatarBeta then refinedShape == StatusIndicatorShape.Ring else true)
					and variantProps.ring
				then React.createElement(View, {
					tag = variantProps.ring.tag,
					Size = if Flags.FoundationAvatarBeta then variantProps.ring.size else nil,
					testId = `{props.testId}--ring`,
				})
				else nil,
		}
	)
end

return React.memo(React.forwardRef(StatusIndicator))
