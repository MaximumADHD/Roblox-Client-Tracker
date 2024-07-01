local LuauPolyfill = script.Parent.Parent
local Map = require(script.Parent)
local Object = require(LuauPolyfill.Object)
local instanceOf = require(LuauPolyfill.instanceof)
local types = require(LuauPolyfill.types)
type Map<K, V> = types.Map<K, V>
type Table<K, V> = types.Table<K, V>

local function coerceToMap(mapLike: Map<any, any> | Table<any, any>): Map<any, any>
	return instanceOf(mapLike, Map) and mapLike :: Map<any, any> -- ROBLOX: order is preserved
		or Map.new(Object.entries(mapLike)) -- ROBLOX: order is not preserved
end

return coerceToMap
