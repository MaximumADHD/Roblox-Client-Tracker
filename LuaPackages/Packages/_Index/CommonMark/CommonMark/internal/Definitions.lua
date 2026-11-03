-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/internal/Definitions.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local DefinitionMap = require(Root.node.DefinitionMap)

type DefinitionMap<D> = DefinitionMap.DefinitionMap<D>

local Definitions = {}
Definitions.__index = Definitions

-- PORT NOTE: the Class<?> keys are DefinitionMap's type strings (the node kind for node
-- definitions, "LinkReferenceDefinition"), because Luau has no class objects.
type DefinitionsFields = {
	_definitionsByType: { [string]: DefinitionMap<any> },
	addDefinitions: <D>(self: Definitions, definitionMap: DefinitionMap<D>) -> (),
	getDefinition: <V>(self: Definitions, type: string, label: string) -> V?,
	getMap: <V>(self: Definitions, type: string) -> DefinitionMap<V>?,
}

export type Definitions = typeof(setmetatable({} :: DefinitionsFields, Definitions))

function Definitions.new(): Definitions
	return setmetatable({ _definitionsByType = {} }, Definitions) :: any
end

function Definitions.addDefinitions<D>(self: Definitions, definitionMap: DefinitionMap<D>)
	local existingMap: DefinitionMap<D>? = self:getMap(definitionMap:getType())
	if existingMap == nil then
		self._definitionsByType[definitionMap:getType()] = definitionMap
	else
		existingMap:addAll(definitionMap)
	end
end

function Definitions.getDefinition<V>(self: Definitions, type: string, label: string): V?
	local definitionMap: DefinitionMap<V>? = self:getMap(type)
	if definitionMap == nil then
		return nil
	end
	return definitionMap:get(label)
end

function Definitions.getMap<V>(self: Definitions, type: string): DefinitionMap<V>?
	-- Java's unchecked cast: the map stored under a type holds that type's definitions.
	return self._definitionsByType[type] :: any
end

return Definitions
