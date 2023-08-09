-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/merge/src/typedefs-mergers/merge-nodes.ts
local Packages = script.Parent.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Object = LuauPolyfill.Object
type Record<K, T> = { [K]: T } --[[ ROBLOX TODO: TS 'Record' built-in type is not available in Luau ]]
-- ROBLOX deviation START: add additional imports
local Map = LuauPolyfill.Map
type Array<T> = LuauPolyfill.Array<T>
type Map<K, V> = LuauPolyfill.Map<K, V>
-- ROBLOX deviation END
-- ROBLOX deviation START: add additional types
type ReadonlyArray<T> = Array<T>
-- ROBLOX deviation END
local exports = {}
-- ROBLOX deviation START: import as type, import from different file to avoid circular dependency
-- local Config = require(script.Parent["index.js"]).Config
local mergeTypedefsModule = require(script.Parent["merge-typedefs_types"])
type Config = mergeTypedefsModule.Config
-- ROBLOX deviation END
local graphqlModule = require(Packages.GraphQL)
-- ROBLOX deviation START: import as type
-- local DefinitionNode = graphqlModule.DefinitionNode
type DefinitionNode = graphqlModule.DefinitionNode
-- ROBLOX deviation END
local Kind = graphqlModule.Kind
-- ROBLOX deviation START: import as type
-- local SchemaDefinitionNode = graphqlModule.SchemaDefinitionNode
-- local SchemaExtensionNode = graphqlModule.SchemaExtensionNode
type SchemaDefinitionNode = graphqlModule.SchemaDefinitionNode
type SchemaExtensionNode = graphqlModule.SchemaExtensionNode
-- ROBLOX deviation END
-- ROBLOX deviation START: fix imports
-- local mergeType = require(script.Parent["type.js"]).mergeType
-- local mergeEnum = require(script.Parent["enum.js"]).mergeEnum
-- local mergeScalar = require(script.Parent["scalar.js"]).mergeScalar
-- local mergeUnion = require(script.Parent["union.js"]).mergeUnion
-- local mergeInputType = require(script.Parent["input-type.js"]).mergeInputType
-- local mergeInterface = require(script.Parent["interface.js"]).mergeInterface
-- local mergeDirective = require(script.Parent["directives.js"]).mergeDirective
-- local mergeSchemaDefs = require(script.Parent["schema-def.js"]).mergeSchemaDefs
-- local graphqlToolsUtilsModule = require(Packages["@graphql-tools"].utils)
local mergeType = require(script.Parent.type).mergeType
local mergeEnum = require(script.Parent.enum).mergeEnum
local mergeScalar = require(script.Parent.scalar).mergeScalar
local mergeUnion = require(script.Parent.union).mergeUnion
local mergeInputType = require(script.Parent["input-type"]).mergeInputType
local mergeInterface = require(script.Parent.interface).mergeInterface
local mergeDirective = require(script.Parent.directives).mergeDirective
local mergeSchemaDefs = require(script.Parent["schema-def"]).mergeSchemaDefs
local graphqlToolsUtilsModule = require(Packages.Utils)
-- ROBLOX deviation END
-- ROBLOX deviation START: import as type
-- local NamedDefinitionNode = graphqlToolsUtilsModule.NamedDefinitionNode
type NamedDefinitionNode = graphqlToolsUtilsModule.NamedDefinitionNode
-- ROBLOX deviation END
local collectComment = graphqlToolsUtilsModule.collectComment
local schemaDefSymbol = "SCHEMA_DEF_SYMBOL"
exports.schemaDefSymbol = schemaDefSymbol
-- ROBLOX deviation START: using Map instead of Object
-- export type MergedResultMap =
-- 	Record<string, NamedDefinitionNode>
-- 	& { schemaDefSymbol: SchemaDefinitionNode | SchemaExtensionNode }
export type MergedResultMap = Map<
	string | "SCHEMA_DEF_SYMBOL",
	NamedDefinitionNode | SchemaDefinitionNode | SchemaExtensionNode
