--[[
	Public interface for Util
]]

local Src = script

local Signal = require(Src.Signal)
local Symbol = require(Src.Symbol)
local Immutable = require(Src.Immutable)

local StyleTable = require(Src.StyleTable)
local StyleModifier = require(Src.StyleModifier)
local StyleValue = require(Src.StyleValue)
local Style = require(Src.Style)
local Palette = require(Src.Palette)

local Util = {
	Signal = Signal,
	Symbol = Symbol,
	Immutable = Immutable,

	StyleTable = StyleTable,
	StyleModifier = StyleModifier,
	StyleValue = StyleValue,
	Style = Style,
	Palette = Palette,
}

return Util