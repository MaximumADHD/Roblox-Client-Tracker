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
local function createButtonVariantStyle(buttonStyle: ButtonStyle, isInverse: boolean?): VariantProps
	return {
		container = {
			style = buttonStyle.Background,
			stroke = toStroke(buttonStyle.Border),
			stateLayer = if isInverse
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

-- Wrapper function that creates both normal and inverse variants
local function createButtonVariantStyles(
	tokens: Tokens,
	actionName: string,
	isInverse: boolean?
): { [boolean]: VariantProps }
	return {
		[false] = createButtonVariantStyle(tokens.Color[actionName], isInverse),
		[true] = createButtonVariantStyle(tokens.Inverse[actionName], not isInverse),
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

-- Returns all button variant types - indexed by variant then by boolean (isInverse)
local function getButtonTypes(tokens: Tokens): { [ButtonVariant]: { [boolean]: VariantProps } }
	return {
		[ButtonVariant.Utility] = createButtonVariantStyles(tokens, "ActionUtility"),
		[ButtonVariant.Standard] = createButtonVariantStyles(tokens, "ActionStandard"),
		[ButtonVariant.Emphasis] = createButtonVariantStyles(tokens, "ActionEmphasis"),
		[ButtonVariant.Alert] = createButtonVariantStyles(tokens, "ActionAlert"),
		[ButtonVariant.SubEmphasis] = createButtonVariantStyles(tokens, "ActionSubEmphasis", true),
		[ButtonVariant.SoftEmphasis] = createButtonVariantStyles(tokens, "ActionSoftEmphasis"),
		[ButtonVariant.Subtle] = createButtonVariantStyles(tokens, "ActionSubtle"),
		[ButtonVariant.Text] = {
			[false] = { content = { style = tokens.Color.Content.Emphasis } },
			[true] = {
				container = { stateLayer = { mode = StateLayerMode.Inverse } },
				content = { style = tokens.Inverse.Content.Emphasis },
			},
		},
		[ButtonVariant.Link] = {
			[false] = { content = { style = tokens.Color.Content.Link } },
			[true] = {
				container = { stateLayer = { mode = StateLayerMode.Inverse } },
				content = { style = tokens.Inverse.Content.Link },
			},
		},
		[ButtonVariant.OverMedia] = createButtonVariantStyles(tokens, "ActionOverMedia", true),
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

local function getSharedVariants(tokens: Tokens): {
	sizes: { [InputSize]: VariantProps },
	types: { [ButtonVariant]: { [boolean]: VariantProps } },
}
	local sizes = getSizes(tokens)
	local types = getButtonTypes(tokens)

	return { sizes = sizes, types = types }
end

return getSharedVariants
