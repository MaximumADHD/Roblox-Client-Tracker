--[[
	Public interface for Util
]]

return {
	-- Plugin Utilities
	Action = require(script.Action),
	Cryo = require(script.Cryo),
	deepEqual = require(script.deepEqual),
	FitFrame = require(script.FitFrame),
	Flags = require(script.Flags),
	Immutable = require(script.Immutable),
	LayoutOrderIterator = require(script.LayoutOrderIterator),
	Math = require(script.Math),
	Promise = require(script.Promise),
	Signal = require(script.Signal),
	Symbol = require(script.Symbol),
	ThunkWithArgsMiddleware = require(script.ThunkWithArgsMiddleware),

	-- Style and Theming Utilities
	Palette = require(script.Palette),
	prioritize = require(script.prioritize),
	Style = require(script.Style),
	StyleModifier = require(script.StyleModifier),
	StyleTable = require(script.StyleTable),
	StyleValue = require(script.StyleValue),

	-- Document Generation and Type Enforcement Utilities
	Typecheck = {
		-- Parse a component's comments to generate a set of string docs,
		-- and/or turn a set of string docs into a set of t interfaces.
		DocParser = require(script.Typecheck.DocParser),

		-- Use a component's comments to enforce strict typing of its inputs.
		wrap = require(script.Typecheck.wrap),
	},
}
