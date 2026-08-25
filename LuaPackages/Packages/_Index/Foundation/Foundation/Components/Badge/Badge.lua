local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local BuilderIcons = require(Packages.BuilderIcons)
local migrationLookup = BuilderIcons.Migration["uiblox"]
local IconVariant = BuilderIcons.IconVariant
type IconVariant = BuilderIcons.IconVariant

local Icon = require(Foundation.Components.Icon)
local Image = require(Foundation.Components.Image)
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local getIconScale = require(Foundation.Utility.getIconScale)
local iconMigrationUtils = require(Foundation.Utility.iconMigrationUtils)
local useBadgeVariants = require(script.Parent.useBadgeVariants)
local useIconSize = require(Foundation.Utility.useIconSize)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)
local isMigrated = iconMigrationUtils.isMigrated
local isBuilderIconOrMigrated = iconMigrationUtils.isBuilderOrMigratedIcon
local Flags = require(Foundation.Utility.Flags)
local useScaledValue = require(Foundation.Utility.useScaledValue)

local BadgeVariant = require(Foundation.Enums.BadgeVariant)
type BadgeVariant = BadgeVariant.BadgeVariant
local BadgeShape = require(Foundation.Enums.BadgeShape)
type BadgeShape = BadgeShape.BadgeShape
local BadgeSize = require(Foundation.Enums.BadgeSize)
type BadgeSize = BadgeSize.BadgeSize

local IconSize = require(Foundation.Enums.IconSize)
type IconSize = IconSize.IconSize
local IconPosition = require(Foundation.Enums.IconPosition)
type IconPosition = IconPosition.IconPosition

local MAX_CONTENT_WIDTH = 200

type Icon = {
	name: string,
	variant: IconVariant?,
	position: IconPosition,
}

export type BadgeProps = {
	text: string?,
	icon: (string | Icon)?,
	variant: BadgeVariant?,
	shape: BadgeShape?,
	size: BadgeSize?,
	-- DEPRECATED
	isDisabled: boolean?,
} & Types.CommonProps

local defaultProps = {
	variant = BadgeVariant.Contrast,
	shape = BadgeShape.Pill,
	size = BadgeSize.Small,
	testId = "--foundation-badge",
}

-- DEPRECATED Primary, Secondary, and Neutral variants are scheduled for removal in the next major release (2.0)
local deprecatedVariantsMapping: { [BadgeVariant]: BadgeVariant } = {
	[BadgeVariant.Primary] = BadgeVariant.Contrast,
	[BadgeVariant.Secondary] = if Flags.FoundationBadgeBetaUpdate then BadgeVariant.Standard else BadgeVariant.Neutral,
	[BadgeVariant.Neutral] = if Flags.FoundationBadgeBetaUpdate then BadgeVariant.Standard else nil :: never,
}

local function Badge(badgeProps: BadgeProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(badgeProps, defaultProps)
	local variant: BadgeVariant = deprecatedVariantsMapping[props.variant] or props.variant
	local maxWidth = useScaledValue(MAX_CONTENT_WIDTH)

	local tokens = useTokens()

	local icon = React.useMemo(function(): Icon?
		if typeof(props.icon) == "string" then
			return {
				name = props.icon,
				position = IconPosition.Left,
			}
		else
			return props.icon
		end
	end, { props.icon })

	local hasText = props.text ~= nil and #props.text > 0
	local isIconOnly = not hasText
	local variantProps = useBadgeVariants(
		tokens,
		variant,
		props.shape,
		if Flags.FoundationBadgeBetaUpdate then props.size else nil :: never,
		if Flags.FoundationBadgeBetaUpdate and icon then icon.position else nil,
		if Flags.FoundationBadgeBetaUpdate then nil :: never else isIconOnly
	)

	local iconSize: IconSize = if Flags.FoundationBadgeBetaUpdate then variantProps.icon.size else IconSize.XSmall
	local iconDimensions = useIconSize(iconSize, true)

	local BadgeIcon: React.ReactElement
	if icon ~= nil then
		local LayoutOrder = if icon.position == IconPosition.Left then 1 else 3
		if isBuilderIconOrMigrated(icon.name) then
			BadgeIcon = React.createElement(Icon, {
				name = if isMigrated(icon.name) then migrationLookup[icon.name].name else icon.name,
				variant = if isMigrated(icon.name)
					then migrationLookup[icon.name].variant
					else if Flags.FoundationBadgeBetaUpdate
						then icon.variant or IconVariant.Filled -- default to filled after update
						else icon.variant,
				size = iconSize,
				style = if Flags.FoundationBadgeBetaUpdate then variantProps.icon.style else variantProps.content.style,
				LayoutOrder = LayoutOrder,
				testId = `{props.testId}--icon`,
			})
		else
			local intrinsicIconSize, scale = getIconScale(icon.name, iconSize)
			if intrinsicIconSize then
				-- UIBLOX-1906: Update Icon component to support new sizes
				BadgeIcon = React.createElement(
					View,
					{ Size = iconDimensions },
					React.createElement(Image, {
						Image = icon.name,
						Size = UDim2.fromOffset(intrinsicIconSize.X, intrinsicIconSize.Y),
						imageStyle = if Flags.FoundationBadgeBetaUpdate
							then variantProps.icon.style
							else variantProps.content.style,
						scale = scale,
						AnchorPoint = Vector2.new(0.5, 0.5),
						Position = UDim2.fromScale(0.5, 0.5),
						LayoutOrder = LayoutOrder,
						testId = `{props.testId}--icon`,
					})
				)
			end
		end
	end

	return React.createElement(
		View,
		withCommonProps(props, {
			backgroundStyle = variantProps.container.backgroundStyle,
			stroke = if Flags.FoundationBadgeBetaUpdate then nil else variantProps.container.stroke,
			tag = variantProps.container.tag,
			ref = ref,
		}),
		{
			Icon = BadgeIcon,
			Text = if hasText
				then React.createElement(Text, {
					Text = props.text,
					textStyle = variantProps.content.style,
					RichText = true,
					LayoutOrder = 2,
					tag = variantProps.text.tag,
					testId = `{props.testId}--text`,
					sizeConstraint = if Flags.FoundationBadgeBetaUpdate
						then {
							MaxSize = Vector2.new(maxWidth, math.huge),
						}
						else nil,
				})
				else nil,
		}
	)
end

return React.memo(React.forwardRef(Badge))
