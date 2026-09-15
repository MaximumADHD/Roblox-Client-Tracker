local Foundation = script:FindFirstAncestor("Foundation")

local Flags = require(Foundation.Utility.Flags)

local StatusIndicatorSize = require(Foundation.Enums.StatusIndicatorSize)
type StatusIndicatorSize = StatusIndicatorSize.StatusIndicatorSize
local StatusIndicatorVariant = require(Foundation.Enums.StatusIndicatorVariant)
type StatusIndicatorVariant = StatusIndicatorVariant.StatusIndicatorVariant
local StatusIndicatorShape = require(Foundation.Enums.StatusIndicatorShape)
type StatusIndicatorShape = StatusIndicatorShape.StatusIndicatorShape

local Types = require(Foundation.Components.Types)
type ColorStyleValue = Types.ColorStyleValue

local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local indexBindable = require(Foundation.Utility.indexBindable)

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)
local isDevMode = _G.__DEV__ == true

local Constants = require(Foundation.Constants)

type StatusIndicatorVariantProps = {
	container: { tag: string, backgroundStyle: ColorStyleValue?, size: UDim2? }, -- only populated if bg tag is non-compliant },
	content: { tag: string, style: ColorStyleValue?, font: Font },
	ring: { tag: string, size: UDim2? }?,
	stroke: Types.Stroke?,
}

-- To-Do: Remove and use tag when BuilderSansSemiBold is supported as token / tag
local BuilderSansSemiBold = Font.new(Constants.BUILDER_SANS_FONT_ASSET, Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)

