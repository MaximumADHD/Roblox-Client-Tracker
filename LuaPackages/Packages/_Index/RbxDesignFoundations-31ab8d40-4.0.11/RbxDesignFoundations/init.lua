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
	CircuitRush = function()
		return require(script.CircuitRush)
	end,
	Classic = function()
		return require(script.Classic)
	end,
	CosmicDust = function()
		return require(script.CosmicDust)
	end,
	Default = function()
		return Default
	end,
	ElectricLime = function()
		return require(script.ElectricLime)
	end,
	HyperPlum = function()
		return require(script.HyperPlum)
	end,
	InfernoBlast = function()
		return require(script.InfernoBlast)
	end,
	Kids = function()
		return require(script.Kids)
	end,
	KidsClassic = function()
		return require(script.KidsClassic)
	end,
	KineticEnergy = function()
		return require(script.KineticEnergy)
	end,
	LavaGlow = function()
		return require(script.LavaGlow)
	end,
	NebulaDrift = function()
		return require(script.NebulaDrift)
	end,
	NitroFrost = function()
		return require(script.NitroFrost)
	end,
	PixelPop = function()
		return require(script.PixelPop)
	end,
	PolarFreeze = function()
		return require(script.PolarFreeze)
	end,
	QuantumPulse = function()
		return require(script.QuantumPulse)
	end,
	StarBurst = function()
		return require(script.StarBurst)
	end,
	SuperCharge = function()
		return require(script.SuperCharge)
	end,
}

return {
	ColorMode = Enums.ColorMode,
	Theme = Enums.Theme,
	themes = themes,
}
