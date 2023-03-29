-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/get-directives.ts
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Object = LuauPolyfill.Object
type Array<T> = LuauPolyfill.Array<T>
type Record<K, T> = { [K]: T } --[[ ROBLOX TODO: TS 'Record' built-in type is not available in Luau ]]
local exports = {}
local graphqlModule = require(Packages.GraphQL)
-- ROBLOX deviation START: import as types instead of locals
-- local GraphQLDirective = graphqlModule.GraphQLDirective
-- local GraphQLSchema = graphqlModule.GraphQLSchema
-- local SchemaDefinitionNode = graphqlModule.SchemaDefinitionNode
-- local TypeDefinitionNode = graphqlModule.TypeDefinitionNode
-- local SchemaExtensionNode = graphqlModule.SchemaExtensionNode
-- local TypeExtensionNode = graphqlModule.TypeExtensionNode
-- local GraphQLNamedType = graphqlModule.GraphQLNamedType
-- local GraphQLField = graphqlModule.GraphQLField
-- local GraphQLInputField = graphqlModule.GraphQLInputField
-- local FieldDefinitionNode = graphqlModule.FieldDefinitionNode
-- local InputValueDefinitionNode = graphqlModule.InputValueDefinitionNode
-- local GraphQLFieldConfig = graphqlModule.GraphQLFieldConfig
-- local GraphQLInputFieldConfig = graphqlModule.GraphQLInputFieldConfig
-- local GraphQLSchemaConfig = graphqlModule.GraphQLSchemaConfig
-- local GraphQLObjectTypeConfig = graphqlModule.GraphQLObjectTypeConfig
-- local GraphQLInterfaceTypeConfig = graphqlModule.GraphQLInterfaceTypeConfig
-- local GraphQLUnionTypeConfig = graphqlModule.GraphQLUnionTypeConfig
-- local GraphQLScalarTypeConfig = graphqlModule.GraphQLScalarTypeConfig
-- local GraphQLEnumTypeConfig = graphqlModule.GraphQLEnumTypeConfig
-- local GraphQLInputObjectTypeConfig = graphqlModule.GraphQLInputObjectTypeConfig
-- local GraphQLEnumValue = graphqlModule.GraphQLEnumValue
-- local GraphQLEnumValueConfig = graphqlModule.GraphQLEnumValueConfig
-- local EnumValueDefinitionNode = graphqlModule.EnumValueDefinitionNode
type GraphQLDirective = graphqlModule.GraphQLDirective
type GraphQLSchema = graphqlModule.GraphQLSchema
type SchemaDefinitionNode = graphqlModule.SchemaDefinitionNode
type TypeDefinitionNode = graphqlModule.TypeDefinitionNode
type SchemaExtensionNode = graphqlModule.SchemaExtensionNode
type TypeExtensionNode = graphqlModule.TypeExtensionNode
type GraphQLNamedType = graphqlModule.GraphQLNamedType
type GraphQLField<TSource, TContext, TArgs = any> = graphqlModule.GraphQLField<TSource, TContext, TArgs>
type GraphQLInputField = graphqlModule.GraphQLInputField
type FieldDefinitionNode = graphqlModule.FieldDefinitionNode
type InputValueDefinitionNode = graphqlModule.InputValueDefinitionNode
type GraphQLFieldConfig<TSource, TContext, TArgs = { [string]: any }> = graphqlModule.GraphQLFieldConfig<
	TSource,
	TContext,
	TArgs
>
type GraphQLInputFieldConfig = graphqlModule.GraphQLInputFieldConfig
type GraphQLSchemaConfig = graphqlModule.GraphQLSchemaConfig
type GraphQLObjectTypeConfig<TSource, TContext> = graphqlModule.GraphQLObjectTypeConfig<TSource, TContext>
type GraphQLInterfaceTypeConfig<TSource, TContext> = graphqlModule.GraphQLInterfaceTypeConfig<TSource, TContext>
type GraphQLUnionTypeConfig<TSource, TContext> = graphqlModule.GraphQLUnionTypeConfig<TSource, TContext>
type GraphQLScalarTypeConfig<TInternal, TExternal> = graphqlModule.GraphQLScalarTypeConfig<TInternal, TExternal>
type GraphQLEnumTypeConfig = graphqlModule.GraphQLEnumTypeConfig
type GraphQLInputObjectTypeConfig = graphqlModule.GraphQLInputObjectTypeConfig
type GraphQLEnumValue = graphqlModule.GraphQLEnumValue
type GraphQLEnumValueConfig = graphqlModule.GraphQLEnumValueConfig
type EnumValueDefinitionNode = graphqlModule.EnumValueDefinitionNode
-- ROBLOX deviation END
-- ROBLOX deviation START: fix import
-- local getArgumentValues = require(script.Parent["getArgumentValues.js"]).getArgumentValues
local getArgumentValues = require(script.Parent.getArgumentValues).getArgumentValues
-- ROBLOX deviation END
-- ROBLOX deviation START: add additional types
type ReadonlyArray<T> = Array<T>
-- ROBLOX deviation END
export type DirectiveAnnotation = { name: string, args: Record<string, any>? }
type SchemaOrTypeNode =
	SchemaDefinitionNode
	| SchemaExtensionNode
	| TypeDefinitionNode
	| TypeExtensionNode
	| EnumValueDefinitionNode
	| FieldDefinitionNode
	| InputValueDefinitionNode
