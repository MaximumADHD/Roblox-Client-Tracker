local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local BuilderIcons = require(Packages.BuilderIcons)
local IconVariant = BuilderIcons.IconVariant

local Constants = require(Foundation.Constants)
local Flags = require(Foundation.Utility.Flags)
local PresentationContext = require(Foundation.Providers.Style.PresentationContext)
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local Accessory = require(script.Parent.Accessory)

local IconPosition = require(Foundation.Enums.IconPosition)
type IconPosition = IconPosition.IconPosition

local ColorNamespace = require(Foundation.Enums.ColorNamespace)
local StateLayerMode = require(Foundation.Enums.StateLayerMode)

local CursorType = require(Foundation.Enums.CursorType)
type CursorType = CursorType.CursorType

local ChipSize = require(Foundation.Enums.ChipSize)
type ChipSize = ChipSize.ChipSize

local ChipVariant = require(Foundation.Enums.ChipVariant)
type ChipVariant = ChipVariant.ChipVariant

local useChipVariants = require(script.Parent.useChipVariants)

type Accessory = Accessory.Accessory

-- DEPRECATED
type Icon = {
	name: string,
	position: IconPosition,
}

export type ChipProps = {
	-- Make required
	text: string?,
	leading: string? | Accessory,
	trailing: string? | Accessory,
	onActivated: () -> (),
	isChecked: boolean?,
	size: ChipSize?,
	variant: ChipVariant?,

	-- DEPRECATED
	children: React.ReactNode?,
	isDisabled: boolean?,
	-- DEPRECATED
	icon: (string | Icon)?,
} & Types.SelectionProps & Types.CommonProps

local defaultProps = {
	isChecked = false,
	Selectable = true,
	isDisabled = false,
	size = ChipSize.Medium,
	variant = ChipVariant.Standard,
	testId = "--foundation-chip",
}

local function Chip(chipProps: ChipProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(chipProps, defaultProps)

	local tokens = useTokens()
	local leading, trailing = React.useMemo(function()
		local leadingIcon = props.leading
		local trailingIcon = props.trailing

		-- Migration step for the deprecated `icon` prop
		if props.icon ~= nil then
			if typeof(props.icon) == "string" then
				leadingIcon = {
					iconName = props.icon,
				}
			else
				local icon = {
					iconName = props.icon.name,
				}
				if props.icon.position == IconPosition.Left then
					leadingIcon = icon
				else
					trailingIcon = icon
				end
			end
		end

		if typeof(leadingIcon) == "table" and leadingIcon.isCircular then
			leadingIcon.iconVariant = IconVariant.Filled
		end
		if typeof(trailingIcon) == "table" and trailingIcon.isCircular then
			trailingIcon.iconVariant = IconVariant.Filled
		end

		return leadingIcon, trailingIcon
	end, { props.leading, props.icon, props.trailing } :: { unknown })

	local variantProps =
		useChipVariants(tokens, props.size, props.variant, props.isChecked, leading ~= nil, trailing ~= nil)
	local cursorBorderWidth = math.floor(tokens.Stroke.Thicker)

	local presentationValue = if Flags.FoundationStableContextValues
		then React.useMemo(function()
			return {
				colorNamespace = if props.isChecked then ColorNamespace.Inverse else ColorNamespace.Color,
				isIconSize = true,
			}
		end, { props.isChecked } :: { unknown })
		else nil

	return React.createElement(
		View,
		withCommonProps(props, {
			isDisabled = props.isDisabled,
			selection = {
				Selectable = if props.isDisabled then false else props.Selectable,
				NextSelectionUp = props.NextSelectionUp,
				NextSelectionDown = props.NextSelectionDown,
				NextSelectionLeft = props.NextSelectionLeft,
				NextSelectionRight = props.NextSelectionRight,
			},
			onActivated = props.onActivated,
			stateLayer = if props.isChecked
				then {
					mode = StateLayerMode.Inverse,
				}
				else nil,
			backgroundStyle = variantProps.chip.backgroundStyle,
			padding = variantProps.chip.padding,
			cursor = {
				radius = UDim.new(0, tokens.Radius.Circle),
				offset = cursorBorderWidth * 2,
				borderWidth = cursorBorderWidth,
			},
			tag = variantProps.chip.tag,
			ref = ref,
			GroupTransparency = if props.isDisabled then Constants.DISABLED_TRANSPARENCY else 0,
		}),
		React.createElement(PresentationContext.Provider, {
			value = if Flags.FoundationStableContextValues
				then presentationValue
				else {
					colorNamespace = if props.isChecked then ColorNamespace.Inverse else ColorNamespace.Color,
					isIconSize = true,
				},
		}, {
			Leading = if leading
				then React.createElement(Accessory, {
					isLeading = true,
					config = leading,
					size = props.size,
					chipBackgroundStyle = variantProps.chip.backgroundStyle,
					contentStyle = variantProps.text.contentStyle,
					isDisabled = props.isDisabled,
					testId = `{props.testId}--leading-accessory`,
				})
				else nil,
			Text = if props.text and props.text ~= ""
				then React.createElement(Text, {
					Text = props.text,
					textStyle = variantProps.text.contentStyle,
					LayoutOrder = 2,
					tag = variantProps.text.tag,
					padding = variantProps.text.padding,
					testId = `{props.testId}--text`,
				})
				else nil,
			Trailing = if trailing
				then React.createElement(Accessory, {
					isLeading = false,
					config = trailing,
					size = props.size,
					chipBackgroundStyle = variantProps.chip.backgroundStyle,
					contentStyle = variantProps.text.contentStyle,
					isDisabled = props.isDisabled,
					testId = `{props.testId}--trailing-accessory`,
				})
				else nil,
		})
	)
end

return React.memo(React.forwardRef(Chip))
