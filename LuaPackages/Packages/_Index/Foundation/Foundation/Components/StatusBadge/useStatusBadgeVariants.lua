local Foundation = script:FindFirstAncestor("Foundation")

local StatusBadgeShape = require(Foundation.Enums.StatusBadgeShape)
type StatusBadgeShape = StatusBadgeShape.StatusBadgeShape
local StatusBadgeSize = require(Foundation.Enums.StatusBadgeSize)
type StatusBadgeSize = StatusBadgeSize.StatusBadgeSize
local StatusBadgeVariant = require(Foundation.Enums.StatusBadgeVariant)
type StatusBadgeVariant = StatusBadgeVariant.StatusBadgeVariant

local Types = require(Foundation.Components.Types)
type ColorStyleValue = Types.ColorStyleValue

local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)

export type StatusBadgeVariantProps = {
	container: {
		tag: string,
	},
	content: {
		tag: string,
		gap: number?,
	},
	statusLight: {
		tag: string,
	},
	dot: {
		tag: string,
	},
	text: {
		tag: string,
		style: ColorStyleValue,
	},
}

function variantsFactory(tokens: Tokens)
	local common = {
		container = { tag = "row align-x-center align-y-center auto-xy" },
		statusLight = { tag = "row align-x-center align-y-center auto-x size-0-300 padding-x-xxsmall" },
		content = { tag = "row align-y-center auto-x size-0-full" },
		dot = { tag = "radius-circle" },
		text = {
			style = tokens.Color.Content.Emphasis,
			tag = "auto-xy text-align-x-left text-truncate-split padding-right-xxsmall",
		},
	}

	local variants: { [StatusBadgeVariant]: VariantProps } = {
		[StatusBadgeVariant.Standard] = {
			dot = { tag = "bg-system-neutral" },
		},
		[StatusBadgeVariant.Emphasis] = {
			dot = { tag = "bg-system-emphasis" },
		},
		[StatusBadgeVariant.Success] = {
			dot = { tag = "bg-system-success" },
		},
		[StatusBadgeVariant.Warning] = {
			dot = { tag = "bg-system-warning" },
		},
		[StatusBadgeVariant.Alert] = {
			dot = { tag = "bg-system-alert" },
		},
	}

	local shapes: { [StatusBadgeShape]: VariantProps } = {
		[StatusBadgeShape.Utility] = {},
		[StatusBadgeShape.Box] = {
			container = { tag = "radius-small bg-shift-200" },
		},
	}

	local sizes: { [StatusBadgeSize]: VariantProps } = {
		[StatusBadgeSize.XSmall] = {
			container = { tag = "size-0-400" },
			content = { tag = "gap-xxsmall" },
			dot = { tag = "size-150" },
			text = { tag = "text-caption-small" },
		},
		[StatusBadgeSize.Small] = {
			container = { tag = "size-0-600" },
			content = {
				gap = tokens.Size.Size_150,
			},
			dot = { tag = "size-200" },
			text = { tag = "text-caption-medium" },
		},
	}

	local boxSizes: { [StatusBadgeSize]: VariantProps } = {
		[StatusBadgeSize.XSmall] = {
			container = { tag = "padding-x-xsmall" },
		},
		[StatusBadgeSize.Small] = {
			container = { tag = "padding-x-small" },
		},
	}

	return {
		common = common,
		variants = variants,
		shapes = shapes,
		sizes = sizes,
		boxSizes = boxSizes,
	}
end

return function(
	tokens: Tokens,
	variant: StatusBadgeVariant,
	shape: StatusBadgeShape,
	size: StatusBadgeSize
): StatusBadgeVariantProps
	local props = VariantsContext.useVariants("StatusBadge", variantsFactory, tokens)

	return composeStyleVariant(
		props.common,
		props.variants[variant],
		props.shapes[shape],
		props.sizes[size],
		if shape == StatusBadgeShape.Box then props.boxSizes[size] else nil :: never
	)
end
