local Foundation = script:FindFirstAncestor("Foundation")

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local Types = require(Foundation.Components.Types)
type ColorStyleValue = Types.ColorStyleValue

local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)

export type InputChipVariantProps = {
	container: {
		tag: string,
	},
	text: {
		tag: string,
		contentStyle: ColorStyleValue,
		padding: {
			left: UDim?,
			right: UDim?,
		}?,
	},
	close: {
		tag: string,
		padding: {
			right: UDim?,
		}?,
	},
}

local function variantsFactory(tokens: Tokens)
	local common = {
		container = { tag = "row align-x-center align-y-center auto-x radius-small bg-action-standard clip" },
		text = {
			tag = "shrink size-0-full auto-x text-truncate-end",
			contentStyle = tokens.Color.ActionStandard.Foreground,
		},
		close = { tag = "auto-xy" },
	}

	local sizes: { [InputSize]: VariantProps } = {
		[InputSize.XSmall] = {
			container = { tag = "size-0-400" },
			text = {
				tag = "text-caption-small",
				padding = {
					left = UDim.new(0, tokens.Size.Size_150),
					right = UDim.new(0, tokens.Padding.XSmall),
				},
			},
			close = {
				padding = {
					right = UDim.new(0, tokens.Size.Size_150),
				},
			},
		},
		[InputSize.Small] = {
			container = { tag = "size-0-500" },
			text = {
				tag = "text-label-small",
				padding = {
					left = UDim.new(0, tokens.Padding.Small),
					right = UDim.new(0, tokens.Size.Size_150),
				},
			},
			close = {
				padding = {
					right = UDim.new(0, tokens.Padding.Small),
				},
			},
		},
		[InputSize.Medium] = {
			container = { tag = "size-0-600" },
			text = {
				tag = "text-label-small",
				padding = {
					left = UDim.new(0, tokens.Padding.Small),
					right = UDim.new(0, tokens.Size.Size_150),
				},
			},
			close = {
				padding = {
					right = UDim.new(0, tokens.Padding.Small),
				},
			},
		},
		[InputSize.Large] = {
			container = { tag = "size-0-800" },
			text = {
				tag = "text-label-medium",
				padding = {
					left = UDim.new(0, tokens.Padding.Medium),
					right = UDim.new(0, tokens.Padding.Small),
				},
			},
			close = {
				padding = {
					right = UDim.new(0, tokens.Padding.Medium),
				},
			},
		},
	}

	return {
		common = common,
		sizes = sizes,
	}
end

return function(tokens: Tokens, size: InputSize)
	local props = VariantsContext.useVariants("InputChip", variantsFactory, tokens)
	return composeStyleVariant(props.common, props.sizes[size])
end
