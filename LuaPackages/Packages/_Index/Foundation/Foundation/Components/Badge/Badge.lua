local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local useTokens = require(Foundation.Providers.Style.useTokens)
local Types = require(Foundation.Components.Types)
local Icon = require(Foundation.Components.Icon)
local View = require(Foundation.Components.View)
local Text = require(Foundation.Components.Text)
local withDefaults = require(Foundation.Utility.withDefaults)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local useBadgeVariants = require(script.Parent.useBadgeVariants)

local BadgeVariant = require(Foundation.Enums.BadgeVariant)
type BadgeVariant = BadgeVariant.BadgeVariant

local IconSize = require(Foundation.Enums.IconSize)
local IconPosition = require(Foundation.Enums.IconPosition)
type IconPosition = IconPosition.IconPosition

type Icon = {
	name: string,
	position: IconPosition,
}

type BadgeProps = {
	text: string?,
	icon: (string | Icon)?,
	isDisabled: boolean?,
	variant: BadgeVariant?,
} & Types.CommonProps

local defaultProps = {
	variant = BadgeVariant.Primary,
}

local function Badge(badgeProps: BadgeProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(badgeProps, defaultProps)

	local tokens = useTokens()
	local badgeVariants = useBadgeVariants(props.variant)

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
	local hasText = props.text and #props.text > 0
	local horizontalPadding = if not hasText then tokens.Padding.XXSmall else tokens.Padding.XSmall

	return React.createElement(
		View,
		withCommonProps(props, {
			GroupTransparency = if props.isDisabled then 0.5 else nil,
			backgroundStyle = badgeVariants.backgroundStyle,
			stroke = {
				Color = tokens.Color.Surface.Surface_100.Color3,
				Transparency = tokens.Color.Surface.Surface_100.Transparency,
			},
			sizeConstraint = {
				MinSize = Vector2.new(tokens.Size.Size_200, tokens.Size.Size_200),
				-- Closest we have to 60 as per design spec
				MaxSize = Vector2.new(tokens.Size.Size_1600, math.huge),
			},
			tag = {
				["auto-xy radius-circle row align-y-center align-x-center stroke-thick"] = true,
				["padding-y-xxsmall"] = hasIcon or hasText,
				["padding-x-xsmall"] = hasText,
				["padding-x-xxsmall"] = not hasText and hasIcon,
			},
			ref = ref,
		}),
		{
			Icon = if icon ~= nil -- Duplicate check of hasIcon since type inference isn't smart enough
				then React.createElement(Icon, {
					name = icon.name,
					size = IconSize.Small,
					style = badgeVariants.contentStyle,
					LayoutOrder = if icon.position == IconPosition.Left then 1 else 3,
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
					sizeConstraint = if hasIcon
						then {
							-- Necessary to ensure that the ... fits inside badge
							MaxSize = Vector2.new(
								tokens.Size.Size_1600
									- tokens.Semantic.Icon.Size.Small -- TODO(tokens): replace with non-semantic value
									- horizontalPadding,
								math.huge
							),
						}
						else nil,
					tag = "auto-xy padding-x-xsmall text-label-small text-truncate-end",
				})
				else nil,
		}
	)
end

return React.memo(React.forwardRef(Badge))
