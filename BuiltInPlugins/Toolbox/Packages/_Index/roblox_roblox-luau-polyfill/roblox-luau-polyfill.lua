local Timers = require(script.Timers)
local Set = require(script.Set)

export type Array<T> = { [number]: T }
export type Set<T> = Set.Set<T>

return {
	Array = require(script.Array),
	Boolean = require(script.Boolean),
	console = require(script.console),
	Error = require(script.Error),
	extends = require(script.extends),
	instanceof = require(script.instanceof),
	Math = require(script.Math),
	Number = require(script.Number),
	Object = require(script.Object),
	Set = Set,
	RegExp = require(script.RegExp),
	String = require(script.String),
	Symbol = require(script.Symbol),
	setTimeout = Timers.setTimeout,
	clearTimeout = Timers.clearTimeout,
	util = require(script.util),
}