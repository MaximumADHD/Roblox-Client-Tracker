local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local BuilderIcons = require(Packages.BuilderIcons)
type IconVariant = BuilderIcons.IconVariant

local Icon = require(Foundation.Components.Icon)
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local useBadgeVariants = require(script.Parent.useBadgeVariants_DEPRECATED)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local BadgeVariant = require(Foundation.Enums.BadgeVariant)
type BadgeVariant = BadgeVariant.BadgeVariant
local BadgeSize = require(Foundation.Enums.BadgeSize)
type BadgeSize = BadgeSize.BadgeSize

local IconPosition = require(Foundation.Enums.IconPosition)
local IconSize = require(Foundation.Enums.IconSize)
type IconPosition = IconPosition.IconPosition

type Icon = {
	name: string,
	variant: IconVariant?,
	position: IconPosition,
}

type BadgeProps = {
	text: string?,
	icon: (string | Icon)?,
	isDisabled: boolean?,
	variant: BadgeVariant?,
	size: BadgeSize?,
} & Types.CommonProps

local defaultProps = {
	variant = BadgeVariant.Primary,
	size = BadgeSize.Medium,
	testId = "--foundation-badge",
}

local function Badge(badgeProps: BadgeProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(badgeProps, defaultProps)

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

	local hasIcon = icon ~= nil
	local hasText = props.text ~= nil and #props.text > 0

	local badgeVariants, containerSizeConstraint, textSizeConstraint, containerTags, textTags =
		useBadgeVariants(props.variant, props.size, hasIcon, hasText)

	return React.createElement(
		View,
		withCommonProps(props, {
			GroupTransparency = if props.isDisabled then 0.5 else nil,
			backgroundStyle = badgeVariants.backgroundStyle,
			stroke = {
				Color = tokens.Color.Surface.Surface_100.Color3,
				Transparency = tokens.Color.Surface.Surface_100.Transparency,
			},
			sizeConstraint = containerSizeConstraint,
			tag = containerTags,
			ref = ref,
		}),
		{
			Icon = if icon ~= nil -- Duplicate check of hasIcon since type inference isn't smart enough
				then React.createElement(Icon, {
					name = icon.name,
					size = IconSize.Small,
					style = badgeVariants.contentStyle,
					LayoutOrder = if icon.position == IconPosition.Left then 1 else 3,
					testId = `{props.testId}--icon`,
				})
				else nil,
			Text = if hasText
				then React.createElement(Text, {
					Text = props.text,
					textStyle = badgeVariants.contentStyle,
					fontStyle = {
						-- Necessary for accurate vertical sizing and alignment
						LineHeight = 1,
					},
					RichText = true,
					LayoutOrder = 2,
					sizeConstraint = textSizeConstraint,
					tag = textTags,
					testId = `{props.testId}--text`,
				})
				else nil,
		}
	)
end

return React.memo(React.forwardRef(Badge))
