local Foundation = script:FindFirstAncestor("Foundation")

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

local Flags = require(Foundation.Utility.Flags)
local getKnobSize = require(Foundation.Components.Knob.getKnobSize)
local VariantsContext = require(Foundation.Providers.Style.VariantsContext)

type ToggleVariantProps = {
	input: InputVariantProps,
	knob: {
		offPosition: UDim2,
		onPosition: UDim2,
	},
}

local function computeProps(props: {
	tag: string,
	size: { height: number, width: number },
	knobSize: UDim2,
	strokeThickness: number?,
})
	local knobWidth = props.knobSize.X.Offset
	local padding = (props.size.height - knobWidth) / 2

	return {
		input = {
			tag = props.tag,
			size = UDim2.fromOffset(props.size.width, props.size.height),
			stroke = {
				thickness = props.strokeThickness,
			},
		},
		knob = {
			offPosition = UDim2.new(0, padding, 0.5, 0),
			onPosition = UDim2.new(0, props.size.width - knobWidth - padding, 0.5, 0),
		},
	}
end

local function variantsFactory(tokens: Tokens)
	local common = if Flags.FoundationToggleVisualUpdate
		then {
			input = {
				colors = {
					backgroundStyle = tokens.Color.ActionStandard.Background,
					hoverStyle = tokens.Color.State.Hover,
					checkedStyle = tokens.Color.System.Contrast,
					labelStyle = tokens.Color.Content.Emphasis,
					labelHoverStyle = tokens.Color.Content.Emphasis,
				},
				cursorRadius = UDim.new(0, tokens.Radius.Circle),
			},
		}
		else {
			input = {
				checkedStyle = tokens.Color.ActionEmphasis.Background,
				cursorRadius = if Flags.FoundationInternalInputSelectedStylesAndSpacing
					then UDim.new(0, tokens.Radius.Circle)
					else UDim.new(0, tokens.Radius.Medium),
			},
		}

	local sizes: { [InputSize]: VariantProps } = if Flags.FoundationToggleVisualUpdate
		then {
			[InputSize.XSmall] = computeProps({
				tag = "radius-circle",
				size = { width = tokens.Size.Size_700, height = tokens.Size.Size_400 },
				knobSize = getKnobSize(tokens, InputSize.XSmall),
				strokeThickness = tokens.Stroke.None,
			}),
			[InputSize.Small] = computeProps({
				tag = "radius-circle",
				size = { width = tokens.Size.Size_800, height = tokens.Size.Size_500 },
				knobSize = getKnobSize(tokens, InputSize.Small),
				strokeThickness = tokens.Stroke.None,
			}),
			[InputSize.Medium] = computeProps({
				tag = "radius-circle",
				size = { width = tokens.Size.Size_1000, height = tokens.Size.Size_600 },
				knobSize = getKnobSize(tokens, InputSize.Medium),
				strokeThickness = tokens.Stroke.None,
			}),
			[InputSize.Large] = computeProps({
				tag = "radius-circle",
				size = { width = tokens.Size.Size_1100, height = tokens.Size.Size_600 },
				knobSize = getKnobSize(tokens, InputSize.Medium),
				strokeThickness = tokens.Stroke.None,
			}),
		}
		else {
			[InputSize.XSmall] = computeProps({
				tag = "radius-large",
				size = { width = tokens.Size.Size_700, height = tokens.Size.Size_300 },
				knobSize = getKnobSize(tokens, InputSize.XSmall),
			}),
			[InputSize.Small] = computeProps({
				tag = "radius-large",
				size = { width = tokens.Size.Size_800, height = tokens.Size.Size_400 },
				knobSize = getKnobSize(tokens, InputSize.Small),
			}),
			[InputSize.Medium] = computeProps({
				tag = "radius-large",
				size = { width = tokens.Size.Size_1000, height = tokens.Size.Size_500 },
				knobSize = getKnobSize(tokens, InputSize.Medium),
			}),
			[InputSize.Large] = computeProps({
				tag = "radius-circle",
				size = { width = tokens.Size.Size_1600, height = tokens.Size.Size_900 },
				knobSize = getKnobSize(tokens, InputSize.Large),
			}),
		}
	return { common = common, sizes = sizes }
end

return function(tokens: Tokens, size: InputSize): ToggleVariantProps
	local props = VariantsContext.useVariants("Toggle", variantsFactory, tokens)
	return composeStyleVariant(props.common, props.sizes[size])
end
