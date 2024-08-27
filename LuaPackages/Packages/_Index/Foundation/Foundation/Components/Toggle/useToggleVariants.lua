local Foundation = script:FindFirstAncestor("Foundation")

local ToggleSize = require(Foundation.Enums.ToggleSize)
type ToggleSize = ToggleSize.ToggleSize

local InputLabelSize = require(Foundation.Enums.InputLabelSize)
type InputLabelSize = InputLabelSize.InputLabelSize

local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)

type ToggleVariantProps = {
	toggle: {
		size: UDim2,
		cornerRadius: UDim,
	},
	knob: {
		tag: string,
		offPosition: UDim2,
		onPosition: UDim2,
		size: UDim2,
	},
	knobShadow: {
		tag: string,
		size: UDim2,
		padding: number,
	},
	label: {
		size: InputLabelSize,
	},
}

local function computeProps(props: {
	size: { height: number, width: number },
	knobSize: number,
	knobShadowPadding: number,
	cornerRadius: number,
	labelSize: InputLabelSize,
})
	local padding = (props.size.height - props.knobSize) / 2
	local shadowSize = props.knobSize + 2 * props.knobShadowPadding
	return {
		toggle = {
			size = UDim2.fromOffset(props.size.width, props.size.height),
			cornerRadius = UDim.new(0, props.cornerRadius),
		},
		knob = {
			offPosition = UDim2.new(0, padding, 0.5, 0),
			onPosition = UDim2.new(0, props.size.width - props.knobSize - padding, 0.5, 0),
			size = UDim2.fromOffset(props.knobSize, props.knobSize),
		},
		knobShadow = {
			size = UDim2.fromOffset(shadowSize, shadowSize),
			padding = props.knobShadowPadding,
		},
		label = {
			size = props.labelSize,
		},
	}
end

local function variantsFactory(tokens: Tokens)
	local common = {
		knob = {
			tag = "anchor-center-left radius-circle",
		},
		knobShadow = {
			tag = "anchor-center-left",
		},
	}
	local sizes: { [ToggleSize]: VariantProps } = {
		[ToggleSize.Medium] = computeProps({
			size = { width = tokens.Size.Size_1000, height = tokens.Size.Size_500 },
			knobSize = tokens.Size.Size_400,
			cornerRadius = tokens.Radius.Large,
			knobShadowPadding = tokens.Padding.XSmall,
			labelSize = InputLabelSize.Medium,
		}),
		[ToggleSize.Large] = computeProps({
			size = { width = tokens.Size.Size_1600, height = tokens.Size.Size_900 },
			knobSize = tokens.Size.Size_700,
			cornerRadius = tokens.Radius.Circle,
			knobShadowPadding = tokens.Padding.Small,
			labelSize = InputLabelSize.Large,
		}),
	}

	return { common = common, sizes = sizes }
end

return function(tokens: Tokens, size: ToggleSize): ToggleVariantProps
	local props = VariantsContext.useVariants("Toggle", variantsFactory, tokens)
	return composeStyleVariant(props.common, props.sizes[size])
end
