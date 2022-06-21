--!strict
local Array = require(script.Array)
local AssertionError = require(script.AssertionError)
local Error = require(script.Error)
local mapModule = require(script.Map)
local Object = require(script.Object)
local PromiseModule = require(script.Promise)
local Set = require(script.Set)
local Symbol = require(script.Symbol)
local Timers = require(script.Timers)
local WeakMap = require(script.WeakMap)

export type Array<T> = Array.Array<T>
export type AssertionError = AssertionError.AssertionError
export type Error = Error.Error
export type Map<T, V> = mapModule.Map<T, V>
export type Object = Object.Object

export type PromiseLike<T> = PromiseModule.PromiseLike<T>
export type Promise<T> = PromiseModule.Promise<T>

export type Set<T> = Set.Set<T>
export type Symbol = Symbol.Symbol
export type Timeout = Timers.Timeout
export type Interval = Timers.Interval
export type WeakMap<T, V> = WeakMap.WeakMap<T, V>

return {
	Array = Array,
	AssertionError = AssertionError,
	Boolean = require(script.Boolean),
	console = require(script.console),
	Error = Error,
	extends = require(script.extends),
	instanceof = require(script.instanceof),
	Math = require(script.Math),
	Number = require(script.Number),
	Object = Object,
	Map = mapModule.Map,
	coerceToMap = mapModule.coerceToMap,
	coerceToTable = mapModule.coerceToTable,
	Set = Set,
	WeakMap = WeakMap,
	String = require(script.String),
	Symbol = Symbol,
	setTimeout = Timers.setTimeout,
	clearTimeout = Timers.clearTimeout,
	setInterval = Timers.setInterval,
	clearInterval = Timers.clearInterval,
	util = require(script.util),
}
