-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/merge/src/typedefs-mergers/schema-def.ts
local Packages = script.Parent.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Object = LuauPolyfill.Object
type Array<T> = LuauPolyfill.Array<T>
local exports = {}
-- ROBLOX deviation START: add additional type
type ReadonlyArray<T> = Array<T>
-- ROBLOX deviation END
local graphqlModule = require(Packages.GraphQL)
local Kind = graphqlModule.Kind
-- ROBLOX deviation START: import as types
-- local OperationTypeDefinitionNode = graphqlModule.OperationTypeDefinitionNode
-- local SchemaDefinitionNode = graphqlModule.SchemaDefinitionNode
-- local SchemaExtensionNode = graphqlModule.SchemaExtensionNode
type OperationTypeDefinitionNode = graphqlModule.OperationTypeDefinitionNode
type SchemaDefinitionNode = graphqlModule.SchemaDefinitionNode
type SchemaExtensionNode = graphqlModule.SchemaExtensionNode
-- ROBLOX deviation END
-- ROBLOX deviation START: fix import
-- local mergeDirectives = require(script.Parent["directives.js"]).mergeDirectives
local mergeDirectives = require(script.Parent.directives).mergeDirectives
-- ROBLOX deviation END
-- ROBLOX deviation START: import as type, import from different file to avoid circular dependency
-- local Config = require(script.Parent["merge-typedefs.js"]).Config
local mergeTypedefsModule = require(script.Parent["merge-typedefs_types"])
type Config = mergeTypedefsModule.Config
-- ROBLOX deviation END
-- ROBLOX deviation START: fix as const incorrect translation
-- local DEFAULT_OPERATION_TYPE_NAME_MAP =
-- 	{ query = "Query", mutation = "Mutation", subscription = "Subscription" } :: const
local DEFAULT_OPERATION_TYPE_NAME_MAP = { query = "Query", mutation = "Mutation", subscription = "Subscription" }
-- ROBLOX deviation END
exports.DEFAULT_OPERATION_TYPE_NAME_MAP = DEFAULT_OPERATION_TYPE_NAME_MAP
local function mergeOperationTypes(
	opNodeList_: ReadonlyArray<OperationTypeDefinitionNode>?,
	existingOpNodeList_: ReadonlyArray<OperationTypeDefinitionNode>?
): Array<OperationTypeDefinitionNode>
	local opNodeList: ReadonlyArray<OperationTypeDefinitionNode> = if opNodeList_ ~= nil then opNodeList_ else {}
	local existingOpNodeList: ReadonlyArray<OperationTypeDefinitionNode> = if existingOpNodeList_ ~= nil
		then existingOpNodeList_
		else {}
	local finalOpNodeList: Array<OperationTypeDefinitionNode> = {}
	-- ROBLOX deviation START: fix iteration
	-- for opNodeType in DEFAULT_OPERATION_TYPE_NAME_MAP do
	for _, opNodeType in DEFAULT_OPERATION_TYPE_NAME_MAP :: { [string]: string } do
		-- ROBLOX deviation END
		local ref = Array.find(opNodeList, function(n)
			return n.operation == opNodeType
		end) --[[ ROBLOX CHECK: check if 'opNodeList' is an Array ]]
		local opNode = Boolean.toJSBoolean(ref) and ref
			or Array.find(existingOpNodeList, function(n)
				return n.operation == opNodeType
			end) --[[ ROBLOX CHECK: check if 'existingOpNodeList' is an Array ]]
		-- ROBLOX deviation START: assertion required
		-- if Boolean.toJSBoolean(opNode) then
		if opNode then
			-- ROBLOX deviation END
			table.insert(finalOpNodeList, opNode) --[[ ROBLOX CHECK: check if 'finalOpNodeList' is an Array ]]
		end
	end
	return finalOpNodeList
end
local function mergeSchemaDefs(
	node: SchemaDefinitionNode | SchemaExtensionNode,
	existingNode: SchemaDefinitionNode | SchemaExtensionNode,
	config: Config?
): SchemaDefinitionNode | SchemaExtensionNode
	if Boolean.toJSBoolean(existingNode) then
		return {
			kind = if node.kind == Kind.SCHEMA_DEFINITION or existingNode.kind == Kind.SCHEMA_DEFINITION
				then Kind.SCHEMA_DEFINITION
				else Kind.SCHEMA_EXTENSION,
			-- ROBLOX deviation START: explicit cast
			-- description = Boolean.toJSBoolean(node["description"]) and node["description"]
			-- or existingNode["description"],
			description = Boolean.toJSBoolean((node :: any).description) and (node :: any).description
				or (existingNode :: any).description,
			-- ROBLOX deviation END
			directives = mergeDirectives(node.directives, existingNode.directives, config),
			operationTypes = mergeOperationTypes(node.operationTypes, existingNode.operationTypes),
		} :: any
	end
	-- ROBLOX deviation START: assert config
	-- return if Boolean.toJSBoolean(
	-- 		if typeof(config) == "table" then config.convertExtensions else nil
	-- 	)
	return if config and Boolean.toJSBoolean(config.convertExtensions)
		-- ROBLOX deviation END
		then Object.assign({}, node, { kind = Kind.SCHEMA_DEFINITION })
		else node :: any
end
exports.mergeSchemaDefs = mergeSchemaDefs
return exports
