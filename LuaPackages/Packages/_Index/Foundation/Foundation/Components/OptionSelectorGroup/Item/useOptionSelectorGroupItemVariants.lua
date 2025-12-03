local Foundation = script:FindFirstAncestor("Foundation")

local Flags = require(Foundation.Utility.Flags)

local IconSize = require(Foundation.Enums.IconSize)

local Input = require(Foundation.Components.InternalInput)
type InputVariantProps = Input.InputVariantProps

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState

local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local Types = require(Foundation.Components.Types)
type ColorStyleValue = Types.ColorStyleValue

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)

type OptionSelectorGroupItemVariantProps = {
	container: {
		tag: string,
		height: number,
		radius: number,
	},
	content: ColorStyleValue,
	itemInner: { tag: string },
	label: { tag: string },
	metadata: { tag: string },
	description: { tag: string },
	icon: { size: InputSize },
}

local function variantsFactory(tokens: Tokens)
	local common = {
		container = {
			tag = "col align-y-center align-x-left radius-medium gap-xsmall wrap stroke-standard",
			radius = tokens.Radius.Medium,
		},
		content = tokens.Color.Content.Default,
		itemInner = {
			tag = if Flags.FoundationFixOptionSelectorGroupItemSize
				then "col size-full-0 auto-y gap-xsmall"
				else "col auto-xy gap-xsmall",
		},
		label = { tag = "auto-xy fill" },
		metadata = { tag = "auto-xy shrink" },
		description = { tag = "auto-xy grow" },
	}

	local sizes: { [InputSize]: VariantProps } = {
		[InputSize.XSmall] = {
			container = { tag = "padding-medium" },
			icon = { size = IconSize.XSmall },
			label = { tag = "text-title-small" },
			metadata = { tag = "text-caption-small" },
			description = { tag = "text-body-small" },
		},
		[InputSize.Small] = {
			container = { tag = "padding-large" },
			icon = { size = IconSize.Small },
			label = { tag = "text-title-small" },
			metadata = { tag = "text-caption-small" },
			description = { tag = "text-body-small" },
		},
		[InputSize.Medium] = {
			container = { tag = "padding-xlarge" },
			icon = { size = IconSize.Medium },
			label = { tag = "text-title-medium" },
			metadata = { tag = "text-caption-medium" },
			description = { tag = "text-body-medium" },
		},
		[InputSize.Large] = {
			container = { tag = "padding-xxlarge" },
			icon = { size = IconSize.Large },
			label = { tag = "text-title-large" },
			metadata = { tag = "text-caption-large" },
			description = { tag = "text-body-large" },
		},
	}

	return { common = common, sizes = sizes }
end

return function(tokens: Tokens, size: InputSize): OptionSelectorGroupItemVariantProps
	local props = VariantsContext.useVariants("OptionSelectorGroupItem", variantsFactory, tokens)

	return composeStyleVariant(props.common, props.sizes[size])
end
