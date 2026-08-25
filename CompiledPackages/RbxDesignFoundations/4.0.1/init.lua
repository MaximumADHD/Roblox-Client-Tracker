local Default = require(script.Default)
local Enums = require(script.enums)
local Types = require(script.types)

export type Tokens = typeof(Default.Dark(1))

export type ColorMode = Enums.ColorMode
export type Theme = Enums.Theme
export type TokenPath = Types.TokenPath

type Factory = (number) -> Tokens
export type ThemeTokens = { Dark: Factory, Light: Factory }
type ThemeLoader = () -> ThemeTokens

local themes: { [Enums.Theme]: ThemeLoader } = {
	Default = function()
		return Default
	end,
	Kids = function()
		return require(script.Kids)
	end,
}

return {
	ColorMode = Enums.ColorMode,
	Theme = Enums.Theme,
	themes = themes,
}
