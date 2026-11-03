-- Roblox-written
-- Java's LinkedHashMap, for the attribute maps the HTML renderer passes around
-- (Map<String, String> in commonmark-java, which builds them as LinkedHashMaps so attributes
-- render in insertion order). It is a keys array in insertion order plus a key-to-value map,
-- following DefinitionMap. A key is present while it's in _present, so put(key, nil) keeps an
-- entry whose value is nil, as Java's put(key, null) does; HtmlWriter.tag renders that as a bare
-- attribute name. It has only the operations the port and its tests need.

local LinkedHashMap = {}
LinkedHashMap.__index = LinkedHashMap

type LinkedHashMapFields<K, V> = {
	_keys: { K },
	_present: { [K]: true },
	_values: { [K]: V },
	put: (self: LinkedHashMap<K, V>, key: K, value: V) -> V?,
	remove: (self: LinkedHashMap<K, V>, key: K) -> V?,
	get: (self: LinkedHashMap<K, V>, key: K) -> V?,
	containsKey: (self: LinkedHashMap<K, V>, key: K) -> boolean,
	size: (self: LinkedHashMap<K, V>) -> number,
	isEmpty: (self: LinkedHashMap<K, V>) -> boolean,
	entrySet: (self: LinkedHashMap<K, V>) -> () -> (K, V),
}

export type LinkedHashMap<K, V> = typeof(setmetatable({} :: LinkedHashMapFields<K, V>, LinkedHashMap))

function LinkedHashMap.new<K, V>(): LinkedHashMap<K, V>
	return setmetatable({ _keys = {}, _present = {}, _values = {} }, LinkedHashMap) :: any
end

-- new LinkedHashMap<>(map): a mutable copy with the same entries in the same order, including
-- entries whose value is nil. Named after its parameter type, as porting-from-java.md names
-- overloads.
function LinkedHashMap.newMap<K, V>(map: LinkedHashMap<K, V>): LinkedHashMap<K, V>
	local copy: LinkedHashMap<K, V> = LinkedHashMap.new()
	for key, value in map:entrySet() do
		copy:put(key, value)
	end
	return copy
end

-- Map.of(): one shared empty map. It is frozen, so put raises, as Map.of()'s immutable map
-- throws UnsupportedOperationException.
local EMPTY = table.freeze(setmetatable({
	_keys = table.freeze({}),
	_present = table.freeze({}),
	_values = table.freeze({}),
}, LinkedHashMap))

function LinkedHashMap.of<K, V>(): LinkedHashMap<K, V>
	return EMPTY :: any
end

-- Putting an existing key replaces its value and keeps its position, as in Java.
function LinkedHashMap.put<K, V>(self: LinkedHashMap<K, V>, key: K, value: V): V?
	local previous = self._values[key]
	if self._present[key] == nil then
		table.insert(self._keys, key)
		self._present[key] = true
	end
	self._values[key] = value
	return previous
end

-- Removing a key drops its entry, so putting it again appends it at the end, as in Java.
function LinkedHashMap.remove<K, V>(self: LinkedHashMap<K, V>, key: K): V?
	if self._present[key] == nil then
		return nil
	end
	local previous = self._values[key]
	table.remove(self._keys, table.find(self._keys, key))
	self._present[key] = nil
	self._values[key] = nil
	return previous
end

function LinkedHashMap.get<K, V>(self: LinkedHashMap<K, V>, key: K): V?
	return self._values[key]
end

function LinkedHashMap.containsKey<K, V>(self: LinkedHashMap<K, V>, key: K): boolean
	return self._present[key] ~= nil
end

function LinkedHashMap.size<K, V>(self: LinkedHashMap<K, V>): number
	return #self._keys
end

function LinkedHashMap.isEmpty<K, V>(self: LinkedHashMap<K, V>): boolean
	return #self._keys == 0
end

-- `for (var e : map.entrySet())` becomes `for key, value in map:entrySet() do`, in insertion order.
-- The loop ends on the first nil key, so a nil value doesn't end it early.
function LinkedHashMap.entrySet<K, V>(self: LinkedHashMap<K, V>): () -> (K, V)
	local keys = self._keys
	local values = self._values
	local i = 0
	return function()
		i += 1
		local key = keys[i]
		if key == nil then
			return nil :: any, nil :: any
		end
		return key, values[key]
	end
end

return LinkedHashMap
