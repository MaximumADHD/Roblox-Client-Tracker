local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)

local Types = require(Foundation.Components.Types)
type ColorStyleValue = Types.ColorStyleValue
type Padding = Types.Padding

local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local IconSize = require(Foundation.Enums.IconSize)
type IconSize = IconSize.IconSize

local InputLabelSize = require(Foundation.Enums.InputLabelSize)
type InputLabelSize = InputLabelSize.InputLabelSize

local InputVariant = require(Foundation.Enums.InputVariant)
type InputVariant = InputVariant.InputVariant

local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)
local getInputVariantsFactory = require(Foundation.Components.InputField.getInputVariantsFactory)

type DropdownVariantProps = {
	container: {
		bgStyle: ColorStyleValue?,
		strokeStyle: ColorStyleValue?,
		strokeThickness: number,
		tag: string,
	},
	text: { tag: string },
	arrow: { size: IconSize },
}

local function variantsFactory()
	local common = {
		container = {
			tag = "row flex-x-between align-y-center",
		},
		text = {
			tag = "shrink auto-xy text-truncate-split content-emphasis",
		},
	}

	local sizes: { [InputSize]: VariantProps } = {
		[InputSize.XSmall] = {
			container = {
				tag = "gap-small size-full-600 padding-small radius-small",
			},
			text = { tag = "text-body-small" },
			arrow = { size = IconSize.XSmall },
		},
		[InputSize.Small] = {
			container = {
				tag = "gap-small size-full-800 padding-medium radius-medium",
			},
			text = { tag = "text-body-small" },
			arrow = { size = IconSize.Small },
		},
		[InputSize.Medium] = {
			container = {
				tag = "gap-small size-full-1000 padding-medium radius-medium",
			},
			text = { tag = "text-body-medium" },
			arrow = { size = IconSize.Medium },
		},
		[InputSize.Large] = {
			container = {
				tag = "gap-small size-full-1200 padding-medium radius-medium",
			},
			text = { tag = "text-body-large" },
			arrow = { size = IconSize.Large },
		},
	}

	local states: { [ControlState]: VariantProps } = {
		[ControlState.Disabled] = {
			container = nil :: never,
			text = { tag = "content-muted" },
		},
		[ControlState.Initialize] = {
			container = nil :: never,
			text = { tag = "content-default" },
		},
		[ControlState.Default] = nil :: never,
		[ControlState.Hover] = nil :: never,
		[ControlState.Pressed] = nil :: never,
	}

	-- Placeholder existence should take precendent of content styling in any case.
	-- It should always be content-muted.
	local placeholderStates = Dash.map(states, function(state)
		return Dash.join(state, {
			text = { tag = "content-muted" },
		})
	end)

	return {
		common = common,
		sizes = sizes,
		states = states,
		placeholderStates = placeholderStates,
	}
end

return function(
	tokens: Tokens,
	size: InputSize,
	variant: InputVariant,
	controlState: ControlState,
	isPlaceholderShown: boolean,
	hasError: boolean,
	focused: boolean,
	hover: boolean
): DropdownVariantProps
	local props = VariantsContext.useVariants("Dropdown", variantsFactory, tokens)
	local inputProps = VariantsContext.useVariants("InputField", getInputVariantsFactory, tokens)
	local variantAttributes = inputProps.variants[variant or InputVariant.Standard]

	return composeStyleVariant(
		inputProps.common,
		props.common,
		inputProps.sizes[size],
		props.sizes[size],
		if variant ~= InputVariant.Utility then variantAttributes else {},
		inputProps.hoverState[hover],
		inputProps.focusedState[focused],
		inputProps.errorState[hasError],
		if isPlaceholderShown then props.placeholderStates[controlState] else props.states[controlState],
		if variant == InputVariant.Utility then variantAttributes else {}
	)
end
