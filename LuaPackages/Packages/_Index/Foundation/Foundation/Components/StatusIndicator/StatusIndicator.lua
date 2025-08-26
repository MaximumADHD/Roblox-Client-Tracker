local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local useTokens = require(Foundation.Providers.Style.useTokens)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local Text = require(Foundation.Components.Text)
local withDefaults = require(Foundation.Utility.withDefaults)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local useStatusIndicatorVariants = require(script.Parent.useStatusIndicatorVariants)

local StatusIndicatorVariant = require(Foundation.Enums.StatusIndicatorVariant)
type StatusIndicatorVariant = StatusIndicatorVariant.StatusIndicatorVariant

type StatusIndicatorEmpty = {
	variant: StatusIndicatorVariant?,
	[any]: nil,
} & Types.CommonProps

type StatusIndicatorNumeric = {
	variant: (typeof(StatusIndicatorVariant.Emphasis) | typeof(StatusIndicatorVariant.Standard))?,
	value: number?,
	[any]: nil,
} & Types.CommonProps

export type StatusIndicatorProps = StatusIndicatorEmpty | StatusIndicatorNumeric

local defaultProps = {
	variant = StatusIndicatorVariant.Standard,
}

local function StatusIndicator(statusIndicatorProps: StatusIndicatorProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(statusIndicatorProps, defaultProps)

	local tokens = useTokens()
	local hasValue = props.value ~= nil
	local variantProps = useStatusIndicatorVariants(tokens, props.variant, hasValue)

	return React.createElement(
		View,
		withCommonProps(props, {
			tag = variantProps.container.tag,
			ref = ref,
		}),
		{
			Text = if hasValue
				then React.createElement(Text, {
					Text = tostring(props.value),
					textStyle = variantProps.content.style,
					tag = variantProps.content.tag,
				})
				else nil,
		}
	)
end

return React.memo(React.forwardRef(StatusIndicator))
