-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/merge/src/typedefs-mergers/merge-typedefs.ts
local Packages = script.Parent.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Error = LuauPolyfill.Error
local Object = LuauPolyfill.Object
local Set = LuauPolyfill.Set
type Array<T> = LuauPolyfill.Array<T>
-- ROBLOX deviation START: add additionl type
type Set<T> = LuauPolyfill.Set<T>
-- ROBLOX deviation END
type Exclude<T, U> = any --[[ ROBLOX TODO: TS 'Exclude' built-in type is not available in Luau ]]
type Partial<T> = T --[[ ROBLOX TODO: TS 'Partial' built-in type is not available in Luau ]]
type Pick<T, K> = T --[[ ROBLOX TODO: TS 'Pick' built-in type is not available in Luau ]]
local exports = {}
-- ROBLOX deviation START: add extracted type to avoid circular dependency
local typesModule = require(script.Parent["merge-typedefs_types"])
type Config_ = typesModule.Config
-- ROBLOX deviation END
-- ROBLOX deviation START: predeclare variables
local mergeGraphQLTypes
-- ROBLOX deviation END
local graphqlModule = require(Packages.GraphQL)
-- ROBLOX deviation START: import as type
-- local DefinitionNode = graphqlModule.DefinitionNode
-- local DocumentNode = graphqlModule.DocumentNode
type DefinitionNode = graphqlModule.DefinitionNode
type DocumentNode = graphqlModule.DocumentNode
-- ROBLOX deviation END
local parse = graphqlModule.parse
local Kind = graphqlModule.Kind
local isSchema = graphqlModule.isSchema
-- ROBLOX deviation START: import as type
-- local OperationTypeDefinitionNode = graphqlModule.OperationTypeDefinitionNode
-- local OperationTypeNode = graphqlModule.OperationTypeNode
type OperationTypeDefinitionNode = graphqlModule.OperationTypeDefinitionNode
type OperationTypeNode = graphqlModule.OperationTypeNode
-- ROBLOX deviation END
local isDefinitionNode = graphqlModule.isDefinitionNode
-- ROBLOX deviation START: import as type
-- local ParseOptions = graphqlModule.ParseOptions
type ParseOptions = graphqlModule.ParseOptions
-- ROBLOX deviation END
-- ROBLOX deviation START: fix import
-- local utilsJsModule = require(script.Parent["utils.js"])
local utilsJsModule = require(script.Parent.utils)
-- ROBLOX deviation END
-- ROBLOX deviation START: import as type
-- local CompareFn = utilsJsModule.CompareFn
type CompareFn<T> = utilsJsModule.CompareFn<T>
-- ROBLOX deviation END
local defaultStringComparator = utilsJsModule.defaultStringComparator
local isSourceTypes = utilsJsModule.isSourceTypes
local isStringTypes = utilsJsModule.isStringTypes
local mergeNodesJsModule = require(script.Parent["merge-nodes"])
-- ROBLOX deviation START: import as type
-- local MergedResultMap = mergeNodesJsModule.MergedResultMap
type MergedResultMap = mergeNodesJsModule.MergedResultMap
-- ROBLOX deviation END
local mergeGraphQLNodes = mergeNodesJsModule.mergeGraphQLNodes
local schemaDefSymbol = mergeNodesJsModule.schemaDefSymbol
-- ROBLOX deviation START: fix import
-- local graphqlToolsUtilsModule = require(Packages["@graphql-tools"].utils)
local graphqlToolsUtilsModule = require(Packages.Utils)
-- ROBLOX deviation END
local getDocumentNodeFromSchema = graphqlToolsUtilsModule.getDocumentNodeFromSchema
-- ROBLOX deviation START: import as type
-- local GetDocumentNodeFromSchemaOptions = graphqlToolsUtilsModule.GetDocumentNodeFromSchemaOptions
type GetDocumentNodeFromSchemaOptions = graphqlToolsUtilsModule.GetDocumentNodeFromSchemaOptions
-- ROBLOX deviation END
local isDocumentNode = graphqlToolsUtilsModule.isDocumentNode
-- ROBLOX deviation START: import as type
-- local TypeSource = graphqlToolsUtilsModule.TypeSource
type TypeSource = graphqlToolsUtilsModule.TypeSource
-- ROBLOX deviation END
local resetComments = graphqlToolsUtilsModule.resetComments
local printWithComments = graphqlToolsUtilsModule.printWithComments
-- ROBLOX deviation START: add additional types
type SchemaDefinitionNode = graphqlModule.SchemaDefinitionNode
type NamedDefinitionNode = graphqlToolsUtilsModule.NamedDefinitionNode
-- ROBLOX deviation END
-- ROBLOX deviation START: fix import
-- local DEFAULT_OPERATION_TYPE_NAME_MAP =
-- 	require(script.Parent["schema-def.js"]).DEFAULT_OPERATION_TYPE_NAME_MAP
local DEFAULT_OPERATION_TYPE_NAME_MAP = require(script.Parent["schema-def"]).DEFAULT_OPERATION_TYPE_NAME_MAP
-- ROBLOX deviation END
type Omit<T, K> = Pick<T, Exclude<any --[[ ROBLOX TODO: Unhandled node for type: TSTypeOperator ]] --[[ keyof T ]], K>>
-- ROBLOX deviation START: extracted type to different file
-- export type Config = ParseOptions & GetDocumentNodeFromSchemaOptions & {
-- 	--[[*
--    * Produces `schema { query: ..., mutation: ..., subscription: ... }`
--    *
--    * Default: true
--    ]]
-- 	useSchemaDefinition: boolean?,
-- 	--[[*
--    * Creates schema definition, even when no types are available
--    * Produces: `schema { query: Query }`
--    *
--    * Default: false
--    ]]
-- 	forceSchemaDefinition: boolean?,
-- 	--[[*
--    * Throws an error on a merge conflict
--    *
--    * Default: false
--    ]]
-- 	throwOnConflict: boolean?,
-- 	--[[*
--    * Descriptions are defined as preceding string literals, however an older
--    * experimental version of the SDL supported preceding comments as
--    * descriptions. Set to true to enable this deprecated behavior.
--    * This option is provided to ease adoption and will be removed in v16.
--    *
--    * Default: false
--    ]]
-- 	commentDescriptions: boolean?,
-- 	--[[*
--    * Puts the next directive first.
--    *
--    * Default: false
--    *
--    * @example:
--    * Given:
--    * ```graphql
--    *  type User { a: String @foo }
--    *  type User { a: String @bar }
--    * ```
--    *
--    * Results:
--    * ```
--    *  type User { a: @bar @foo }
--    * ```
--    ]]
-- 	reverseDirectives: boolean?,
-- 	exclusions: Array<string>?,
-- 	sort: (boolean | CompareFn<string>)?,
-- 	convertExtensions: boolean?,
-- 	consistentEnumMerge: boolean?,
-- 	ignoreFieldConflicts: boolean?,
-- }
export type Config = Config_
-- ROBLOX deviation END
--[[*
 * Merges multiple type definitions into a single `DocumentNode`
 * @param types The type definitions to be merged
 ]]