>
-- ROBLOX deviation END

local function isNamedDefinitionNode(
	definitionNode: DefinitionNode
): boolean --[[ ROBLOX FIXME: change to TSTypePredicate equivalent if supported ]] --[[ definitionNode is NamedDefinitionNode ]]
	return Array.indexOf(Object.keys(definitionNode), "name") ~= -1
end
exports.isNamedDefinitionNode = isNamedDefinitionNode
local function mergeGraphQLNodes(nodes: ReadonlyArray<DefinitionNode>, config: Config?): MergedResultMap
	-- ROBLOX deviation START: using Map instead of object
	-- local mergedResultMap = {} :: MergedResultMap
	local mergedResultMap = Map.new() :: MergedResultMap
	-- ROBLOX deviation END
	for _, nodeDefinition in nodes do
		if Boolean.toJSBoolean(isNamedDefinitionNode(nodeDefinition)) then
			-- ROBLOX deviation START: cast to any
			-- local name = if typeof(nodeDefinition.name) == "table"
			local name = if typeof((nodeDefinition :: any).name) == "table"
				-- ROBLOX deviation END
				-- ROBLOX deviation START: explicit cast
				-- then nodeDefinition.name.value
				then (nodeDefinition :: any).name.value
				-- ROBLOX deviation END
				else nil
			-- ROBLOX deviation START: assert config exists
			-- 	if
			-- 	Boolean.toJSBoolean(
			-- 		if typeof(config) == "table" then config.commentDescriptions else nil
			-- 	)
			-- then
			if config and Boolean.toJSBoolean(config.commentDescriptions) then
				-- ROBLOX deviation END
				collectComment(nodeDefinition :: any --[[ NamedDefinitionNode ]])
			end
			if
				name == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
			then
				continue
			end
			if
				-- ROBLOX deviation START: assert config exists, remove shadowed variables
				-- Boolean.toJSBoolean((function()
				-- 	local ref = if typeof(
				-- 			if typeof(config) == "table" then config.exclusions else nil
				-- 		) == "table"
				-- 		then (if typeof(config) == "table" then config.exclusions else nil).includes
				-- 		else nil
				-- 	local ref = if ref ~= nil then ref(tostring(name) .. ".*") else nil
				-- 	return Boolean.toJSBoolean(ref) and ref
				-- 		or (function()
				-- 			local ref = if typeof(
				-- 					if typeof(config) == "table" then config.exclusions else nil
				-- 				) == "table"
				-- 				then (if typeof(config) == "table" then config.exclusions else nil).includes
				-- 				else nil
				-- 			return if ref ~= nil then ref(name) else nil
				-- 		end)()
				-- end)())
				(config and typeof(config.exclusions) == "table" and Array.includes(config.exclusions, name .. ".*"))
				or (config and typeof(config.exclusions) == "table" and Array.includes(config.exclusions, name))
				-- ROBLOX deviation END
			then
				-- ROBLOX deviation START: mergedResultMap is a Map
				-- mergedResultMap[tostring(name)] = nil
				mergedResultMap:delete(name)
				-- ROBLOX deviation END
			else
				local condition_ = nodeDefinition.kind
				if condition_ == Kind.OBJECT_TYPE_DEFINITION or condition_ == Kind.OBJECT_TYPE_EXTENSION then
					-- ROBLOX deviation START: mergedResultMap is a map
					-- mergedResultMap[tostring(name)] =
					-- 	mergeType(nodeDefinition, mergedResultMap[tostring(name)] :: any, config)
					mergedResultMap:set(
						name,
						mergeType(nodeDefinition :: any, mergedResultMap:get(name) :: any, config)
					)
					-- ROBLOX deviation END
				elseif condition_ == Kind.ENUM_TYPE_DEFINITION or condition_ == Kind.ENUM_TYPE_EXTENSION then
					-- ROBLOX deviation START: mergedResultMap is a map
					-- mergedResultMap[tostring(name)] =
					-- mergeEnum(nodeDefinition, mergedResultMap[tostring(name)] :: any, config)
					mergedResultMap:set(
						name,
						mergeEnum(nodeDefinition :: any, mergedResultMap:get(name) :: any, config)
					)
					-- ROBLOX deviation END
				elseif condition_ == Kind.UNION_TYPE_DEFINITION or condition_ == Kind.UNION_TYPE_EXTENSION then
					-- ROBLOX deviation START: mergedResultMap is a map
					-- mergedResultMap[tostring(name)] =
					-- 	mergeUnion(nodeDefinition, mergedResultMap[tostring(name)] :: any, config)
					mergedResultMap:set(
						name,
						mergeUnion(nodeDefinition :: any, mergedResultMap:get(name) :: any, config)
					)
					-- ROBLOX deviation END
				elseif condition_ == Kind.SCALAR_TYPE_DEFINITION or condition_ == Kind.SCALAR_TYPE_EXTENSION then
					-- ROBLOX deviation START: mergedResultMap is a map
					-- mergedResultMap[tostring(name)] =
					-- 	mergeScalar(nodeDefinition, mergedResultMap[tostring(name)] :: any, config)
					mergedResultMap:set(
						name,
						mergeScalar(nodeDefinition :: any, mergedResultMap:get(name) :: any, config)
					)
					-- ROBLOX deviation END
				elseif
					condition_ == Kind.INPUT_OBJECT_TYPE_DEFINITION
					or condition_ == Kind.INPUT_OBJECT_TYPE_EXTENSION
				then
					-- ROBLOX deviation START: mergedResultMap is a map
					-- 	mergedResultMap[tostring(name)] = mergeInputType(
					-- 	nodeDefinition,
					-- 	mergedResultMap[tostring(name)] :: any,
					-- 	config
					-- )
					mergedResultMap:set(
						name,
						mergeInputType(nodeDefinition :: any, mergedResultMap:get(name) :: any, config)
					)
					-- ROBLOX deviation END
				elseif condition_ == Kind.INTERFACE_TYPE_DEFINITION or condition_ == Kind.INTERFACE_TYPE_EXTENSION then
					-- ROBLOX deviation START: mergedResultMap is a Map
					-- mergedResultMap[tostring(name)] = mergeInterface(
					-- 	nodeDefinition,
					-- 	mergedResultMap[tostring(name)] :: any,
					-- 	config
					-- )
					mergedResultMap:set(
						name,
						mergeInterface(nodeDefinition :: any, mergedResultMap:get(name) :: any, config)
					)
					-- ROBLOX deviation END
				elseif condition_ == Kind.DIRECTIVE_DEFINITION then
					-- ROBLOX deviation START: mergedResultMap is a Map
					-- mergedResultMap[tostring(name)] =
					-- 	mergeDirective(nodeDefinition, mergedResultMap[tostring(name)] :: any)
					mergedResultMap:set(name, mergeDirective(nodeDefinition :: any, mergedResultMap:get(name) :: any))
					-- ROBLOX deviation END
				end
			end
		elseif nodeDefinition.kind == Kind.SCHEMA_DEFINITION or nodeDefinition.kind == Kind.SCHEMA_EXTENSION then
			-- ROBLOX deviation START: mergedResultMap is a Map
			-- mergedResultMap[tostring(schemaDefSymbol)] =
			-- 	mergeSchemaDefs(nodeDefinition, mergedResultMap[tostring(schemaDefSymbol)], config)
			mergedResultMap:set(
				schemaDefSymbol,
				mergeSchemaDefs(
					nodeDefinition :: any,
					mergedResultMap:get(schemaDefSymbol) :: SchemaDefinitionNode | SchemaExtensionNode,
					config
				)
			)
			-- ROBLOX deviation END
		end
	end
	-- ROBLOX deviation START: explicit cast
	-- return mergedResultMap
	return (mergedResultMap :: any) :: MergedResultMap
	-- ROBLOX deviation END
end
exports.mergeGraphQLNodes = mergeGraphQLNodes
return exports
