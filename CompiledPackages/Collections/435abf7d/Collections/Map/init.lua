local Packages = script.Parent.Parent

local ES7Types = require(Packages.ES7Types)

local Map = require(script.Map)
local coerceToMap = require(script.coerceToMap)
local coerceToTable = require(script.coerceToTable)

export type Map<K, V> = ES7Types.Map<K, V>

return {
	Map = Map,
	coerceToMap = coerceToMap,
	coerceToTable = coerceToTable,
}
