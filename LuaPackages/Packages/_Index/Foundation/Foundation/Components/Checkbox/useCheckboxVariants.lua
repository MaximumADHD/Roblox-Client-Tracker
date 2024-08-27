local Foundation = script:FindFirstAncestor("Foundation")

local Types = require(Foundation.Components.Types)
type ColorStyleValue = Types.ColorStyleValue
type Padding = Types.Padding

local CheckboxSize = require(Foundation.Enums.CheckboxSize)
type CheckboxSize = CheckboxSize.CheckboxSize

local InputLabelSize = require(Foundation.Enums.InputLabelSize)
type InputLabelSize = InputLabelSize.InputLabelSize

local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState

local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)

type CheckboxVariantProps = {
	container: { tag: string, padding: Padding, groupTransparency: number },
	checkbox: { tag: string, size: UDim2, stroke: ColorStyleValue },
	checkmark: { tag: string },
	label: { size: InputLabelSize, style: ColorStyleValue },
}

export type CheckboxState = ControlState | "Checked"

function variantsFactory(tokens: Tokens)
	local strokeThickness = math.ceil(tokens.Stroke.Standard)
	local function getCheckboxSize(size: number): UDim2
		return UDim2.fromOffset(size - strokeThickness, size - strokeThickness)
	end

	local common = {
		container = {
			tag = "row auto-xy align-x-left align-y-center",
			-- Add padding around checkbox to ensure it's not cut off
			-- by the bounds of the canvas group
			padding = {
				top = UDim.new(0, strokeThickness),
				bottom = UDim.new(0, strokeThickness),
				left = UDim.new(0, strokeThickness),
			},
		},
		checkbox = {
			tag = "stroke-standard",
		},
		checkmark = {
			tag = "position-center-center anchor-center-center content-action-sub-emphasis",
		},
	}

	local sizes: { [CheckboxSize]: VariantProps } = {
		[CheckboxSize.Small] = {
			container = {
				tag = "gap-small",
			},
			checkbox = {
				size = getCheckboxSize(tokens.Size.Size_400),
				tag = "radius-small",
			},
			checkmark = {
				tag = "size-300",
			},
			label = {
				size = InputLabelSize.Small,
			},
		},
		[CheckboxSize.Medium] = {
			container = {
				tag = "gap-medium",
			},
			checkbox = {
				size = getCheckboxSize(tokens.Size.Size_500),
				tag = "radius-small",
			},
			checkmark = {
				tag = "size-350",
			},
			label = {
				size = InputLabelSize.Medium,
			},
		},
		[CheckboxSize.Large] = {
			container = {
				tag = "gap-small",
			},
			checkbox = {
				size = getCheckboxSize(tokens.Size.Size_600),
				tag = "radius-medium",
			},
			checkmark = {
				tag = "size-400",
			},
			label = {
				size = InputLabelSize.Large,
			},
		},
	}

	-- Strokes are intentionally left as tokens, because tags with matching name uses different colro tokens
	local states: { [CheckboxState]: VariantProps } = {
		Checked = {
			container = {
				groupTransparency = 0,
			},
			checkbox = {
				tag = "bg-action-sub-emphasis",
				stroke = tokens.Color.ActionSubEmphasis.Background,
			},
			label = {
				style = tokens.Color.Content.Emphasis,
			},
		},
		[ControlState.Hover] = {
			container = {
				groupTransparency = 0,
			},
			checkbox = {
				stroke = tokens.Color.Content.Emphasis,
			},
			label = {
				style = tokens.Color.Content.Emphasis,
			},
		},
		[ControlState.Default] = {
			container = {
				groupTransparency = 0,
			},
			checkbox = {
				stroke = tokens.Color.Content.Default,
			},
			label = {
				style = tokens.Color.Content.Default,
			},
		},
	}

	return { common = common, sizes = sizes, states = states }
end

return function(tokens: Tokens, size: CheckboxSize, state: CheckboxState): CheckboxVariantProps
	local props = VariantsContext.useVariants("Checkbox", variantsFactory, tokens)
	return composeStyleVariant(props.common, props.sizes[size], props.states[state])
end
