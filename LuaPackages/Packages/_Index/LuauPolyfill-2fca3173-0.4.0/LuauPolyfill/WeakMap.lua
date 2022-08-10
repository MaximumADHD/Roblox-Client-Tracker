--!strict
export type WeakMap<K, V> = {
	-- method definitions
	get: (self: WeakMapPrivate<K, V>, K) -> V,
	set: (self: WeakMapPrivate<K, V>, K, V) -> WeakMap<K, V>,
	has: (self: WeakMapPrivate<K, V>, K) -> boolean,
}

type WeakMapPrivate<K, V> = WeakMap<K, V> & {
	_weakMap: { [K]: V },
}
type WeakMap_Statics = {
	new: <K, V>() -> WeakMap<K, V>,
}

local WeakMap: WeakMap<any, any> & WeakMap_Statics = {} :: any;
(WeakMap :: any).__index = WeakMap

function WeakMap.new<K, V>(): WeakMap<K, V>
	local weakMap = setmetatable({}, { __mode = "k" })
	return setmetatable({ _weakMap = weakMap }, WeakMap) :: any
end

function WeakMap:get(key)
	return self._weakMap[key]
end

function WeakMap:set(key, value)
	self._weakMap[key] = value
	return self
end

function WeakMap:has(key): boolean
	return self._weakMap[key] ~= nil
end

return WeakMap
