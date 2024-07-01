--!strict
export type WeakMap<T, V> = {
	-- method definitions
	get: (self: WeakMap<T, V>, T) -> V,
	set: (self: WeakMap<T, V>, T, V) -> WeakMap<T, V>,
	has: (self: WeakMap<T, V>, T) -> boolean,
}

local WeakMap = {}
WeakMap.__index = WeakMap

function WeakMap.new(): WeakMap<any, any>
	local weakMap = setmetatable({}, { __mode = "k" })
	return (setmetatable({ _weakMap = weakMap }, WeakMap) :: any) :: WeakMap<any, any>
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