-- ROBLOX deviation START: unsupported function overrides
--  error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: TSDeclareFunction ]] --[[ function mergeTypeDefs(typeSource: TypeSource): DocumentNode; ]]
--  exports[error("not implemented")] = error("not implemented")
--  error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: TSDeclareFunction ]] --[[ function mergeTypeDefs(typeSource: TypeSource, config?: Partial<Config> & {
--    commentDescriptions: true;
--  }): string; ]]
--  exports[error("not implemented")] = error("not implemented")
--  error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: TSDeclareFunction ]] --[[ function mergeTypeDefs(typeSource: TypeSource, config?: Omit<Partial<Config>, 'commentDescriptions'>): DocumentNode; ]]
--  exports[error("not implemented")] = error("not implemented")
-- ROBLOX deviation END
local function mergeTypeDefs(typeSource: TypeSource, config: Partial<Config>?): DocumentNode | string
	resetComments()
	local doc: DocumentNode = {
		kind = Kind.DOCUMENT,
		definitions = mergeGraphQLTypes(
			typeSource,
			Object.assign({}, {
				useSchemaDefinition = true,
				forceSchemaDefinition = false,
				throwOnConflict = false,
				commentDescriptions = false,
			}, config)
		),
	}
	local result: any
	-- ROBLOX deviation START: assert config exists
	-- if
	-- 	Boolean.toJSBoolean(if typeof(config) == "table" then config.commentDescriptions else nil)
	-- then
	if config and config.commentDescriptions then
		-- ROBLOX deviation END
		result = printWithComments(doc)
	else
		result = doc
	end
	resetComments()
	return result
