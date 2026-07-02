local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local Flags = require(Foundation.Utility.Flags)

local Types = require(Foundation.Components.Types)
type ColorStyle = Types.ColorStyle
type ColorStyleValue = Types.ColorStyleValue
type FontStyle = Types.FontStyle
type Tags = Types.Tags

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local InputVariant = require(Foundation.Enums.InputVariant)
type InputVariant = InputVariant.InputVariant

local IconSize = require(Foundation.Enums.IconSize)
type IconSize = IconSize.IconSize

local Radius = require(Foundation.Enums.Radius)
type Radius = Radius.Radius

local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

type InputVariantProps = {
	container: {
		bgStyle: ColorStyleValue?,
		strokeStyle: ColorStyleValue?,
		strokeThickness: number?,
		tag: string,
	},
}

local function getInputVariantsFactory(tokens: Tokens)
	local common = {
		container = {
			bgStyle = if Flags.FoundationTextInputRemoveBackgroundStyle then nil else tokens.Color.Shift.Shift_100,
			strokeStyle = tokens.Color.Stroke.Emphasis,
			strokeThickness = tokens.Stroke.Standard,
		},
	}

	local sizes: { [InputSize]: VariantProps } = {
		[InputSize.XSmall] = { container = { tag = "size-full-600" } },
		[InputSize.Small] = { container = { tag = "size-full-800" } },
		[InputSize.Medium] = { container = { tag = "size-full-1000" } },
		[InputSize.Large] = { container = { tag = "size-full-1200" } },
	}

	local variants: { [InputVariant]: VariantProps } = {
		[InputVariant.Standard] = if Flags.FoundationTextInputRemoveBackgroundStyle
			then {}
			else {
				container = {
					bgStyle = tokens.Color.Shift.Shift_100,
				},
			},
		[InputVariant.Contrast] = {
			container = {
				bgStyle = tokens.Color.Shift.Shift_200,
				strokeStyle = Dash.None,
			},
		},
		[InputVariant.Utility] = {
			container = {
				bgStyle = Dash.None,
				strokeStyle = Dash.None,
			},
		},
	}

	local errorState: { [boolean]: VariantProps } = {
		[true] = { container = { strokeStyle = tokens.Color.System.Alert } },
		[false] = {},
	}

	local focusedState: { [boolean]: VariantProps } = {
		[true] = {
			container = {
				strokeStyle = tokens.Color.System.Emphasis,
				strokeThickness = tokens.Stroke.Standard * 2,
			},
		},
		[false] = {},
	}

	local hoverState: { [boolean]: VariantProps } = {
		[true] = { container = { strokeThickness = tokens.Stroke.Standard * 2 } },
		[false] = {},
	}

	local defaultRadius: { [InputSize]: VariantProps } = {
		[InputSize.XSmall] = { container = { tag = { ["radius-small"] = true } } },
		[InputSize.Small] = { container = { tag = { ["radius-medium"] = true } } },
		[InputSize.Medium] = { container = { tag = { ["radius-medium"] = true } } },
		[InputSize.Large] = { container = { tag = { ["radius-medium"] = true } } },
	}
	local radius: { [Radius]: VariantProps } = {
		[Radius.None] = { container = { tag = { ["radius-none"] = true } } },
		[Radius.XSmall] = { container = { tag = { ["radius-xsmall"] = true } } },
		[Radius.Small] = { container = { tag = { ["radius-small"] = true } } },
		[Radius.Medium] = { container = { tag = { ["radius-medium"] = true } } },
		[Radius.Large] = { container = { tag = { ["radius-large"] = true } } },
		--[[
			Circle radius for multi-line inputs needs to be circular based on the single-line height (otherwise we get CircularTextArea).
			Current Radius tokens/style tags do not support these values.
			This should be computed within the component implementation.
		]]
	}

	return {
		common = common,
		sizes = sizes,
		variants = variants,
		defaultRadius = defaultRadius,
		radius = radius,
		errorState = errorState,
		focusedState = focusedState,
		hoverState = hoverState,
	}
end

return getInputVariantsFactory
