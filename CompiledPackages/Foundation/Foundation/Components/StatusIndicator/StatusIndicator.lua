local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local ReactIs = require(Packages.ReactIs)

local useTokens = require(Foundation.Providers.Style.useTokens)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local Text = require(Foundation.Components.Text)
local withDefaults = require(Foundation.Utility.withDefaults)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local useStatusIndicatorVariants = require(script.Parent.useStatusIndicatorVariants)

local StatusIndicatorVariant = require(Foundation.Enums.StatusIndicatorVariant)
type StatusIndicatorVariant = StatusIndicatorVariant.StatusIndicatorVariant

type Bindable<T> = Types.Bindable<T>

type StatusIndicatorEmpty = {
	variant: StatusIndicatorVariant?,
	[any]: nil,
} & Types.CommonProps

type StatusIndicatorNumeric = {
	variant: (
		typeof(StatusIndicatorVariant.Emphasis)
		| typeof(StatusIndicatorVariant.Standard)
		| typeof(StatusIndicatorVariant.Alert)
		| typeof(StatusIndicatorVariant.Contrast_Experiment)
	)?,
	value: Bindable<number>,
	max: number?,
	[any]: nil,
} & Types.CommonProps

export type StatusIndicatorProps = StatusIndicatorEmpty | StatusIndicatorNumeric

local defaultProps = {
	variant = StatusIndicatorVariant.Standard,
	max = math.huge,
	testId = "--foundation-status-indicator",
}

local function StatusIndicator(statusIndicatorProps: StatusIndicatorProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(statusIndicatorProps, defaultProps)

	local tokens = useTokens()
	local hasValue = props.value ~= nil
	local variantProps = useStatusIndicatorVariants(tokens, props.variant, hasValue)

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
			ref = ref,
		}),
		{
			Text = if hasValue
				then React.createElement(Text, {
					Text = if ReactIs.isBinding(props.value)
						then (props.value :: React.Binding<number>):map(formatValue)
						else formatValue(props.value :: number),
					textStyle = variantProps.content.style,
					tag = variantProps.content.tag,
					testId = `{props.testId}--text`,
				})
				else nil,
		}
	)
end

return React.memo(React.forwardRef(StatusIndicator))
