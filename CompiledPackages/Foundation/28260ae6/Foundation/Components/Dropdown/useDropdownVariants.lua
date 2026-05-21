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

local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)

type DropdownVariantProps = {
	container: { tag: string },
	text: { tag: string },
	arrow: { size: IconSize },
}

type State = ControlState | "Error"

local function variantsFactory(tokens: Tokens)
	local common = {
		container = {
			tag = "row flex-x-between align-y-center stroke-standard stroke-position-inner",
		},
		text = { tag = "shrink auto-xy text-truncate-split" },
	}

	local sizes: { [InputSize]: VariantProps } = {
		[InputSize.XSmall] = {
			container = { tag = "gap-xxsmall size-full-600 padding-small radius-small" },
			text = { tag = "text-body-small" },
			arrow = { size = IconSize.XSmall },
		},
		[InputSize.Small] = {
			container = { tag = "gap-xxsmall size-full-800 padding-medium radius-medium" },
			text = { tag = "text-body-small" },
			arrow = { size = IconSize.Small },
		},
		[InputSize.Medium] = {
			container = { tag = "size-full-1000 padding-medium radius-medium" },
			text = { tag = "text-body-medium" },
			arrow = { size = IconSize.Medium },
		},
		[InputSize.Large] = {
			container = { tag = "size-full-1200 padding-medium radius-medium" },
			text = { tag = "text-body-large" },
			arrow = { size = IconSize.Large },
		},
	}

	local states: { [State]: VariantProps } = {
		[ControlState.Disabled] = {
			container = { tag = "stroke-muted" },
			text = { tag = "content-muted" },
		},
		[ControlState.Initialize] = {
			container = { tag = "stroke-default" },
			text = { tag = "content-default" },
		},
		[ControlState.Default] = {
			container = { tag = "stroke-default" },
			text = { tag = "content-default" },
		},
		[ControlState.Hover] = {
			container = { tag = "stroke-emphasis" },
			text = { tag = "content-emphasis" },
		},
		[ControlState.Pressed] = {
			container = { tag = "stroke-emphasis" },
			text = { tag = "content-emphasis" },
		},
		-- TODO: Error states do not currently have hover / etc effects
		Error = {
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
	controlState: ControlState,
	isPlaceholderShown: boolean,
	hasError: boolean
): DropdownVariantProps
	local props = VariantsContext.useVariants("Dropdown", variantsFactory, tokens)
	local state = if hasError then "Error" else controlState
	return composeStyleVariant(
		props.common,
		props.sizes[size],
		if isPlaceholderShown then props.placeholderStates[state] else props.states[state :: State]
	)
end
