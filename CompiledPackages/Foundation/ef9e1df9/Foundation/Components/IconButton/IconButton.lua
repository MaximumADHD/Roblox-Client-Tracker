local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local React = require(Packages.React)
local migrationLookup = BuilderIcons.Migration["uiblox"]

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local FillBehavior = require(Foundation.Enums.FillBehavior)
type FillBehavior = FillBehavior.FillBehavior

local IconSize = require(Foundation.Enums.IconSize)
type IconSize = IconSize.IconSize

local ButtonVariant = require(Foundation.Enums.ButtonVariant)
type ButtonVariant = ButtonVariant.ButtonVariant

local Flags = require(Foundation.Utility.Flags)

-- IconButton and Button variants are not currently aligned, but eventually it should be.
-- For now we don't want to create a new variant enum for IconButton, so we'll use the Button variant enum
-- and extract only the supported variants.
type SupportedIconButtonVariant =
	typeof(ButtonVariant.Standard)
	| typeof(ButtonVariant.Emphasis)
	| typeof(ButtonVariant.Utility)
	| typeof(ButtonVariant.OverMedia)
	| typeof(ButtonVariant.Alert)

local Radius = require(Foundation.Enums.Radius)
type Radius = Radius.Radius

local useTokens = require(Foundation.Providers.Style.useTokens)
local usePresentationContext = require(Foundation.Providers.Style.PresentationContext).usePresentationContext
local getIconScale = require(Foundation.Utility.getIconScale)
local iconMigrationUtils = require(Foundation.Utility.iconMigrationUtils)
local isBuilderIcon = require(Foundation.Utility.isBuilderIcon)
local useIconButtonVariants = require(script.Parent.useIconButtonVariants)
local useIconSize = require(Foundation.Utility.useIconSize)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)
local isMigrated = iconMigrationUtils.isMigrated
local isBuilderOrMigratedIcon = iconMigrationUtils.isBuilderOrMigratedIcon

local Constants = require(Foundation.Constants)

local Image = require(Foundation.Components.Image)
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)

export type IconButtonProps = {
	onActivated: () -> (),
	isDisabled: boolean?,
	isCircular: boolean?,
	-- Size of IconButton. `IconSize` is deprecated - use `InputSize`.
	-- `Large` and `XLarge` `IconSize`s map to `InputSize.Large` and are not supported.
	size: (InputSize | IconSize)?,
	-- Sets a custom width. Prefer wrapping in a fixed-width container and using `fillBehavior = Fill` instead.
	width: UDim?,
	-- Controls how the IconButton fills space in a layout.
	fillBehavior: FillBehavior?,
	variant: SupportedIconButtonVariant?,
	icon: string | {
		name: string,
		variant: BuilderIcons.IconVariant?,
	},
} & Types.SelectionProps & Types.CommonProps

local defaultProps = {
	isDisabled = false,
	size = InputSize.Medium,
	width = UDim.new(0, 0),
	isCircular = false,
	variant = ButtonVariant.Utility,
	testId = "--foundation-icon-button",
}

local function IconButton(iconButtonProps: IconButtonProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(iconButtonProps, defaultProps)
	local tokens = useTokens()
	local presentationContext = usePresentationContext()

	local iconName = if typeof(props.icon) == "table" then props.icon.name else props.icon
	local iconVariant: BuilderIcons.IconVariant? = if typeof(props.icon) == "table" then props.icon.variant else nil

	local intrinsicIconSize: Vector2?, scale
	if isBuilderOrMigratedIcon(iconName) then
		intrinsicIconSize, scale = nil, 1
	else
		intrinsicIconSize, scale = getIconScale(iconName, props.size)
	end

	-- Use variant system for styling
	local variantProps = useIconButtonVariants(
		tokens,
		props.size,
		props.variant,
		if presentationContext then presentationContext.colorMode else nil
	)

	local containerSize = variantProps.container.size

	-- Override radius if circular
	local componentRadius = if props.isCircular
		then UDim.new(0, tokens.Radius.Circle)
		else UDim.new(0, variantProps.container.radius or tokens.Radius.Large)

	local iconSize = useIconSize(props.size, isBuilderIcon(iconName), true) :: UDim2 -- We don't support bindings for IconButton size

	local cursor = React.useMemo(function()
		return {
			radius = componentRadius,
			offset = tokens.Size.Size_150,
			borderWidth = tokens.Stroke.Thicker,
		}
	end, { tokens, componentRadius } :: { unknown })

	-- Width/fillBehavior logic: fillBehavior.Fill takes precedence over width.
	-- Unlike Button, IconButton defaults to a fixed square (containerSize) rather than AutomaticSize
	local fillOverridesWidth = Flags.FoundationIconButtonFillBehavior and props.fillBehavior == FillBehavior.Fill

	local sizeX
	if Flags.FoundationIconButtonWidth then
		local hasExplicitWidth = props.width.Scale ~= 0 or props.width.Offset ~= 0
		sizeX = if fillOverridesWidth then UDim.new(1, 0) elseif hasExplicitWidth then props.width else containerSize.X
	else
		sizeX = if fillOverridesWidth then UDim.new(1, 0) else containerSize.X
	end

	return React.createElement(
		View,
		withCommonProps(props, {
			onActivated = props.onActivated,
			Size = UDim2.new(sizeX, UDim.new(0, containerSize.Y.Offset)),
			flexItem = if props.fillBehavior and Flags.FoundationIconButtonFillBehavior
				then {
					FlexMode = if props.fillBehavior == FillBehavior.Fill
						then Enum.UIFlexMode.Fill
						else Enum.UIFlexMode.Shrink,
				}
				else nil,
			selection = {
				Selectable = if props.isDisabled then false else props.Selectable,
				NextSelectionUp = props.NextSelectionUp,
				NextSelectionDown = props.NextSelectionDown,
				NextSelectionLeft = props.NextSelectionLeft,
				NextSelectionRight = props.NextSelectionRight,
			},
			isDisabled = props.isDisabled,
			stateLayer = variantProps.container.stateLayer,
			padding = variantProps.container.padding,
			cornerRadius = componentRadius,
			backgroundStyle = variantProps.container.style,
			stroke = variantProps.container.stroke,
			cursor = cursor,
			GroupTransparency = if props.isDisabled then Constants.DISABLED_TRANSPARENCY else nil,
			ref = ref,
		}),
		{
			Icon = if isBuilderOrMigratedIcon(iconName)
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
					testId = `{props.testId}--icon`,
				})
				else React.createElement(Image, {
					tag = "anchor-center-center position-center-center",
					Image = iconName,
					Size = if intrinsicIconSize
						then UDim2.fromOffset(intrinsicIconSize.X, intrinsicIconSize.Y)
						else iconSize,
					imageStyle = variantProps.content.style,
					scale = scale,
					testId = `{props.testId}--image`,
				}),
		}
	)
end

return React.memo(React.forwardRef(IconButton))
