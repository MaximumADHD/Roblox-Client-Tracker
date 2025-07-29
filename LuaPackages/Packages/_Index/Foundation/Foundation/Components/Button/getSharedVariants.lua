local Foundation = script:FindFirstAncestor("Foundation")

local Types = require(Foundation.Components.Types)
type ColorStyleValue = Types.ColorStyleValue
type StateLayer = Types.StateLayer

local ButtonVariant = require(Foundation.Enums.ButtonVariant)
type ButtonVariant = ButtonVariant.ButtonVariant

local StateLayerMode = require(Foundation.Enums.StateLayerMode)
type StateLayerMode = StateLayerMode.StateLayerMode

local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

type ButtonStyle = {
	Background: ColorStyleValue,
	Border: ColorStyleValue,
	Foreground: ColorStyleValue,
}

export type ButtonStroke = {
	Color: Color3?,
	Transparency: number?,
}

-- Stroke color is keyed as Color, not Color3 :(
local function toStroke(token: ColorStyleValue): ButtonStroke
	return {
		Color = token.Color3,
		Transparency = token.Transparency,
	}
end

-- Helper function to create a standard button variant style
local function createButtonVariantStyle(buttonStyle: ButtonStyle, stateLayerMode: StateLayerMode?): VariantProps
	return {
		container = {
			style = buttonStyle.Background,
			stroke = toStroke(buttonStyle.Border),
			stateLayer = if stateLayerMode
				then {
					mode = StateLayerMode.Inverse,
				}
				else nil,
		},
		content = {
			style = buttonStyle.Foreground,
		},
	}
end

type SharedButtonVariantProps = {
	container: {
		height: UDim2,
		stroke: ButtonStroke?,
		radius: number,
		style: ColorStyleValue,
		stateLayer: StateLayer?,
	},
	content: {
		style: ColorStyleValue,
	},
}

-- Returns all button variant types - components can use subset they need
local function getButtonTypes(tokens: Tokens): { [ButtonVariant]: VariantProps }
	return {
		[ButtonVariant.Utility] = createButtonVariantStyle(tokens.Color.ActionUtility),
		[ButtonVariant.Standard] = createButtonVariantStyle(tokens.Color.ActionStandard),
		[ButtonVariant.Emphasis] = createButtonVariantStyle(tokens.Color.ActionEmphasis),
		[ButtonVariant.Alert] = createButtonVariantStyle(tokens.Color.ActionAlert),
		[ButtonVariant.SubEmphasis] = createButtonVariantStyle(tokens.Color.ActionSubEmphasis, StateLayerMode.Inverse),
		[ButtonVariant.SoftEmphasis] = createButtonVariantStyle(tokens.Color.ActionSoftEmphasis),
		[ButtonVariant.Subtle] = createButtonVariantStyle(tokens.Color.ActionSubtle),
		[ButtonVariant.Text] = {
			content = { style = tokens.Color.Content.Emphasis },
		},
		[ButtonVariant.Link] = {
			content = { style = tokens.Color.Content.Link },
		},
	}
end

local function getSizes(tokens: Tokens): { [InputSize]: VariantProps }
	return {
		[InputSize.XSmall] = {
			container = { radius = tokens.Radius.Small, height = tokens.Size.Size_600 },
		},
		[InputSize.Small] = {
			container = { radius = tokens.Radius.Medium, height = tokens.Size.Size_800 },
		},
		[InputSize.Medium] = {
			container = { radius = tokens.Radius.Medium, height = tokens.Size.Size_1000 },
		},
		[InputSize.Large] = {
			container = { radius = tokens.Radius.Medium, height = tokens.Size.Size_1200 },
		},
	}
end

local function getSharedVariants(
	tokens: Tokens
): { sizes: { [InputSize]: VariantProps }, types: { [ButtonVariant]: VariantProps } }
	local sizes = getSizes(tokens)
	local types = getButtonTypes(tokens)

	return { sizes = sizes, types = types }
end

return getSharedVariants