function variantsFactory(tokens: Tokens)
	local common = {
		content = {
			tag = "auto-xy text-align-x-left",
			-- To-Do: Use tag for font when BuilderSansSemiBold is supported as token / tag
			font = BuilderSansSemiBold,
		},
		-- Size-specific mask thickness comes from the size variants (behind FoundationAvatarBeta); fall back to a fixed weight otherwise.
		stroke = if Flags.FoundationAvatarBeta
			then nil
			else {
				Thickness = tokens.Size.Size_50,
			},
	}

	local variants: { [StatusIndicatorVariant]: VariantProps } = {
		[StatusIndicatorVariant.Alert] = {
			container = {
				tag = "bg-system-alert",
			},
			content = {
				style = tokens.DarkMode.Content.Emphasis,
			},
		},
		[StatusIndicatorVariant.Success] = {
			container = {
				tag = "bg-system-success",
			},
			content = {
				style = tokens.LightMode.Content.Emphasis,
			},
		},
		[StatusIndicatorVariant.Warning] = {
			container = {
				tag = "bg-system-warning",
			},
			content = {
				style = tokens.LightMode.Content.Emphasis,
			},
		},
		[StatusIndicatorVariant.Emphasis] = if Flags.FoundationActionEmphasisStatusIndicator
			then {
				container = {
					tag = "bg-action-emphasis",
				},
				content = {
					style = tokens.Color.ActionEmphasis.Foreground,
				},
			}
			else {
				container = {
					tag = "bg-system-emphasis",
				},
				content = {
					style = tokens.DarkMode.Content.Emphasis,
				},
			},
		[StatusIndicatorVariant.Neutral] = {
			container = {
				tag = "bg-system-neutral",
			},
			content = {
				style = tokens.Inverse.Content.Emphasis,
			},
		},
		[StatusIndicatorVariant.Standard] = {
			container = {
				tag = "bg-action-standard",
			},
			content = {
				style = tokens.Color.Content.Emphasis,
			},
		},
		[StatusIndicatorVariant.Contrast_Experiment] = {
			container = {
				tag = "bg-system-contrast",
			},
			content = {
				style = tokens.Inverse.Content.Emphasis,
			},
		},
		[StatusIndicatorVariant.Voice] = {
			container = {
				-- To-Do: Update to use a tag once system-voice tokens are added
				backgroundStyle = tokens.Color.Extended.Orange.Orange_600,
			},
		},
	}

	local hasValue: { [boolean]: any } = if Flags.FoundationAvatarBeta
		then {
			[true] = {
				container = { tag = "row align-x-center align-y-center size-400-400 auto-x padding-xsmall" },
			},
		}
		else {
			[false] = { container = { tag = "size-200-200" } },
			[true] = {
				container = { tag = "row align-x-center align-y-center size-400-400 auto-x padding-xsmall" },
			},
		}

	local shape: { [StatusIndicatorShape]: any } = {
		[StatusIndicatorShape.Circle] = {
			container = { tag = "radius-circle" },
			stroke = { LineJoinMode = Enum.LineJoinMode.Round },
		},
		[StatusIndicatorShape.Ring] = {
			container = { tag = "align-x-center align-y-center radius-circle" },
			ring = {
				tag = if Flags.FoundationAvatarBeta
					then "radius-circle bg-surface-100"
					else "size-100-100 radius-circle bg-surface-100",
			},
			stroke = { LineJoinMode = Enum.LineJoinMode.Round },
		},
		[StatusIndicatorShape.Square] = {
			container = { tag = "radius-none" },
			stroke = { LineJoinMode = Enum.LineJoinMode.Miter },
		},
	}

	local sizes: { [StatusIndicatorSize]: VariantProps } = if Flags.FoundationAvatarBeta
		then {
			[StatusIndicatorSize.XSmall] = {
				container = { size = UDim2.fromOffset(tokens.Size.Size_150, tokens.Size.Size_150) },
				ring = { size = UDim2.fromOffset(tokens.Size.Size_150 / 2, tokens.Size.Size_150 / 2) },
				stroke = { Thickness = tokens.Stroke.Standard },
			},
			[StatusIndicatorSize.Small] = {
				container = { size = UDim2.fromOffset(tokens.Size.Size_200, tokens.Size.Size_200) },
				ring = { size = UDim2.fromOffset(tokens.Size.Size_200 / 2, tokens.Size.Size_200 / 2) },
				stroke = { Thickness = tokens.Size.Size_50 },
			},
			[StatusIndicatorSize.Medium] = {
				container = { size = UDim2.fromOffset(tokens.Size.Size_250, tokens.Size.Size_250) },
				ring = { size = UDim2.fromOffset(tokens.Size.Size_250 / 2, tokens.Size.Size_250 / 2) },
				stroke = { Thickness = tokens.Size.Size_50 },
			},
			[StatusIndicatorSize.Pictogram] = {
				container = { size = UDim2.fromOffset(tokens.Size.Size_500, tokens.Size.Size_500) },
				ring = { size = UDim2.fromOffset(tokens.Size.Size_500 / 2, tokens.Size.Size_500 / 2) },
				stroke = { Thickness = tokens.Stroke.Thicker },
			},
		}
		else nil :: never

	return {
		common = common,
		variants = variants,
		hasValue = hasValue,
		shape = shape,
		sizes = sizes,
	}
end

return function(
	tokens: Tokens,
	variant: StatusIndicatorVariant,
	hasValue: boolean,
	shape: StatusIndicatorShape,
	size: StatusIndicatorSize,
	mask: Types.ColorStyle?
): StatusIndicatorVariantProps
	if not Flags.FoundationStatusIndicatorVariantExperiment and isDevMode then
		if variant == StatusIndicatorVariant.Contrast_Experiment then
			error("Contrast is not a supported StatusIndicator variant.")
		end
		if variant == StatusIndicatorVariant.Alert and hasValue then
			error("Alert is not a supported numeric StatusIndicator variant.")
		end
	end

	local commonMask = if mask
		then {
			stroke = {
				Color = indexBindable(mask, "Color3"),
				Transparency = indexBindable(mask, "Transparency"),
			},
		}
		else nil :: never

	local props = VariantsContext.useVariants("StatusIndicator", variantsFactory, tokens)

	return composeStyleVariant(
		props.common,
		props.variants[variant],
		props.hasValue[hasValue],
		props.shape[shape],
		if Flags.FoundationAvatarBeta then if not hasValue then props.sizes[size] else {} else nil :: never,
		commonMask
	)
end
