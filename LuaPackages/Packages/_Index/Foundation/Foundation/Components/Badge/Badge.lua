local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local BuilderIcons = require(Packages.BuilderIcons)
local migrationLookup = BuilderIcons.Migration["uiblox"]
type IconVariant = BuilderIcons.IconVariant

local useTokens = require(Foundation.Providers.Style.useTokens)
local Types = require(Foundation.Components.Types)
local Image = require(Foundation.Components.Image)
local Icon = require(Foundation.Components.Icon)
local View = require(Foundation.Components.View)
local Text = require(Foundation.Components.Text)
local withDefaults = require(Foundation.Utility.withDefaults)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local useBadgeVariants = require(script.Parent.useBadgeVariants)
local getIconScale = require(Foundation.Utility.getIconScale)
local useIconSize = require(Foundation.Utility.useIconSize)
local iconMigrationUtils = require(Foundation.Utility.iconMigrationUtils)
local isMigrated = iconMigrationUtils.isMigrated
local isBuilderIconOrMigrated = iconMigrationUtils.isBuilderOrMigratedIcon

local BadgeVariant = require(Foundation.Enums.BadgeVariant)
type BadgeVariant = BadgeVariant.BadgeVariant
local BadgeSize = require(Foundation.Enums.BadgeSize)
type BadgeSize = BadgeSize.BadgeSize

local IconSize = require(Foundation.Enums.IconSize)
type IconSize = IconSize.IconSize
local IconPosition = require(Foundation.Enums.IconPosition)
type IconPosition = IconPosition.IconPosition

type Icon = {
	name: string,
	variant: IconVariant?,
	position: IconPosition,
}

export type BadgeProps = {
	text: string?,
	icon: (string | Icon)?,
	variant: BadgeVariant?,
	-- DEPRECATED
	isDisabled: boolean?,
	-- DEPRECATED
	size: BadgeSize?,
} & Types.CommonProps

local defaultProps = {
	variant = BadgeVariant.Contrast,
}

-- DEPRECATED Primary and Secondary variants are scheduled for removal in the next major release (2.0)
local deprecatedVariantsMapping: { [BadgeVariant]: BadgeVariant } = {
	[BadgeVariant.Primary] = BadgeVariant.Contrast,
	[BadgeVariant.Secondary] = BadgeVariant.Neutral,
}

local function Badge(badgeProps: BadgeProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(badgeProps, defaultProps)
	local variant: BadgeVariant = deprecatedVariantsMapping[props.variant] or props.variant

	local tokens = useTokens()

	local iconSize: IconSize = IconSize.XSmall
	local iconDimensions = useIconSize(iconSize, true)

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
	local variantProps = useBadgeVariants(tokens, variant, isIconOnly)

	local BadgeIcon: React.ReactElement
	if icon ~= nil then
		local layoutOrder = if icon.position == IconPosition.Left then 1 else 3
		if isBuilderIconOrMigrated(icon.name) then
			BadgeIcon = React.createElement(Icon, {
				name = if isMigrated(icon.name) then migrationLookup[icon.name].name else icon.name,
				variant = if isMigrated(icon.name) then migrationLookup[icon.name].variant else icon.variant,
				size = iconSize,
				style = variantProps.content.style,
				LayoutOrder = layoutOrder,
			})
		else
			local intrinsicIconSize, scale = getIconScale(icon.name, IconSize.XSmall)
			if intrinsicIconSize then
				-- UIBLOX-1906: Update Icon component to support new sizes
				BadgeIcon = React.createElement(
					View,
					{ Size = iconDimensions },
					React.createElement(Image, {
						Image = icon.name,
						Size = UDim2.fromOffset(intrinsicIconSize.X, intrinsicIconSize.Y),
						imageStyle = variantProps.content.style,
						scale = scale,
						AnchorPoint = Vector2.new(0.5, 0.5),
						Position = UDim2.fromScale(0.5, 0.5),
						LayoutOrder = layoutOrder,
					})
				)
			end
		end
	end

	return React.createElement(
		View,
		withCommonProps(props, {
			backgroundStyle = variantProps.container.backgroundStyle,
			stroke = variantProps.container.stroke,
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
				})
				else nil,
		}
	)
end

return React.memo(React.forwardRef(Badge))
