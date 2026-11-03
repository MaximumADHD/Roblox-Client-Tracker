-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/node/DefinitionMap.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local Escaping = require(Root.internal.util.Escaping)

local DefinitionMap = {}
DefinitionMap.__index = DefinitionMap

-- PORT NOTE: Java's LinkedHashMap becomes a keys array in insertion order plus a key-to-value
-- map, so keySet and values keep document order. Nothing removes or replaces an entry, so the
-- array never needs updating after an insert.
type DefinitionMapFields<D> = {
	_type: string,
	_keys: { string },
	_definitions: { [string]: D },
	getType: (self: DefinitionMap<D>) -> string,
	addAll: (self: DefinitionMap<D>, that: DefinitionMap<D>) -> (),
	putIfAbsent: (self: DefinitionMap<D>, label: string, definition: D) -> D?,
	get: (self: DefinitionMap<D>, label: string) -> D?,
	keySet: (self: DefinitionMap<D>) -> { string },
	values: (self: DefinitionMap<D>) -> { D },
}

export type DefinitionMap<D> = typeof(setmetatable({} :: DefinitionMapFields<D>, DefinitionMap))

-- PORT NOTE: Java's Class<D> type token becomes a string naming the definition type, the node
-- kind for node definitions ("LinkReferenceDefinition"), because Luau has no class objects to key
-- Definitions' map by.
function DefinitionMap.new<D>(type: string): DefinitionMap<D>
	return setmetatable({ _type = type, _keys = {}, _definitions = {} }, DefinitionMap) :: any
end

-- LinkedHashMap.putIfAbsent: keep the first value stored under a key, and return it
local function putIfAbsentNormalized<D>(self: DefinitionMap<D>, key: string, value: D): D?
	local existing = self._definitions[key]
	if existing ~= nil then
		return existing
	end
	table.insert(self._keys, key)
	self._definitions[key] = value
	return nil
end

function DefinitionMap.getType<D>(self: DefinitionMap<D>): string
	return self._type
end

function DefinitionMap.addAll<D>(self: DefinitionMap<D>, that: DefinitionMap<D>)
	for _, key in ipairs(that._keys) do
		-- Note that keys are already normalized, so we can add them directly
		putIfAbsentNormalized(self, key, that._definitions[key])
	end
end

function DefinitionMap.putIfAbsent<D>(self: DefinitionMap<D>, label: string, definition: D): D?
	local normalizedLabel = Escaping.normalizeLabelContent(label)

	-- spec: When there are multiple matching link reference definitions, the first is used
	return putIfAbsentNormalized(self, normalizedLabel, definition)
end

function DefinitionMap.get<D>(self: DefinitionMap<D>, label: string): D?
	local normalizedLabel = Escaping.normalizeLabelContent(label)
	return self._definitions[normalizedLabel]
end

-- PORT NOTE: keySet and values return new arrays in insertion order where Java returns live
-- views of the map. Nothing in commonmark-java writes through those views or holds one across an
-- insert, so callers see the same entries in the same order.
function DefinitionMap.keySet<D>(self: DefinitionMap<D>): { string }
	return table.clone(self._keys)
end

function DefinitionMap.values<D>(self: DefinitionMap<D>): { D }
	local values = table.create(#self._keys)
	for i, key in ipairs(self._keys) do
		values[i] = self._definitions[key]
	end
	return values
end

return DefinitionMap