type DirectableGraphQLObject =
	GraphQLSchema
	| GraphQLSchemaConfig
	| GraphQLNamedType
	| GraphQLObjectTypeConfig<any, any>
	| GraphQLInterfaceTypeConfig<any, any>
	| GraphQLUnionTypeConfig<any, any>
	| GraphQLScalarTypeConfig<any, any>
	| GraphQLEnumTypeConfig
	| GraphQLEnumValue
	| GraphQLEnumValueConfig
	| GraphQLInputObjectTypeConfig
	| GraphQLField<any, any>
	| GraphQLInputField
	| GraphQLFieldConfig<any, any>
	| GraphQLInputFieldConfig
local function getDirectivesInExtensions(
	node: DirectableGraphQLObject,
	pathToDirectivesInExtensions_: Array<any>?
): Array<DirectiveAnnotation>
	local pathToDirectivesInExtensions: Array<any> = if pathToDirectivesInExtensions_ ~= nil
		then pathToDirectivesInExtensions_
		else { "directives" }
	return Array.reduce(
		pathToDirectivesInExtensions,
		function(acc, pathSegment)
			-- ROBLOX deviation START: workaround to address not being able to pass nil as initial value
			-- 		return if acc == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
			-- 			then acc
			-- 			else acc[tostring(pathSegment)]
			return (if acc == Object.None or acc == nil then nil else acc[pathSegment]) :: any
			-- ROBLOX deviation END
			-- ROBLOX deviation START: fix type cast and add return type
			-- end, (if typeof(node) == "table" then node.extensions else nil :: unknown) :: Array<DirectiveAnnotation>) --[[ ROBLOX CHECK: check if 'pathToDirectivesInExtensions' is an Array
		end,
		(
				(if typeof(node) == "table" and node.extensions then node.extensions else Object.None) :: unknown
			) :: Array<DirectiveAnnotation>
	) :: Array<DirectiveAnnotation>
	-- ROBLOX deviation END
end
exports.getDirectivesInExtensions = getDirectivesInExtensions
local function _getDirectiveInExtensions(
	directivesInExtensions: Array<DirectiveAnnotation>,
	directiveName: string
): Array<Record<string, any>> | nil
	local directiveInExtensions = Array.filter(directivesInExtensions, function(directiveAnnotation)
		return directiveAnnotation.name == directiveName
	end) --[[ ROBLOX CHECK: check if 'directivesInExtensions' is an Array ]]
	-- ROBLOX deviation START: fix getting array length
	-- if not Boolean.toJSBoolean(directiveInExtensions.length) then
	if #directiveInExtensions == 0 then
		-- ROBLOX deviation END
		return nil
	end
	return Array.map(directiveInExtensions, function(directive)
		return if directive.args ~= nil then directive.args else {}
		-- ROBLOX deviation START: cast return type
		-- end) --[[ ROBLOX CHECK: check if 'directiveInExtensions' is an Array ]]
	end) :: Array<Record<string, any>>
	-- ROBLOX deviation END
