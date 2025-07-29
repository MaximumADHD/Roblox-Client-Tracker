local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local BuilderIcons = require(Packages.BuilderIcons)
local migrationLookup = BuilderIcons.Migration["uiblox"]

local Flags = require(Foundation.Utility.Flags)

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local IconSize = require(Foundation.Enums.IconSize)
type IconSize = IconSize.IconSize

local ButtonVariant = require(Foundation.Enums.ButtonVariant)
type ButtonVariant = ButtonVariant.ButtonVariant

local Radius = require(Foundation.Enums.Radius)
type Radius = Radius.Radius

local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)
local useIconSize = require(Foundation.Utility.useIconSize)
local getIconScale = require(Foundation.Utility.getIconScale)
local useIconButtonVariants = require(script.Parent.useIconButtonVariants)
local useIconButtonPadding = require(script.Parent.useIconButtonPadding)
local isBuilderIcon = require(Foundation.Utility.isBuilderIcon)
local iconMigrationUtils = require(Foundation.Utility.iconMigrationUtils)
local isMigrated = iconMigrationUtils.isMigrated
local isBuilderOrMigratedIcon = iconMigrationUtils.isBuilderOrMigratedIcon

local Icon = require(Foundation.Components.Icon)
local View = require(Foundation.Components.View)
local Text = require(Foundation.Components.Text)
local Image = require(Foundation.Components.Image)
local Types = require(Foundation.Components.Types)

type IconButtonProps = {
	onActivated: () -> (),
	isDisabled: boolean?,
	isCircular: boolean?,
	-- Size of IconButton. `IconSize` is deprecated - use `InputSize`.
	-- `Large` and `XLarge` `IconSize`s map to `InputSize.Large` and are not supported.
	size: (InputSize | IconSize)?,
	variant: ButtonVariant?,
	icon: string | {
		name: string,
		variant: BuilderIcons.IconVariant?,
	},
} & Types.SelectionProps & Types.CommonProps

local defaultProps = {
	isDisabled = false,
	size = if Flags.FoundationUpdateIconButtonSizes then InputSize.Medium else IconSize.Medium,
	isCircular = false,
	variant = ButtonVariant.Utility,
}

local DISABLED_TRANSPARENCY = 0.5

local function IconButton(iconButtonProps: IconButtonProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(iconButtonProps, defaultProps)
	local tokens = useTokens()

	local iconName = if typeof(props.icon) == "table" then props.icon.name else props.icon
	local iconVariant: BuilderIcons.IconVariant? = if typeof(props.icon) == "table" then props.icon.variant else nil

	local isBuilderIcon = isBuilderIcon(iconName)
	local intrinsicIconSize: Vector2?, scale
	if isBuilderOrMigratedIcon(iconName) then
		intrinsicIconSize, scale = nil, 1
	else
		intrinsicIconSize, scale = getIconScale(iconName, props.size)
	end

	-- Use variant system for styling
	local variantProps = useIconButtonVariants(tokens, props.size, props.variant)

	-- Remove with FoundationUpdateIconButtonSizes
	local paddingOffset = useIconButtonPadding(props.size, isBuilderIcon)
	local padding = UDim.new(0, paddingOffset)

	-- Override radius if circular
	local componentRadius = if props.isCircular
		then UDim.new(0, tokens.Radius.Circle)
		else UDim.new(0, variantProps.container.radius or tokens.Radius.Large)

	local iconSize = useIconSize(props.size, isBuilderIcon) :: UDim2 -- We don't support bindings for IconButton size

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
			onActivated = props.onActivated,
			Size = if Flags.FoundationUpdateIconButtonSizes
				then variantProps.container.size
				else iconSize + UDim2.new(padding, padding) + UDim2.new(padding, padding),
			selection = {
				Selectable = if props.isDisabled then false else props.Selectable,
				NextSelectionUp = props.NextSelectionUp,
				NextSelectionDown = props.NextSelectionDown,
				NextSelectionLeft = props.NextSelectionLeft,
				NextSelectionRight = props.NextSelectionRight,
			},
			isDisabled = props.isDisabled,
			padding = if Flags.FoundationUpdateIconButtonSizes then variantProps.container.padding else padding,
			cornerRadius = componentRadius,
			backgroundStyle = variantProps.container.style,
			stroke = variantProps.container.stroke,
			cursor = cursor,
			tag = if Flags.FoundationUpdateIconButtonSizes then variantProps.container.tag else nil,
			GroupTransparency = if props.isDisabled then DISABLED_TRANSPARENCY else nil,
			ref = ref,
		}),
		{
			Icon = if Flags.FoundationUpdateIconButtonSizes
				then (if isBuilderOrMigratedIcon(iconName)
					then React.createElement(Text, {
						Text = if isMigrated(iconName) then migrationLookup[iconName].name else iconName,
						fontStyle = {
							Font = BuilderIcons.Font[if isMigrated(iconName)
								then migrationLookup[iconName].variant
								else iconVariant or BuilderIcons.IconVariant.Regular],
							FontSize = iconSize.Y.Offset,
						},
						tag = "anchor-center-center position-center-center",
						Size = iconSize,
						textStyle = variantProps.content.style,
					})
					else React.createElement(Image, {
						tag = "anchor-center-center position-center-center",
						Image = iconName,
						Size = if intrinsicIconSize
							then UDim2.fromOffset(intrinsicIconSize.X, intrinsicIconSize.Y)
							else iconSize,
						imageStyle = variantProps.content.style,
						scale = scale,
					}))
				else React.createElement(Icon, {
					name = iconName,
					variant = iconVariant,
					size = props.size,
					style = variantProps.content.style,
				}),
		}
	)
end

return React.memo(React.forwardRef(IconButton))
