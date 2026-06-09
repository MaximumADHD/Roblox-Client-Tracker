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
local Flags = require(Foundation.Utility.Flags)

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

-- TODO: clean up with FFlagFoundationDropdownVariant
type State = ControlState | "Error"

local function variantsFactory()
	local common = {
		container = {
			tag = {
				["row flex-x-between align-y-center stroke-standard stroke-position-inner"] = not Flags.FoundationDropdownVariant,
				["row flex-x-between align-y-center"] = Flags.FoundationDropdownVariant,
			},
		},
		text = {
			tag = {
				["shrink auto-xy text-truncate-split content-emphasis"] = Flags.FoundationDropdownVariant,
				["shrink auto-xy text-truncate-split"] = not Flags.FoundationDropdownVariant,
			},
		},
	}

	-- TODO: clean up with FFlagFoundationDropdownSizeGap
	local sizes: { [InputSize]: VariantProps } = {
		[InputSize.XSmall] = {
			container = {
				tag = {
					["gap-small size-full-600 padding-small radius-small"] = Flags.FoundationDropdownSizeGap,
					["gap-xxsmall size-full-600 padding-small radius-small"] = not Flags.FoundationDropdownSizeGap,
				},
			},
			text = { tag = "text-body-small" },
			arrow = { size = IconSize.XSmall },
		},
		[InputSize.Small] = {
			container = {
				tag = {
					["gap-small size-full-800 padding-medium radius-medium"] = Flags.FoundationDropdownSizeGap,
					["gap-xxsmall size-full-800 padding-medium radius-medium"] = not Flags.FoundationDropdownSizeGap,
				},
			},
			text = { tag = "text-body-small" },
			arrow = { size = IconSize.Small },
		},
		[InputSize.Medium] = {
			container = {
				tag = {
					["gap-small size-full-1000 padding-medium radius-medium"] = Flags.FoundationDropdownSizeGap,
					["size-full-1000 padding-medium radius-medium"] = not Flags.FoundationDropdownSizeGap,
				},
			},
			text = { tag = "text-body-medium" },
			arrow = { size = IconSize.Medium },
		},
		[InputSize.Large] = {
			container = {
				tag = {
					["gap-small size-full-1200 padding-medium radius-medium"] = Flags.FoundationDropdownSizeGap,
					["size-full-1200 padding-medium radius-medium"] = not Flags.FoundationDropdownSizeGap,
				},
			},
			text = { tag = "text-body-large" },
			arrow = { size = IconSize.Large },
		},
	}

	local states: { [State]: VariantProps } = {
		[ControlState.Disabled] = {
			container = if Flags.FoundationDropdownVariant then nil :: never else { tag = "stroke-muted" },
			text = { tag = "content-muted" },
		},
		[ControlState.Initialize] = {
			container = if Flags.FoundationDropdownVariant then nil :: never else { tag = "stroke-default" },
			text = { tag = "content-default" },
		},
		[ControlState.Default] = if Flags.FoundationDropdownVariant
			then nil :: never
			else {
				container = { tag = "stroke-default" },
				text = { tag = "content-default" },
			},
		[ControlState.Hover] = if Flags.FoundationDropdownVariant
			then nil :: never
			else {
				container = { tag = "stroke-emphasis" },
				text = { tag = "content-emphasis" },
			},
		[ControlState.Pressed] = if Flags.FoundationDropdownVariant
			then nil :: never
			else {
				container = { tag = "stroke-emphasis" },
				text = { tag = "content-emphasis" },
			},
		Error = if not Flags.FoundationDropdownVariant
			-- TODO: Error states do not currently have hover / etc effects
			then nil :: never
			else {
				container = { tag = "stroke-alert" },
				text = { tag = "content-default" },
			},
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
	-- TODO: clean up with FFlagFoundationDropdownVariant
	local inputProps = if Flags.FoundationDropdownVariant
		then VariantsContext.useVariants("InputField", getInputVariantsFactory, tokens)
		else nil :: never
	local variantAttributes = if Flags.FoundationDropdownVariant
		then inputProps.variants[variant or InputVariant.Standard]
		else nil :: never
	local state = if not Flags.FoundationDropdownVariant and hasError then "Error" else controlState

	return composeStyleVariant(
		if Flags.FoundationDropdownVariant then inputProps.common else {},
		props.common,
		if Flags.FoundationDropdownVariant then inputProps.sizes[size] else {},
		props.sizes[size],
		if Flags.FoundationDropdownVariant and variant ~= InputVariant.Utility then variantAttributes else {},
		if Flags.FoundationDropdownVariant then inputProps.hoverState[hover] else {},
		if Flags.FoundationDropdownVariant then inputProps.focusedState[focused] else {},
		if Flags.FoundationDropdownVariant then inputProps.errorState[hasError] else {},
		if isPlaceholderShown then props.placeholderStates[state] else props.states[state :: State],
		if Flags.FoundationDropdownVariant and variant == InputVariant.Utility then variantAttributes else {}
	)
end
