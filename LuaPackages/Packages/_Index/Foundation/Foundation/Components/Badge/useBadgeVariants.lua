local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BadgeVariant = require(Foundation.Enums.BadgeVariant)
local Dash = require(Packages.Dash)
type BadgeVariant = BadgeVariant.BadgeVariant
local BadgeShape = require(Foundation.Enums.BadgeShape)
type BadgeShape = BadgeShape.BadgeShape
local BadgeSize = require(Foundation.Enums.BadgeSize)
type BadgeSize = BadgeSize.BadgeSize
local IconPosition = require(Foundation.Enums.IconPosition)
type IconPosition = IconPosition.IconPosition
local IconSize = require(Foundation.Enums.IconSize)
type IconSize = IconSize.IconSize

local Types = require(Foundation.Components.Types)
type ColorStyleValue = Types.ColorStyleValue

local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps
local Flags = require(Foundation.Utility.Flags)

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)

type BadgeVariantProps = {
	container: { tag: string, backgroundStyle: ColorStyleValue, stroke: Types.Stroke? },
	text: { tag: string },
	content: { style: ColorStyleValue },
	icon: { style: Types.ColorStyle, size: IconSize },
}

function variantsFactory(tokens: Tokens)
	local common = {
		container = {
			tag = if Flags.FoundationBadgeBetaUpdate
				then "row align-x-center align-y-center auto-xy"
				else "row align-x-center align-y-center gap-xsmall",
		},
		text = {
			tag = if Flags.FoundationBadgeBetaUpdate
				then "auto-xy text-align-x-left text-truncate-split"
				else "auto-xy text-label-small text-align-x-left text-truncate-split",
		},
	}

	local variants: { [BadgeVariant]: VariantProps } = {
		[BadgeVariant.Alert] = {
			container = {
				backgroundStyle = if Flags.FoundationBadgeBetaUpdate
					then {
						-- Using Color3 and Transparency distinctly due to tokens used in spec not available yet in Luau
						Color3 = tokens.Color.System.Alert.Color3,
						Transparency = 0.8,
					}
					else tokens.Color.System.Alert,
			},
			content = {
				style = if Flags.FoundationBadgeBetaUpdate
					then tokens.Color.Content.Emphasis
					else tokens.DarkMode.Content.Emphasis,
			},
			icon = { style = tokens.Color.System.Alert },
		},
		[BadgeVariant.Success] = {
			container = {
				backgroundStyle = if Flags.FoundationBadgeBetaUpdate
					then {
						-- Using Color3 and Transparency distinctly due to tokens used in spec not available yet in Luau
						Color3 = tokens.Color.System.Success.Color3,
						Transparency = 0.8,
					}
					else tokens.Color.System.Success,
			},
			content = {
				style = if Flags.FoundationBadgeBetaUpdate
					then tokens.Color.Content.Emphasis
					else tokens.LightMode.Content.Emphasis,
			},
			icon = { style = tokens.Color.System.Success },
		},
		[BadgeVariant.Warning] = {
			container = {
				backgroundStyle = if Flags.FoundationBadgeBetaUpdate
					then {
						-- Using Color3 and Transparency distinctly due to tokens used in spec not available yet in Luau
						Color3 = tokens.Color.System.Warning.Color3,
						Transparency = 0.8,
					}
					else tokens.Color.System.Warning,
			},
			content = {
				style = if Flags.FoundationBadgeBetaUpdate
					then tokens.Color.Content.Emphasis
					else tokens.LightMode.Content.Emphasis,
			},
			icon = { style = tokens.Color.System.Warning },
		},
		[BadgeVariant.Contrast] = {
			container = {
				backgroundStyle = tokens.Color.System.Contrast,
			},
			content = {
				style = tokens.Inverse.Content.Emphasis,
			},
			icon = { style = tokens.Inverse.Content.Emphasis },
		},
		[BadgeVariant.Standard] = {
			container = {
				backgroundStyle = tokens.Color.ActionStandard.Background,
			},
			content = {
				style = tokens.Color.ActionStandard.Foreground,
			},
			icon = { style = tokens.Color.ActionStandard.Foreground },
		},
		[BadgeVariant.Neutral] = if Flags.FoundationBadgeBetaUpdate
			then nil :: never
			else {
				container = {
					backgroundStyle = tokens.Color.Shift.Shift_300,
				},
				content = {
					style = tokens.Color.Content.Emphasis,
				},
				icon = { style = tokens.Color.ActionStandard.Foreground },
			},
		[BadgeVariant.OverMedia] = {
			container = {
				backgroundStyle = if Flags.FoundationBadgeBetaUpdate
					then tokens.Color.OverMedia.OverMedia_0
					else tokens.LightMode.Surface.Surface_100,
				stroke = if Flags.FoundationBadgeBetaUpdate
					then nil
					else {
						Color = tokens.LightMode.Stroke.Default.Color3,
						Transparency = tokens.LightMode.Stroke.Default.Transparency,
					},
			},
			content = {
				style = if Flags.FoundationBadgeBetaUpdate
					then tokens.Inverse.OverMedia.OverMedia_0
					else tokens.LightMode.Content.Emphasis,
			},
			icon = { style = tokens.Inverse.OverMedia.OverMedia_0 },
		},
		[BadgeVariant.Emphasis] = {
			container = {
				backgroundStyle = tokens.Color.ActionEmphasis.Background,
			},
			content = {
				style = tokens.Color.ActionEmphasis.Foreground,
			},
			icon = { style = tokens.Color.ActionEmphasis.Foreground },
		},
	}

	-- Remove with FoundationBadgeBetaUpdate
	local iconOnly: { [boolean]: any } = if Flags.FoundationBadgeBetaUpdate
		then nil :: never
		else {
			[true] = { container = { tag = "size-600" } },
			[false] = { container = { tag = "size-0-600 auto-x padding-x-small" } },
		}

	local sizes: { [BadgeSize]: VariantProps } = if Flags.FoundationBadgeBetaUpdate
		then {
			[BadgeSize.XSmall] = {
				container = { tag = "gap-xxsmall size-0-400 padding-x-xsmall" },
				text = { tag = "text-caption-small" },
				icon = { size = IconSize.XSmall },
			},
			[BadgeSize.Small] = {
				container = { tag = "gap-xsmall size-0-600 padding-x-small" },
				text = { tag = "text-caption-medium" },
				icon = { size = IconSize.XSmall },
			},
			-- BadgeSize.Medium is deprecated. Mapping to Small for compatibility behind FoundationBadgeBetaUpdate
			[BadgeSize.Medium] = {
				container = { tag = "gap-xsmall size-0-600 padding-x-small" },
				text = { tag = "text-caption-medium" },
				icon = { size = IconSize.XSmall },
			},
		}
		else nil :: never

	local shapes: { [BadgeShape]: any } = {
		[BadgeShape.Pill] = { container = { tag = "radius-circle" } },
		[BadgeShape.Box] = { container = { tag = "radius-small" } },
	}

	local iconPlacement: { [IconPosition | typeof(Dash.None)]: any } = if Flags.FoundationBadgeBetaUpdate
		then {
			[IconPosition.Left] = {
				text = { tag = "padding-right-xsmall" },
			},
			[IconPosition.Right] = {
				text = { tag = "padding-left-xsmall" },
			},
			[Dash.None] = {
				text = { tag = "padding-x-xsmall" },
			},
		}
		else nil :: never

	return {
		common = common,
		variants = variants,
		shapes = shapes,
		iconOnly = if Flags.FoundationBadgeBetaUpdate then nil :: never else iconOnly,
		sizes = sizes,
		iconPlacement = iconPlacement,
	}
end

return function(
	tokens: Tokens,
	variant: BadgeVariant,
	shape: BadgeShape,
	size: BadgeSize,
	iconPlacement: IconPosition?,
	isIconOnly: boolean
): BadgeVariantProps
	local props = VariantsContext.useVariants("Badge", variantsFactory, tokens)
	return composeStyleVariant(
		props.common,
		props.variants[variant],
		props.shapes[shape],
		if Flags.FoundationBadgeBetaUpdate then props.sizes[size] else nil :: never,
		if Flags.FoundationBadgeBetaUpdate
			then props.iconPlacement[if iconPlacement then iconPlacement else Dash.None]
			else nil :: never,
		if Flags.FoundationBadgeBetaUpdate then nil :: never else props.iconOnly[isIconOnly]
	)
end
