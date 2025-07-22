local Foundation = script:FindFirstAncestor("Foundation")

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local ButtonVariant = require(Foundation.Enums.ButtonVariant)
type ButtonVariant = ButtonVariant.ButtonVariant

local StateLayerMode = require(Foundation.Enums.StateLayerMode)

local Types = require(Foundation.Components.Types)
type ColorStyleValue = Types.ColorStyleValue
type StateLayer = Types.StateLayer
type Stroke = {
	Color: Color3,
	Transparency: number,
}

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)
local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

type ButtonVariantProps = {
	container: {
		tag: string,
		height: number,
		stroke: Stroke,
		radius: number,
		style: ColorStyleValue,
		stateLayer: StateLayer?,
	},
	content: {
		style: ColorStyleValue,
	},
	text: {
		tag: string,
	},
	icon: {
		size: UDim2,
	},
}

local function toStroke(token: { Color3: Color3, Transparency: number }): Stroke
	return {
		Color = token.Color3,
		Transparency = token.Transparency,
	}
end

local variants = function(tokens: Tokens)
	local common = {
		container = {
			tag = "row align-y-center align-x-center clip",
		},
		text = {
			tag = "size-0-full auto-x text-truncate-end shrink",
		},
	}

	local sizes: { [InputSize]: VariantProps } = {
		[InputSize.XSmall] = {
			container = {
				tag = "gap-xsmall padding-small",
				radius = tokens.Radius.Small,
				height = tokens.Size.Size_600,
			},
			icon = {
				size = UDim2.fromOffset(tokens.Size.Size_300, tokens.Size.Size_300),
			},
			text = {
				tag = "text-title-small",
			},
		},
		[InputSize.Small] = {
			container = {
				tag = "gap-xsmall padding-small",
				radius = tokens.Radius.Medium,
				height = tokens.Size.Size_800,
			},
			icon = {
				size = UDim2.fromOffset(tokens.Size.Size_400, tokens.Size.Size_400),
			},
			text = {
				tag = "text-title-small",
			},
		},
		[InputSize.Medium] = {
			container = {
				tag = "gap-small padding-medium",
				radius = tokens.Radius.Medium,
				height = tokens.Size.Size_1000,
			},
			icon = {
				size = UDim2.fromOffset(tokens.Size.Size_500, tokens.Size.Size_500),
			},
			text = {
				tag = "text-title-medium",
			},
		},
		[InputSize.Large] = {
			container = {
				tag = "gap-small padding-medium",
				radius = tokens.Radius.Medium,
				height = tokens.Size.Size_1200,
			},
			icon = {
				size = UDim2.fromOffset(tokens.Size.Size_600, tokens.Size.Size_600),
			},
			text = {
				tag = "text-title-large",
			},
		},
	}

	local types: { [ButtonVariant]: VariantProps } = {
		[ButtonVariant.Emphasis] = {
			container = {
				style = tokens.Color.ActionEmphasis.Background,
				stroke = toStroke(tokens.Color.ActionEmphasis.Border),
			},
			content = {
				style = tokens.Color.ActionEmphasis.Foreground,
			},
		},
		[ButtonVariant.SubEmphasis] = {
			container = {
				style = tokens.Color.ActionSubEmphasis.Background,
				stroke = toStroke(tokens.Color.ActionSubEmphasis.Border),
				stateLayer = {
					mode = StateLayerMode.Inverse,
				},
			},
			content = {
				style = tokens.Color.ActionSubEmphasis.Foreground,
			},
		},
		[ButtonVariant.SoftEmphasis] = {
			container = {
				style = tokens.Color.ActionSoftEmphasis.Background,
				stroke = toStroke(tokens.Color.ActionSoftEmphasis.Border),
			},
			content = {
				style = tokens.Color.ActionSoftEmphasis.Foreground,
			},
		},
		[ButtonVariant.Standard] = {
			container = {
				style = tokens.Color.ActionStandard.Background,
				stroke = toStroke(tokens.Color.ActionStandard.Border),
			},
			content = {
				style = tokens.Color.ActionStandard.Foreground,
			},
		},
		[ButtonVariant.Subtle] = {
			container = {
				style = tokens.Color.ActionSubtle.Background,
				stroke = toStroke(tokens.Color.ActionSubtle.Border),
			},
			content = {
				style = tokens.Color.ActionSubtle.Foreground,
			},
		},
		[ButtonVariant.Alert] = {
			container = {
				style = tokens.Color.ActionAlert.Background,
				stroke = toStroke(tokens.Color.ActionAlert.Border),
			},
			content = {
				style = tokens.Color.ActionAlert.Foreground,
			},
		},
		[ButtonVariant.Text] = {
			content = {
				style = tokens.Color.Content.Emphasis,
			},
		},
		[ButtonVariant.Link] = {
			content = {
				style = tokens.Color.Content.Link,
			},
		},
	}

	return { common = common, sizes = sizes, types = types }
end

return function(tokens: Tokens, size: InputSize, variant: ButtonVariant): ButtonVariantProps
	local variants = VariantsContext.useVariants("Button", variants, tokens)
	return composeStyleVariant(variants.common, variants.sizes[size], variants.types[variant])
end
