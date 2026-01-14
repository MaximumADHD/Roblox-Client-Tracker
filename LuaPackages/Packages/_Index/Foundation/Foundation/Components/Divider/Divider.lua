local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local DividerVariant = require(Foundation.Enums.DividerVariant)
local Orientation = require(Foundation.Enums.Orientation)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local useDividerVariants = require(script.Parent.useDividerVariants)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

type DividerVariant = DividerVariant.DividerVariant
type Orientation = Orientation.Orientation

export type DividerProps = {
	variant: DividerVariant?,
	orientation: Orientation?,
} & Types.CommonProps

local defaultProps = {
	variant = DividerVariant.Default,
	orientation = Orientation.Horizontal,
	testId = "--foundation-divider",
}

local function Divider(dividerProps: DividerProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(dividerProps, defaultProps)
	local tokens = useTokens()
	local variantProps = useDividerVariants(tokens, props.variant, props.orientation)
	local isHeavy = props.variant :: DividerVariant == DividerVariant.Heavy
		and props.orientation :: Orientation ~= Orientation.Vertical

	return React.createElement(
		View,
		withCommonProps(props, {
			tag = variantProps.container.tag,
			ref = ref,
		}),
		{
			DividerStroke = React.createElement(View, {
				Size = variantProps.stroke.Size,
				backgroundStyle = variantProps.stroke.backgroundStyle,
			}),
			DividerLine = if isHeavy
				then React.createElement(View, {
					tag = variantProps.line.tag,
					Position = variantProps.line.position,
					backgroundStyle = variantProps.line.backgroundStyle,
				})
				else nil,
		}
	)
end

return React.memo(React.forwardRef(Divider))
