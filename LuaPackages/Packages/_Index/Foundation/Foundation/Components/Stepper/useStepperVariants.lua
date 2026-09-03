local Foundation = script:FindFirstAncestor("Foundation")

local IconSize = require(Foundation.Enums.IconSize)
type IconSize = IconSize.IconSize

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local StepperStepState = require(Foundation.Enums.StepperStepState)
type StepperStepState = StepperStepState.StepperStepState

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)
local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local Types = require(Foundation.Components.Types)

export type StepperVariant = {
	container: { tag: string },
	content: { tag: string, padding: Types.PaddingTable? },
	indicatorOuter: { tag: string },
	indicatorInner: { tag: string },
	index: { tag: string },
	label: { tag: string },
	description: { tag: string },
	textColumn: { tag: string, padding: Types.PaddingTable? },
	icon: { size: IconSize },
}

local function variantsFactory(tokens: Tokens)
	local common: VariantProps = {
		container = { tag = "auto-xy" },
		label = { tag = "auto-xy text-align-x-left content-emphasis" },
		description = { tag = "auto-xy text-align-x-left" },
		textColumn = { tag = "col auto-xy" },
		content = { tag = "row align-y-center auto-xy" },
		index = { tag = "auto-xy text-align-x-center text-align-y-center" },
		indicatorOuter = { tag = "row align-x-center align-y-center auto-xy" },
		indicatorInner = { tag = "row align-x-center align-y-center radius-circle" },
	}

	local sizes: { [InputSize]: VariantProps } = {
		[InputSize.XSmall] = {
			content = {
				tag = "size-0-800",
				padding = {
					left = UDim.new(0, tokens.Padding.XSmall),
					right = UDim.new(0, tokens.Padding.Small),
					top = UDim.new(0, tokens.Size.Size_250),
					bottom = UDim.new(0, tokens.Size.Size_250),
				},
			},
			textColumn = { padding = { left = UDim.new(0, tokens.Size.Size_250) } },
			indicatorInner = { tag = "size-300-300" },
			index = { tag = "text-caption-small" },
			label = { tag = "text-label-small" },
			description = { tag = "text-body-small" },
			icon = { size = IconSize.XSmall },
		},
		[InputSize.Small] = {
			content = {
				tag = "size-0-1000",
				padding = {
					left = UDim.new(0, tokens.Size.Size_150),
					right = UDim.new(0, tokens.Size.Size_300),
					top = UDim.new(0, tokens.Size.Size_300),
					bottom = UDim.new(0, tokens.Size.Size_300),
				},
			},
			textColumn = { padding = { left = UDim.new(0, tokens.Gap.Medium) } },
			indicatorInner = { tag = "size-400-400" },
			index = { tag = "text-caption-medium" },
			label = { tag = "text-label-small" },
			description = { tag = "text-body-small" },
			icon = { size = IconSize.Small },
		},
		[InputSize.Medium] = {
			content = {
				tag = "size-0-1200",
				padding = {
					left = UDim.new(0, tokens.Padding.Small),
					right = UDim.new(0, tokens.Padding.Large),
					top = UDim.new(0, tokens.Size.Size_350),
					bottom = UDim.new(0, tokens.Size.Size_350),
				},
			},
			textColumn = { padding = { left = UDim.new(0, tokens.Gap.Medium) } },
			indicatorInner = { tag = "size-500-500" },
			index = { tag = "text-caption-large" },
			label = { tag = "text-label-medium" },
			description = { tag = "text-body-medium" },
			icon = { size = IconSize.Medium },
		},
	}

	local isFill: { [boolean]: VariantProps } = {
		[false] = {},
		[true] = { container = { tag = "grow" } },
	}

	local stepStates: { [StepperStepState]: VariantProps } = {
		[StepperStepState.Complete] = {
			indicatorInner = { tag = "bg-system-contrast" },
			description = { tag = "content-default" },
		},
		[StepperStepState.Current] = {
			indicatorInner = { tag = "bg-system-contrast" },
			description = { tag = "content-emphasis" },
			index = { tag = "content-inverse-emphasis" },
		},
		[StepperStepState.Incomplete] = {
			indicatorInner = { tag = "bg-shift-300" },
			description = { tag = "content-default" },
			index = { tag = "content-default" },
		},
	}

	return {
		common = common,
		sizes = sizes,
		isFill = isFill,
		stepStates = stepStates,
	}
end

return function(tokens: Tokens, size: InputSize, state: StepperStepState, isFill: boolean): StepperVariant
	local props = VariantsContext.useVariants("Stepper", variantsFactory, tokens)

	return composeStyleVariant(props.common, props.sizes[size], props.isFill[isFill], props.stepStates[state])
end
