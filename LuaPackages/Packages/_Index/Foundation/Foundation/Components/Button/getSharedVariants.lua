local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local Constants = require(Foundation.Constants)
local Types = require(Foundation.Components.Types)
type ColorStyleValue = Types.ColorStyleValue
type StateLayer = Types.StateLayer

local ButtonVariant = require(Foundation.Enums.ButtonVariant)
type ButtonVariant = ButtonVariant.ButtonVariant

local ColorMode = require(Foundation.Enums.ColorMode)
type ColorMode = ColorMode.ColorMode

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
local function createButtonVariantStyles(
	tokens: Tokens,
	actionName: string | { string },
	isInverse: boolean?
): { [ColorMode]: VariantProps }
	local styles: { [ColorMode]: any } = {}
	for colorMode in ColorMode do
		local colors = tokens[colorMode]
		local buttonStyle = if type(actionName) == "table"
			then { Foreground = Dash.get(colors, actionName) }
			else colors[actionName]
		styles[colorMode :: ColorMode] = {
			container = {
				style = buttonStyle.Background,
				stroke = if buttonStyle.Border then toStroke(buttonStyle.Border) else nil,
				stateLayer = {
					mode = Constants.COLOR_MODE_TO_STATE_LAYER_MODE[isInverse or false][colorMode :: ColorMode],
				},
			},
			content = {
				style = buttonStyle.Foreground,
			},
		}
	end
	return styles
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

-- Returns all button variant types - indexed by variant then by ColorMode
local function getButtonTypes(tokens: Tokens): { [ButtonVariant]: { [ColorMode]: VariantProps } }
	return {
		[ButtonVariant.Utility] = createButtonVariantStyles(tokens, "ActionUtility"),
		[ButtonVariant.Standard] = createButtonVariantStyles(tokens, "ActionStandard"),
		-- TODO: Update to use StateLayerMode.Dark
		[ButtonVariant.Emphasis] = createButtonVariantStyles(tokens, "ActionEmphasis"),
		[ButtonVariant.Alert] = createButtonVariantStyles(tokens, "ActionAlert"),
		[ButtonVariant.SubEmphasis] = createButtonVariantStyles(tokens, "ActionSubEmphasis", true),
		-- TODO: Update to use StateLayerMode.Inverse
		[ButtonVariant.SoftEmphasis] = createButtonVariantStyles(tokens, "ActionSoftEmphasis"),
		[ButtonVariant.Subtle] = createButtonVariantStyles(tokens, "ActionSubtle"),
		[ButtonVariant.Text] = createButtonVariantStyles(tokens, { "Content", "Emphasis" }),
		[ButtonVariant.Link] = createButtonVariantStyles(tokens, { "Content", "Link" }),
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
	types: { [ButtonVariant]: { [ColorMode]: VariantProps } },
}
	local sizes = getSizes(tokens)
	local types = getButtonTypes(tokens)

	return { sizes = sizes, types = types }
end

return getSharedVariants