end
exports.mergeTypeDefs = mergeTypeDefs
local function visitTypeSources(
	typeSource: TypeSource,
	options: ParseOptions & GetDocumentNodeFromSchemaOptions,
	allNodes_: Array<DefinitionNode>?,
	-- ROBLOX deviation START: cast
	-- visitedTypeSources_: any?
	visitedTypeSources_: Set<TypeSource>?
	-- ROBLOX deviation END
)
	local allNodes: Array<DefinitionNode> = if allNodes_ ~= nil then allNodes_ else {}
	local visitedTypeSources: any = if visitedTypeSources_ ~= nil then visitedTypeSources_ else Set.new()
	if
		Boolean.toJSBoolean(
			if Boolean.toJSBoolean(typeSource)
				then not Boolean.toJSBoolean(visitedTypeSources:has(typeSource))
				else typeSource
		)
	then
		visitedTypeSources:add(typeSource)
		if typeof(typeSource) == "function" then
			visitTypeSources(typeSource(), options, allNodes, visitedTypeSources)
		elseif Boolean.toJSBoolean(Array.isArray(typeSource)) then
			-- ROBLOX deviation START: explicit cast
			-- for _, type_ in typeSource do
			for _, type_ in typeSource :: Array<any> do
				-- ROBLOX deviation END
				visitTypeSources(type_, options, allNodes, visitedTypeSources)
			end
		elseif Boolean.toJSBoolean(isSchema(typeSource)) then
			local documentNode = getDocumentNodeFromSchema(typeSource :: any, options)
			-- ROBLOX deviation START: explicit cast
			-- local documentNode = getDocumentNodeFromSchema(typeSource, options)
			visitTypeSources(documentNode.definitions :: Array<DefinitionNode>, options, allNodes, visitedTypeSources)
			-- ROBLOX deviation END
		elseif
			Boolean.toJSBoolean((function()
				local ref = isStringTypes(typeSource)
				return Boolean.toJSBoolean(ref) and ref or isSourceTypes(typeSource)
			end)())
		then
			-- ROBLOX deviation START: explicit cast
			-- local documentNode = parse(typeSource, options)
			local documentNode = parse(typeSource :: any, options)
			-- ROBLOX deviation END
			visitTypeSources(documentNode.definitions :: Array<DefinitionNode>, options, allNodes, visitedTypeSources)
		elseif Boolean.toJSBoolean(typeof(typeSource) == "table" and isDefinitionNode(typeSource)) then
			-- ROBLOX deviation START: explicit cast
			-- table.insert(allNodes, typeSource) --[[ ROBLOX CHECK: check if 'allNodes' is an Array ]]
			table.insert(allNodes, typeSource :: DefinitionNode)
			-- ROBLOX deviation END
		elseif isDocumentNode(typeSource) then
			visitTypeSources(
				-- ROBLOX deviation START: explicit cast
				-- typeSource.definitions :: Array<DefinitionNode>,
				(typeSource :: DocumentNode).definitions :: Array<DefinitionNode>,
				-- ROBLOX deviation END
				options,
				allNodes,
				visitedTypeSources
			)
		else
			error(
				Error.new(
					("typeDefs must contain only strings, documents, schemas, or functions, got %s"):format(
						tostring(typeof(typeSource))
					)
				)
			)
		end
	end
	return allNodes