end
local function getDirectiveInExtensions(
	node: DirectableGraphQLObject,
	directiveName: string,
	pathToDirectivesInExtensions_: Array<any>?
): Array<Record<string, any>> | nil
	local pathToDirectivesInExtensions: Array<any> = if pathToDirectivesInExtensions_ ~= nil
		then pathToDirectivesInExtensions_
		else { "directives" }
	local directivesInExtensions = Array.reduce(
		pathToDirectivesInExtensions,
		function(acc, pathSegment)
			-- ROBLOX deviation START: workaround to address not being able to pass nil as initial value
			-- 			return if acc == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
			-- 				then acc
			-- 				else acc[tostring(pathSegment)]
			return (if acc == Object.None or acc == nil then nil else acc[pathSegment]) :: any
			-- ROBLOX deviation END
		end,
			-- ROBLOX deviation START: fix types and cast return type
			-- 		if typeof(node) == "table"
			-- 			then node.extensions
			-- 			else nil :: Record<string, Record<string, any> | Array<Record<string, any>>> | Array<DirectiveAnnotation> | nil
			-- 	) --[[ ROBLOX CHECK: check if 'pathToDirectivesInExtensions' is an Array ]]
		(
				if typeof(node) == "table" and node.extensions then node.extensions else Object.None
			) :: Record<string, Record<string, any> | Array<Record<string, any>>> | Array<DirectiveAnnotation> | nil
		-- ROBLOX deviation END
		-- ROBLOX deviation START: cast type
		-- ) --[[ ROBLOX CHECK: check if 'pathToDirectivesInExtensions' is an Array ]]
	)
	-- ROBLOX deviation END
	if directivesInExtensions == nil then
		return nil
	end
	if Boolean.toJSBoolean(Array.isArray(directivesInExtensions)) then
		-- ROBLOX deviation START: cast type
		-- return _getDirectiveInExtensions(directivesInExtensions, directiveName)
		return _getDirectiveInExtensions(directivesInExtensions :: Array<DirectiveAnnotation>, directiveName)
		-- ROBLOX deviation END
	end -- Support condensed format by converting to longer format
	-- The condensed format does not preserve ordering of directives when  repeatable directives are used.
	-- See https://github.com/ardatan/graphql-tools/issues/2534
	local reformattedDirectivesInExtensions: Array<DirectiveAnnotation> = {}
	-- ROBLOX deviation START: cast types
	-- for _, ref in Object.entries(directivesInExtensions) do
	for _, ref in
		Object.entries(directivesInExtensions :: Record<string, Record<string, any> | Array<Record<string, any>>>)
	do
		-- ROBLOX deviation END
		local name, argsOrArrayOfArgs = table.unpack(ref, 1, 2)
		if Boolean.toJSBoolean(Array.isArray(argsOrArrayOfArgs)) then
			-- ROBLOX deviation START: loosen type
			-- for _, args in argsOrArrayOfArgs do
			for _, args in (argsOrArrayOfArgs :: any) :: Array<any> do
				-- ROBLOX deviation END
				-- ROBLOX deviation START: cast type
				-- table.insert(reformattedDirectivesInExtensions, { name = name, args = args }) --[[ ROBLOX CHECK: check if 'reformattedDirectivesInExtensions' is an Array ]]
				table.insert(reformattedDirectivesInExtensions, { name = name, args = args } :: DirectiveAnnotation)
				-- ROBLOX deviation END
			end
		else
			-- ROBLOX deviation START: narrow types
			-- table.insert(reformattedDirectivesInExtensions, { name = name, args = argsOrArrayOfArgs }) --[[ ROBLOX CHECK: check if 'reformattedDirectivesInExtensions' is an Array ]]
			table.insert(
				reformattedDirectivesInExtensions,
				{ name = name :: string, args = argsOrArrayOfArgs :: Record<string, any> } :: DirectiveAnnotation
			)
			-- ROBLOX deviation END
		end
	end
	return _getDirectiveInExtensions(reformattedDirectivesInExtensions, directiveName)
