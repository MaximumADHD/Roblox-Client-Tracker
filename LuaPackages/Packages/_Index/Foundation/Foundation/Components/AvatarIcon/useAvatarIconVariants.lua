local Foundation = script:FindFirstAncestor("Foundation")

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)

local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local AvatarIconSize = require(Foundation.Enums.AvatarIconSize)
type AvatarIconSize = AvatarIconSize.AvatarIconSize

local Types = require(Foundation.Components.Types)

local indexBindable = require(Foundation.Utility.indexBindable)

local function composeStroke(style: Types.ColorStyle?, thickness: number?): VariantProps
	if not style or not thickness then
		return {}
	end

	return {
		container = {
			stroke = {
				Color = indexBindable(style, "Color3"),
				Transparency = indexBindable(style, "Transparency"),
				Thickness = thickness,
			},
		},
	}
end

local function variantsFactory(tokens: Tokens)
	local common = {
		container = { tag = "radius-circle" },
		avatar = { tag = "size-full radius-circle" },
	}

	local backplateStrokes: { [boolean]: { [AvatarIconSize]: number } } = {
		[true] = { -- hasBackplate
			[AvatarIconSize.XSmall] = tokens.Stroke.Standard,
			[AvatarIconSize.Small] = tokens.Stroke.Standard,
			[AvatarIconSize.Medium] = tokens.Stroke.Thick,
			[AvatarIconSize.Large] = tokens.Stroke.Thicker,
			[AvatarIconSize.XLarge] = tokens.Stroke.Thicker,
		},
		[false] = {}, -- no backplate
	}

	local sizes: { [AvatarIconSize]: VariantProps } = {
		[AvatarIconSize.XSmall] = { container = { size = tokens.Size.Size_300 } },
		[AvatarIconSize.Small] = { container = { size = tokens.Size.Size_400 } },
		[AvatarIconSize.Medium] = { container = { size = tokens.Size.Size_500 } },
		[AvatarIconSize.Large] = { container = { size = tokens.Size.Size_600 } },
		[AvatarIconSize.XLarge] = { container = { size = tokens.Size.Size_700 } },
	}

	return {
		strokes = backplateStrokes,
		common = common,
		sizes = sizes,
	}
end

return function(tokens: Tokens, size: AvatarIconSize, backplateStyle: Types.ColorStyle?): VariantProps
	local props = VariantsContext.useVariants("AvatarIcon", variantsFactory, tokens)

	return composeStyleVariant(
		props.common,
		props.sizes[size],
		composeStroke(backplateStyle, props.strokes[backplateStyle ~= nil][size])
	)
end