end
-- ROBLOX deviation START: predeclared function
-- local function mergeGraphQLTypes(typeSource: TypeSource, config: Config): Array<DefinitionNode>
function mergeGraphQLTypes(typeSource: TypeSource, config: Config): Array<DefinitionNode>
	-- ROBLOX deviation END
	resetComments()
	local allNodes = visitTypeSources(typeSource, config)
	local mergedNodes: MergedResultMap = mergeGraphQLNodes(allNodes, config)

	-- ROBLOX deviation START: assert config exists
	-- if
	-- 	Boolean.toJSBoolean(if typeof(config) == "table" then config.useSchemaDefinition else nil)
	-- then
	if config and Boolean.toJSBoolean(config.useSchemaDefinition) then
		-- ROBLOX deviation END
		-- XXX: right now we don't handle multiple schema definitions
		-- ROBLOX deviation START: mergedNodes is a Map
		-- local schemaDef = Boolean.toJSBoolean(mergedNodes[tostring(schemaDefSymbol)])
		-- 		and mergedNodes[tostring(schemaDefSymbol)]
		local schemaDef = (
			Boolean.toJSBoolean(mergedNodes:get(schemaDefSymbol)) and mergedNodes:get(schemaDefSymbol)
			-- ROBLOX deviation END
			or { kind = Kind.SCHEMA_DEFINITION, operationTypes = {} }
		) :: SchemaDefinitionNode
		local operationTypes = schemaDef.operationTypes :: Array<OperationTypeDefinitionNode>
		-- ROBLOX deviation START: explicit cast
		-- for opTypeDefNodeType in DEFAULT_OPERATION_TYPE_NAME_MAP do
		for opTypeDefNodeType in DEFAULT_OPERATION_TYPE_NAME_MAP :: { [string]: string } do
			-- ROBLOX deviation END
			local opTypeDefNode = Array.find(operationTypes, function(operationType)
				return operationType.operation == opTypeDefNodeType
			end) --[[ ROBLOX CHECK: check if 'operationTypes' is an Array ]]
			if not Boolean.toJSBoolean(opTypeDefNode) then
				local possibleRootTypeName = DEFAULT_OPERATION_TYPE_NAME_MAP[tostring(opTypeDefNodeType)]
				-- ROBLOX deviation START: mergedNodes is a Map
				-- local existingPossibleRootType = mergedNodes[tostring(possibleRootTypeName)]
				local existingPossibleRootType = mergedNodes:get(possibleRootTypeName) :: NamedDefinitionNode?
				-- ROBLOX deviation END
				-- ROBLOX deviation START: explicit cast
				-- if
				-- 	existingPossibleRootType ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
				-- 	and existingPossibleRootType.name ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
				-- then
				if existingPossibleRootType ~= nil and (existingPossibleRootType :: any).name ~= nil then
					-- ROBLOX deviation END
					table.insert(operationTypes, {
						kind = Kind.OPERATION_TYPE_DEFINITION,
						-- ROBLOX deviation START: explicit cast
						-- type = { kind = Kind.NAMED_TYPE, name = existingPossibleRootType.name },
						type = { kind = Kind.NAMED_TYPE, name = existingPossibleRootType.name } :: any,
						-- ROBLOX deviation END
						operation = opTypeDefNodeType :: OperationTypeNode,
					}) --[[ ROBLOX CHECK: check if 'operationTypes' is an Array ]]
				end
			end
		end
		if
			-- ROBLOX deviation START: handle .length
			-- (
			-- 			if typeof(
			-- 					if typeof(schemaDef) == "table" then schemaDef.operationTypes else nil
			-- 				) == "table"
			-- 				then (
			-- 					if typeof(schemaDef) == "table" then schemaDef.operationTypes else nil
			-- 				).length
			-- 				else nil
			-- 		)
			-- 		~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
			-- 	and schemaDef.operationTypes.length > 0 --[[ ROBLOX CHECK: operator '>' works only if either both arguments are strings or both are a number ]]
			typeof(schemaDef) == "table"
			and typeof(schemaDef.operationTypes) == "table"
			and #schemaDef.operationTypes > 0
			-- ROBLOX deviation END
		then
			-- ROBLOX deviation START: mergedNodes is a Map
			-- mergedNodes[tostring(schemaDefSymbol)] = schemaDef
			mergedNodes:set(schemaDefSymbol, schemaDef)
			-- ROBLOX deviation END
		end
	end
	if
		-- ROBLOX deviation START: assert config is not nil, fix .length, mergedNodes is a Map
		-- Boolean.toJSBoolean((function()
		-- 	local ref = if typeof(config) == "table" then config.forceSchemaDefinition else nil
		-- 	return if Boolean.toJSBoolean(ref)
		-- 		then not Boolean.toJSBoolean(
		-- 			if typeof(
		-- 					if typeof(mergedNodes[tostring(schemaDefSymbol)]) == "table"
		-- 						then mergedNodes[tostring(schemaDefSymbol)].operationTypes
		-- 						else nil
		-- 				) == "table"
		-- 				then (if typeof(mergedNodes[tostring(schemaDefSymbol)]) == "table"
		-- 					then mergedNodes[tostring(schemaDefSymbol)].operationTypes
		-- 					else nil).length
		-- 				else nil
		-- 		)
		-- 		else ref
		-- end)())
		(config and Boolean.toJSBoolean(config.forceSchemaDefinition))
		and not (
			typeof(mergedNodes:get(schemaDefSymbol)) == "table"
			and typeof((mergedNodes:get(schemaDefSymbol) :: any).operationTypes) == "table"
			and #(mergedNodes:get(schemaDefSymbol) :: any).operationTypes > 0
		)
		-- ROBLOX deviation END
	then
		-- ROBLOX deviation START: mergedNodes is a Map
		-- mergedNodes[tostring(schemaDefSymbol)] = {
		mergedNodes:set(schemaDefSymbol, {
			-- ROBLOX deviation END
			kind = Kind.SCHEMA_DEFINITION,
			operationTypes = {
				{
					kind = Kind.OPERATION_TYPE_DEFINITION,
					operation = "query" :: OperationTypeNode,
					type = { kind = Kind.NAMED_TYPE, name = { kind = Kind.NAME, value = "Query" } },
				},
			},
			-- ROBLOX deviation START: mergedNodes is a Map
			-- }
		})
		-- ROBLOX deviation END
	end

	-- ROBLOX deviation START: mergedNodes is a Map
	-- local mergedNodeDefinitions = Object.values(mergedNodes)
	local mergedNodeDefinitions = mergedNodes:values()
	-- ROBLOX deviation END
	-- ROBLOX deviation START: assert config exists
	-- if Boolean.toJSBoolean(if typeof(config) == "table" then config.sort else nil) then
	if config and Boolean.toJSBoolean(config.sort) then
		-- ROBLOX deviation END
		local sortFn = if typeof(config.sort) == "function" then config.sort else defaultStringComparator
		Array.sort(mergedNodeDefinitions, function(a: any, b: any)
			-- ROBLOX deviation START: explicit cast
			-- return sortFn(
			return (sortFn :: (...any) -> number)(
				-- ROBLOX deviation END
				if typeof(a.name) == "table" then a.name.value else nil,
				if typeof(b.name) == "table" then b.name.value else nil
			)
		end) --[[ ROBLOX CHECK: check if 'mergedNodeDefinitions' is an Array ]]
	end
	-- ROBLOX deviation START: explicit cast
	-- return mergedNodeDefinitions
	return (mergedNodeDefinitions :: any) :: Array<DefinitionNode>
	-- ROBLOX deviation END
end
exports.mergeGraphQLTypes = mergeGraphQLTypes
return exports