end
exports.getDirectiveInExtensions = getDirectiveInExtensions
local function getDirectives(
	schema: GraphQLSchema,
	node: DirectableGraphQLObject,
	pathToDirectivesInExtensions_: Array<any>?
): Array<DirectiveAnnotation>
	local pathToDirectivesInExtensions: Array<any> = if pathToDirectivesInExtensions_ ~= nil
		then pathToDirectivesInExtensions_
		else { "directives" }
	local directivesInExtensions = getDirectivesInExtensions(node, pathToDirectivesInExtensions)
	if
		directivesInExtensions ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
		-- ROBLOX deviation START: fix getting array length
		-- and directivesInExtensions.length > 0 --[[ ROBLOX CHECK: operator '>' works only if either both arguments are strings or both are a number ]]
		and #directivesInExtensions > 0
		-- ROBLOX deviation END
	then
		return directivesInExtensions
	end
	local schemaDirectives: ReadonlyArray<GraphQLDirective> = if Boolean.toJSBoolean(
			if Boolean.toJSBoolean(schema) then schema.getDirectives else schema
		)
		then schema:getDirectives()
		else {}
	local schemaDirectiveMap = Array.reduce(schemaDirectives, function(schemaDirectiveMap, schemaDirective)
		schemaDirectiveMap[tostring(schemaDirective.name)] = schemaDirective
		return schemaDirectiveMap
	end, {}) --[[ ROBLOX CHECK: check if 'schemaDirectives' is an Array ]]
	local astNodes: Array<SchemaOrTypeNode> = {}
	if Boolean.toJSBoolean(node.astNode) then
		-- ROBLOX deviation START: loosen type
		-- table.insert(astNodes, node.astNode) --[[ ROBLOX CHECK: check if 'astNodes' is an Array ]]
		table.insert(astNodes, node.astNode :: any)
		-- ROBLOX deviation END
	end
	-- ROBLOX deviation START: loosen type
	-- 	if Boolean.toJSBoolean(Array.indexOf(Object.keys(node), "extensionASTNodes") ~= -1 and node.extensionASTNodes) then
	-- 		astNodes = Array.concat({}, Array.spread(astNodes), Array.spread(node.extensionASTNodes))
	if
		Array.indexOf(Object.keys(node), "extensionASTNodes") ~= -1
		and Boolean.toJSBoolean((node :: any).extensionASTNodes)
	then
		astNodes = Array.concat({}, astNodes, (node :: any).extensionASTNodes)
		-- ROBLOX deviation END
	end
	local result: Array<DirectiveAnnotation> = {}
	for _, astNode in astNodes do
		if Boolean.toJSBoolean(astNode.directives) then
			-- ROBLOX deviation START: cast type
			-- for _, directiveNode in astNode.directives do
			for _, directiveNode in astNode.directives :: Array<any> do
				-- ROBLOX deviation END
				local schemaDirective = schemaDirectiveMap[tostring(directiveNode.name.value)]
				if Boolean.toJSBoolean(schemaDirective) then
					table.insert(result, {
						name = directiveNode.name.value,
						args = getArgumentValues(schemaDirective, directiveNode),
					}) --[[ ROBLOX CHECK: check if 'result' is an Array ]]
				end
			end
		end
	end
	return result
end
exports.getDirectives = getDirectives
local function getDirective(
	schema: GraphQLSchema,
	node: DirectableGraphQLObject,
	directiveName: string,
	pathToDirectivesInExtensions_: Array<any>?
): Array<Record<string, any>> | nil
	local pathToDirectivesInExtensions: Array<any> = if pathToDirectivesInExtensions_ ~= nil
		then pathToDirectivesInExtensions_
		else { "directives" }
	local directiveInExtensions = getDirectiveInExtensions(node, directiveName, pathToDirectivesInExtensions)
	if
		directiveInExtensions ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
	then
		return directiveInExtensions
	end
	local schemaDirective = if Boolean.toJSBoolean(if Boolean.toJSBoolean(schema) then schema.getDirective else schema)
		then schema:getDirective(directiveName)
		else nil
	if
		schemaDirective == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
	then
		return nil
	end
	local astNodes: Array<SchemaOrTypeNode> = {}
	if Boolean.toJSBoolean(node.astNode) then
		-- ROBLOX deviation START: loosen type
		-- table.insert(astNodes, node.astNode) --[[ ROBLOX CHECK: check if 'astNodes' is an Array ]]
		table.insert(astNodes, node.astNode :: any)
		-- ROBLOX deviation END
	end
	-- ROBLOX deviation START: loosen type
	-- 	if Boolean.toJSBoolean(Array.indexOf(Object.keys(node), "extensionASTNodes") ~= -1 and node.extensionASTNodes) then
	-- 		astNodes = Array.concat({}, Array.spread(astNodes), Array.spread(node.extensionASTNodes))
	if
		Array.indexOf(Object.keys(node), "extensionASTNodes") ~= -1
		and Boolean.toJSBoolean((node :: any).extensionASTNodes)
	then
		astNodes = Array.concat({}, astNodes, (node :: any).extensionASTNodes)
		-- ROBLOX deviation END
	end
	local result: Array<Record<string, any>> = {}
	for _, astNode in astNodes do
		if Boolean.toJSBoolean(astNode.directives) then
			-- ROBLOX deviation START: cast type
			-- for _, directiveNode in astNode.directives do
			for _, directiveNode in astNode.directives :: Array<any> do
				-- ROBLOX deviation END
				if directiveNode.name.value == directiveName then
					-- ROBLOX deviation START: narrow type
					-- table.insert(result, getArgumentValues(schemaDirective, directiveNode)) --[[ ROBLOX CHECK: check if 'result' is an Array ]]
					table.insert(result, getArgumentValues(schemaDirective :: GraphQLDirective, directiveNode)) --[[ ROBLOX CHECK: check if 'result' is an Array ]]
					-- ROBLOX deviation END
				end
			end
		end
	end
	-- ROBLOX deviation START: fix getting array length
	-- if not Boolean.toJSBoolean(result.length) then
	if not Boolean.toJSBoolean(#result) then
		-- ROBLOX deviation END
		return nil
	end
	return result
end
exports.getDirective = getDirective
return exports
