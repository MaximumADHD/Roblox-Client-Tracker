local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local Icon = require(Foundation.Components.Icon)
local BuilderIcons = require(Packages.BuilderIcons)

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local IconVariant = BuilderIcons.IconVariant
type IconVariant = BuilderIcons.IconVariant

local IconSize = require(Foundation.Enums.IconSize)
type IconSize = IconSize.IconSize

local CloseAffordanceVariant = require(Foundation.Enums.CloseAffordanceVariant)
type CloseAffordanceVariant = CloseAffordanceVariant.CloseAffordanceVariant

local Radius = require(Foundation.Enums.Radius)
type Radius = Radius.Radius

local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local Constants = require(Foundation.Constants)

local View = require(Foundation.Components.View)
local Types = require(Foundation.Components.Types)

local useCloseAffordanceVariants = require(script.Parent.useCloseAffordanceVariants)

type CloseAffordanceProps = {
	onActivated: () -> (),
	isDisabled: boolean?,
	-- There is no `Large` size for CloseAffordance
	size: (typeof(InputSize.XSmall) | typeof(InputSize.Small) | typeof(InputSize.Medium))?,
	variant: CloseAffordanceVariant?,
} & Types.SelectionProps & Types.CommonProps

local defaultProps = {
	isDisabled = false,
	size = InputSize.Medium,
	variant = CloseAffordanceVariant.OverMedia,
}

local function CloseAffordance(closeAffordanceProps: CloseAffordanceProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(closeAffordanceProps, defaultProps)
	local tokens = useTokens()
	local variantProps = useCloseAffordanceVariants(tokens, props.size, props.variant)
	local isCircular = props.variant == CloseAffordanceVariant.OverMedia

	local componentRadius = if isCircular
		then UDim.new(0, tokens.Radius.Circle)
		else UDim.new(0, variantProps.container.radius)

	local cursor = React.useMemo(function()
		return {
			radius = componentRadius,
			offset = tokens.Size.Size_150,
			borderWidth = tokens.Stroke.Thicker,
		}
	end, { tokens :: unknown, componentRadius })

	return React.createElement(
		View,
		withCommonProps(props, {
			Size = variantProps.container.size,
			onActivated = props.onActivated,
			selection = {
				Selectable = if props.isDisabled then false else props.Selectable,
				NextSelectionUp = props.NextSelectionUp,
				NextSelectionDown = props.NextSelectionDown,
				NextSelectionLeft = props.NextSelectionLeft,
				NextSelectionRight = props.NextSelectionRight,
			},
			isDisabled = props.isDisabled,
			padding = variantProps.container.padding,
			cornerRadius = componentRadius,
			stroke = variantProps.container.stroke,
			cursor = cursor,
			tag = variantProps.container.tag,
			GroupTransparency = if props.isDisabled then Constants.DISABLED_TRANSPARENCY else nil,
			ref = ref,
		}),
		{
			Icon = React.createElement(Icon, {
				name = "x",
				variant = IconVariant.Regular,
				size = variantProps.content.iconSize,
				style = variantProps.content.style,
			}),
		}
	)
end

return React.memo(React.forwardRef(CloseAffordance))
