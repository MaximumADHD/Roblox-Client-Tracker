-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/print-schema-with-directives.ts
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Error = LuauPolyfill.Error
local Map = LuauPolyfill.Map
local Object = LuauPolyfill.Object
type Array<T> = LuauPolyfill.Array<T>
type Record<K, T> = { [K]: T } --[[ ROBLOX TODO: TS 'Record' built-in type is not available in Luau ]]
local exports = {}
local graphqlModule = require(Packages.GraphQL)
-- ROBLOX deviation START: import as type instead of local
-- local GraphQLSchema = graphqlModule.GraphQLSchema
type GraphQLSchema = graphqlModule.GraphQLSchema
-- ROBLOX deviation END
-- ROBLOX deviation START: fix import
-- local print_ = graphqlModule.print_
local print_ = graphqlModule.print
-- ROBLOX deviation END
-- ROBLOX deviation START: import as type instead of local
-- local GraphQLNamedType = graphqlModule.GraphQLNamedType
type GraphQLNamedType = graphqlModule.GraphQLNamedType
-- ROBLOX deviation END
local Kind = graphqlModule.Kind
local isSpecifiedScalarType = graphqlModule.isSpecifiedScalarType
local isIntrospectionType = graphqlModule.isIntrospectionType
-- ROBLOX deviation START: import as types instead of locals
-- local TypeDefinitionNode = graphqlModule.TypeDefinitionNode
-- local DirectiveNode = graphqlModule.DirectiveNode
-- local FieldDefinitionNode = graphqlModule.FieldDefinitionNode
-- local InputValueDefinitionNode = graphqlModule.InputValueDefinitionNode
-- local GraphQLArgument = graphqlModule.GraphQLArgument
-- local EnumValueDefinitionNode = graphqlModule.EnumValueDefinitionNode
type TypeDefinitionNode = graphqlModule.TypeDefinitionNode
type DirectiveNode = graphqlModule.DirectiveNode
type FieldDefinitionNode = graphqlModule.FieldDefinitionNode
type InputValueDefinitionNode = graphqlModule.InputValueDefinitionNode
type GraphQLArgument = graphqlModule.GraphQLArgument
type EnumValueDefinitionNode = graphqlModule.EnumValueDefinitionNode
-- ROBLOX deviation END
local isSpecifiedDirective = graphqlModule.isSpecifiedDirective
-- ROBLOX deviation START: import as types instead of locals
-- local GraphQLDirective = graphqlModule.GraphQLDirective
-- local DirectiveDefinitionNode = graphqlModule.DirectiveDefinitionNode
type GraphQLDirective = graphqlModule.GraphQLDirective
type DirectiveDefinitionNode = graphqlModule.DirectiveDefinitionNode
-- ROBLOX deviation END
local astFromValue = graphqlModule.astFromValue
-- ROBLOX deviation START: import as types instead of locals
-- local ArgumentNode = graphqlModule.ArgumentNode
-- local SchemaDefinitionNode = graphqlModule.SchemaDefinitionNode
-- local OperationTypeDefinitionNode = graphqlModule.OperationTypeDefinitionNode
-- local SchemaExtensionNode = graphqlModule.SchemaExtensionNode
-- local OperationTypeNode = graphqlModule.OperationTypeNode
-- local GraphQLObjectType = graphqlModule.GraphQLObjectType
type ArgumentNode = graphqlModule.ArgumentNode
type SchemaDefinitionNode = graphqlModule.SchemaDefinitionNode
type OperationTypeDefinitionNode = graphqlModule.OperationTypeDefinitionNode
type SchemaExtensionNode = graphqlModule.SchemaExtensionNode
type OperationTypeNode = graphqlModule.OperationTypeNode
type GraphQLObjectType = graphqlModule.GraphQLObjectType
-- ROBLOX deviation END
local GraphQLDeprecatedDirective = graphqlModule.GraphQLDeprecatedDirective
local isObjectType = graphqlModule.isObjectType
-- ROBLOX deviation START: import as types instead of locals
-- local ObjectTypeDefinitionNode = graphqlModule.ObjectTypeDefinitionNode
-- local GraphQLField = graphqlModule.GraphQLField
-- local NamedTypeNode = graphqlModule.NamedTypeNode
-- local TypeExtensionNode = graphqlModule.TypeExtensionNode
-- local GraphQLInterfaceType = graphqlModule.GraphQLInterfaceType
-- local InterfaceTypeDefinitionNode = graphqlModule.InterfaceTypeDefinitionNode
type ObjectTypeDefinitionNode = graphqlModule.ObjectTypeDefinitionNode
type GraphQLField<TSource, TContext, TArgs = any> = graphqlModule.GraphQLField<TSource, TContext, TArgs>
type NamedTypeNode = graphqlModule.NamedTypeNode
type TypeExtensionNode = graphqlModule.TypeExtensionNode
type GraphQLInterfaceType = graphqlModule.GraphQLInterfaceType
type InterfaceTypeDefinitionNode = graphqlModule.InterfaceTypeDefinitionNode
-- ROBLOX deviation END
local isInterfaceType = graphqlModule.isInterfaceType
local isUnionType = graphqlModule.isUnionType
-- ROBLOX deviation START: import as types instead of locals
-- local UnionTypeDefinitionNode = graphqlModule.UnionTypeDefinitionNode
-- local GraphQLUnionType = graphqlModule.GraphQLUnionType
type UnionTypeDefinitionNode = graphqlModule.UnionTypeDefinitionNode
type GraphQLUnionType = graphqlModule.GraphQLUnionType
-- ROBLOX deviation END
local isInputObjectType = graphqlModule.isInputObjectType
-- ROBLOX deviation START: import as types instead of locals
-- local GraphQLInputObjectType = graphqlModule.GraphQLInputObjectType
-- local InputObjectTypeDefinitionNode = graphqlModule.InputObjectTypeDefinitionNode
-- local GraphQLInputField = graphqlModule.GraphQLInputField
type GraphQLInputObjectType = graphqlModule.GraphQLInputObjectType
type InputObjectTypeDefinitionNode = graphqlModule.InputObjectTypeDefinitionNode
type GraphQLInputField = graphqlModule.GraphQLInputField
-- ROBLOX deviation END
local isEnumType = graphqlModule.isEnumType
local isScalarType = graphqlModule.isScalarType
-- ROBLOX deviation START: import as types instead of locals
-- local GraphQLEnumType = graphqlModule.GraphQLEnumType
-- local GraphQLEnumValue = graphqlModule.GraphQLEnumValue
-- local EnumTypeDefinitionNode = graphqlModule.EnumTypeDefinitionNode
-- local GraphQLScalarType = graphqlModule.GraphQLScalarType
-- local ScalarTypeDefinitionNode = graphqlModule.ScalarTypeDefinitionNode
-- local DefinitionNode = graphqlModule.DefinitionNode
-- local DocumentNode = graphqlModule.DocumentNode
-- local StringValueNode = graphqlModule.StringValueNode
-- local typesJsModule = require(script.Parent["types.js"])
-- local GetDocumentNodeFromSchemaOptions = typesJsModule.GetDocumentNodeFromSchemaOptions
-- local PrintSchemaWithDirectivesOptions = typesJsModule.PrintSchemaWithDirectivesOptions
-- local Maybe = typesJsModule.Maybe
type GraphQLEnumType = graphqlModule.GraphQLEnumType
type GraphQLEnumValue = graphqlModule.GraphQLEnumValue
type EnumTypeDefinitionNode = graphqlModule.EnumTypeDefinitionNode
type GraphQLScalarType = graphqlModule.GraphQLScalarType
type ScalarTypeDefinitionNode = graphqlModule.ScalarTypeDefinitionNode
type DefinitionNode = graphqlModule.DefinitionNode
type DocumentNode = graphqlModule.DocumentNode
type StringValueNode = graphqlModule.StringValueNode
local typesJsModule = require(script.Parent.types)
type GetDocumentNodeFromSchemaOptions = typesJsModule.GetDocumentNodeFromSchemaOptions
type PrintSchemaWithDirectivesOptions = typesJsModule.PrintSchemaWithDirectivesOptions
type Maybe<T> = typesJsModule.Maybe<T>
-- ROBLOX deviation END
-- ROBLOX deviation START: fix imports
-- local astFromType = require(script.Parent["astFromType.js"]).astFromType
-- local getDirectivesInExtensions = require(script.Parent["get-directives.js"]).getDirectivesInExtensions
-- local astFromValueUntyped = require(script.Parent["astFromValueUntyped.js"]).astFromValueUntyped
-- local isSome = require(script.Parent["helpers.js"]).isSome
-- local getRootTypeMap = require(script.Parent["rootTypes.js"]).getRootTypeMap
local astFromType = require(script.Parent.astFromType).astFromType
local getDirectivesInExtensions = require(script.Parent["get-directives"]).getDirectivesInExtensions
local astFromValueUntyped = require(script.Parent.astFromValueUntyped).astFromValueUntyped
local isSome = require(script.Parent.helpers).isSome
local getRootTypeMap = require(script.Parent.rootTypes).getRootTypeMap
-- ROBLOX deviation END
-- ROBLOX deviation START: predeclare variables
local astFromSchema
local astFromDirective
local makeDirectiveNode
local getDirectiveNodes
local astFromObjectType
local makeDirectiveNodes
local astFromEnumValue
local makeDeprecatedDirective
local astFromInterfaceType
local astFromUnionType
local astFromInputObjectType
local astFromEnumType
local astFromScalarType
local astFromArg
local astFromField
local astFromInputField
-- ROBLOX deviation END
-- ROBLOX deviation START: add additional imports
type Object = LuauPolyfill.Object
local NULL = graphqlModule.NULL
type ReadonlyArray<T> = Array<T>
-- ROBLOX deviation END
local function getDocumentNodeFromSchema(
	schema: GraphQLSchema,
	options_: GetDocumentNodeFromSchemaOptions?
): DocumentNode
	local options: GetDocumentNodeFromSchemaOptions = if options_ ~= nil then options_ else {}
	local pathToDirectivesInExtensions = options.pathToDirectivesInExtensions
	local typesMap = schema:getTypeMap()
	local schemaNode = astFromSchema(schema, pathToDirectivesInExtensions)
	local definitions: Array<DefinitionNode> = if schemaNode
			~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
		then { schemaNode }
		else {}
	local directives = schema:getDirectives()
	for _, directive in directives do
		if Boolean.toJSBoolean(isSpecifiedDirective(directive)) then
			continue
		end
		table.insert(definitions, astFromDirective(directive, schema, pathToDirectivesInExtensions)) --[[ ROBLOX CHECK: check if 'definitions' is an Array ]]
	end
	-- ROBLOX deviation START: typesMap is a map
	-- 	for typeName in typesMap do
	-- 		local type_ = typesMap[tostring(typeName)]
	for _, ref in typesMap do
		local typeName = ref[1]
		local type_ = typesMap:get(typeName) :: GraphQLNamedType
		-- ROBLOX deviation END
		local isPredefinedScalar = isSpecifiedScalarType(type_)
		local isIntrospection = isIntrospectionType(type_)
		-- ROBLOX deviation START: simplify condition
		-- if Boolean.toJSBoolean(Boolean.toJSBoolean(isPredefinedScalar) and isPredefinedScalar or isIntrospection) then
		if isPredefinedScalar or isIntrospection then
			-- ROBLOX deviation END
			continue
		end
		if Boolean.toJSBoolean(isObjectType(type_)) then
			-- ROBLOX deviation START: cast type
			-- table.insert(definitions, astFromObjectType(type_, schema, pathToDirectivesInExtensions)) --[[ ROBLOX CHECK: check if 'definitions' is an Array ]]
			table.insert(
				definitions,
				astFromObjectType(type_ :: GraphQLObjectType, schema, pathToDirectivesInExtensions)
			)
			-- ROBLOX deviation END
		elseif Boolean.toJSBoolean(isInterfaceType(type_)) then
			-- ROBLOX deviation START: cast type
			-- table.insert(definitions, astFromInterfaceType(type_, schema, pathToDirectivesInExtensions)) --[[ ROBLOX CHECK: check if 'definitions' is an Array ]]
			table.insert(
				definitions,
				astFromInterfaceType(type_ :: GraphQLInterfaceType, schema, pathToDirectivesInExtensions)
			)
			-- ROBLOX deviation END
		elseif Boolean.toJSBoolean(isUnionType(type_)) then
			-- ROBLOX deviation START: cast type
			-- table.insert(definitions, astFromUnionType(type_, schema, pathToDirectivesInExtensions)) --[[ ROBLOX CHECK: check if 'definitions' is an Array ]]
			table.insert(definitions, astFromUnionType(type_ :: GraphQLUnionType, schema, pathToDirectivesInExtensions))
			-- ROBLOX deviation END
		elseif Boolean.toJSBoolean(isInputObjectType(type_)) then
			-- ROBLOX deviation START: cast type
			-- table.insert(definitions, astFromInputObjectType(type_, schema, pathToDirectivesInExtensions)) --[[ ROBLOX CHECK: check if 'definitions' is an Array ]]
			table.insert(
				definitions,
				astFromInputObjectType(type_ :: GraphQLInputObjectType, schema, pathToDirectivesInExtensions)
			)
			-- ROBLOX deviation END
		elseif Boolean.toJSBoolean(isEnumType(type_)) then
			-- ROBLOX deviation START: cast type
			-- table.insert(definitions, astFromEnumType(type_, schema, pathToDirectivesInExtensions)) --[[ ROBLOX CHECK: check if 'definitions' is an Array ]]
			table.insert(definitions, astFromEnumType(type_ :: GraphQLEnumType, schema, pathToDirectivesInExtensions))
			-- ROBLOX deviation END
		elseif Boolean.toJSBoolean(isScalarType(type_)) then
			-- ROBLOX deviation START: cast type
			-- table.insert(definitions, astFromScalarType(type_, schema, pathToDirectivesInExtensions)) --[[ ROBLOX CHECK: check if 'definitions' is an Array ]]
			table.insert(
				definitions,
				astFromScalarType(type_ :: GraphQLScalarType, schema, pathToDirectivesInExtensions)
			)
			-- ROBLOX deviation END
		else
			error(Error.new(("Unknown type %s."):format(tostring(type_))))
		end
	end
	return { kind = Kind.DOCUMENT, definitions = definitions }
end
exports.getDocumentNodeFromSchema = getDocumentNodeFromSchema -- this approach uses the default schema printer rather than a custom solution, so may be more backwards compatible
-- currently does not allow customization of printSchema options having to do with comments.
local function printSchemaWithDirectives(schema: GraphQLSchema, options_: PrintSchemaWithDirectivesOptions?): string
	local options: PrintSchemaWithDirectivesOptions = if options_ ~= nil then options_ else {}
	local documentNode = getDocumentNodeFromSchema(schema, options)
	return print_(documentNode)
end
exports.printSchemaWithDirectives = printSchemaWithDirectives
-- ROBLOX deviation START: predeclared function
-- local function astFromSchema(
function astFromSchema(
	-- ROBLOX deviation END
	schema: GraphQLSchema,
	pathToDirectivesInExtensions: Array<string>?
): SchemaDefinitionNode | SchemaExtensionNode | nil --[[ ROBLOX CHECK: verify if `null` wasn't used differently than `undefined` ]]
	-- ROBLOX deviation START: deviation START: set to Object.None instead of nil, otherwise values are not set properly
	-- 	local operationTypeMap = Map.new({ { "query", nil }, { "mutation", nil }, {
	-- 		"subscription",
	-- 		nil,
	-- 	} } :: Array<Array<OperationTypeNode | OperationTypeDefinitionNode | nil>>)
	local operationTypeMap = Map.new({
		{ "query", Object.None },
		{ "mutation", Object.None },
		{ "subscription", Object.None },
	} :: Array<Array<OperationTypeNode | OperationTypeDefinitionNode | nil>>)
	-- ROBLOX deviation END
	local nodes: Array<SchemaDefinitionNode | SchemaExtensionNode> = {}
	if
		schema.astNode ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
	then
		table.insert(nodes, schema.astNode) --[[ ROBLOX CHECK: check if 'nodes' is an Array ]]
	end
	if
		schema.extensionASTNodes ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
	then
		for _, extensionASTNode in schema.extensionASTNodes do
			table.insert(nodes, extensionASTNode) --[[ ROBLOX CHECK: check if 'nodes' is an Array ]]
		end
	end
	for _, node in nodes do
		if Boolean.toJSBoolean(node.operationTypes) then
			-- ROBLOX deviation START: additional cast needed
			-- for _, operationTypeDefinitionNode in node.operationTypes do
			for _, operationTypeDefinitionNode in node.operationTypes :: Array<OperationTypeDefinitionNode> do
				-- ROBLOX deviation END
				operationTypeMap:set(operationTypeDefinitionNode.operation, operationTypeDefinitionNode)
			end
		end
	end
	local rootTypeMap = getRootTypeMap(schema)
	for _, ref in operationTypeMap do
		local operationTypeNode, operationTypeDefinitionNode = table.unpack(ref, 1, 2)
		local rootType = rootTypeMap:get(operationTypeNode :: OperationTypeNode)
		if
			rootType ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
		then
			local rootTypeAST = astFromType(rootType)
			if
				-- ROBLOX deviation START: additional comparison to Object.None
				-- operationTypeDefinitionNode ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
				operationTypeDefinitionNode ~= nil and operationTypeDefinitionNode ~= Object.None
				-- ROBLOX deviation END
			then
				(operationTypeDefinitionNode :: any).type = rootTypeAST
			else
				operationTypeMap:set(operationTypeNode, {
					kind = Kind.OPERATION_TYPE_DEFINITION,
					operation = operationTypeNode,
					type = rootTypeAST,
				} :: OperationTypeDefinitionNode)
			end
		end
	end
	-- ROBLOX deviation START: Array.spread not needed
	-- local operationTypes = Array.filter(Array.concat({}, Array.spread(operationTypeMap:values())), isSome)
	local operationTypes = Array.filter(Array.concat({}, operationTypeMap:values()), isSome)
	-- ROBLOX deviation END
	local directives = getDirectiveNodes(schema, schema, pathToDirectivesInExtensions)
	-- ROBLOX deviation START: use proper length operator
	-- if not Boolean.toJSBoolean(operationTypes.length) and not Boolean.toJSBoolean(directives.length) then
	if not Boolean.toJSBoolean(#operationTypes) and not Boolean.toJSBoolean(#directives) then
		-- ROBLOX deviation END
		return nil
	end
	local schemaNode: SchemaDefinitionNode | SchemaExtensionNode = {
		kind = if operationTypes ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
			then Kind.SCHEMA_DEFINITION
			else Kind.SCHEMA_EXTENSION,
		operationTypes = operationTypes,
		-- ConstXNode has been introduced in v16 but it is not compatible with XNode so we do `as any` for backwards compatibility
		directives = directives :: any,
		-- ROBLOX deviation START: cast necessary
		-- }; -- This code is so weird because it needs to support GraphQL.js 14
	} :: any;
	-- ROBLOX deviation END
	-- In GraphQL.js 14 there is no `description` value on schemaNode
	((schemaNode :: unknown) :: { description: StringValueNode? }).description = if Boolean.toJSBoolean((function()
			local ref = if typeof((schema.astNode :: unknown) :: { description: string }) == "table"
				then ((schema.astNode :: unknown) :: { description: string }).description
				else nil
			return if ref ~= nil then ref else ((schema :: unknown) :: { description: string }).description ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
		end)())
		then {
			kind = Kind.STRING,
			value = ((schema :: unknown) :: { description: string }).description,
			block = true,
		}
		else nil
	return schemaNode
end
exports.astFromSchema = astFromSchema
-- ROBLOX deviation START: predeclared function
-- local function astFromDirective(
function astFromDirective(
	-- ROBLOX deviation END
	directive: GraphQLDirective,
	schema: GraphQLSchema?,
	pathToDirectivesInExtensions: Array<string>?
): DirectiveDefinitionNode
	local refProp0 = Kind.DIRECTIVE_DEFINITION
	-- ROBLOX deviation START: fix shadowed variables
	-- 	local ref = if typeof(directive.astNode) == "table" then directive.astNode.description else nil
	-- 	local refProp1 = if ref ~= nil
	-- 		then ref
	local ref0 = if typeof(directive.astNode) == "table" then directive.astNode.description else nil
	local refProp1 = if ref0 ~= nil
		then ref0
		-- ROBLOX deviation END
		else if Boolean.toJSBoolean(directive.description)
			then { kind = Kind.STRING, value = directive.description }
			else nil
	local refProp2 = { kind = Kind.NAME, value = directive.name }
	-- ROBLOX deviation START: fix shadowed variables
	-- 	local ref = if typeof(directive.args) == "table" then directive.args.map else nil
	-- 	local refProp3 = if ref ~= nil
	-- 		then ref(function(arg)
	local refProp3 = if typeof(directive.args) == "table"
		then Array.map(directive.args, function(arg)
			-- ROBLOX deviation END
			return astFromArg(arg, schema, pathToDirectivesInExtensions)
		end)
		else nil
	local refProp4 = directive.isRepeatable
	-- ROBLOX deviation START: fix shadowed variables
	-- 	local ref = if typeof(directive.locations) == "table" then directive.locations.map else nil
	-- 	local ref = if ref ~= nil
	-- 		then ref(function(location)
	local ref1 = if typeof(directive.locations) == "table"
		then Array.map(directive.locations, function(location)
			-- ROBLOX deviation END
			return { kind = Kind.NAME, value = location }
		end)
		else nil
	-- ROBLOX deviation START: fix shadowed variables
	-- local refProp5 = Boolean.toJSBoolean(ref) and ref or {}
	local refProp5 = Boolean.toJSBoolean(ref1) and ref1 or {}
	-- ROBLOX deviation END
	return {
		-- ROBLOX deviation START: cast types
		-- 		kind = refProp0,
		-- 		description = refProp1,
		kind = refProp0 :: any,
		description = refProp1 :: StringValueNode?,
		-- ROBLOX deviation END
		name = refProp2,
		arguments = refProp3,
		repeatable = refProp4,
		-- ROBLOX deviation START: cast type
		-- locations = refProp5,
		locations = refProp5 :: Array<any>,
		-- ROBLOX deviation END
	}
end
exports.astFromDirective = astFromDirective
-- ROBLOX deviation START: predeclared function
-- local function getDirectiveNodes(
function getDirectiveNodes(
	-- ROBLOX deviation END
	entity: GraphQLSchema | GraphQLNamedType | GraphQLEnumValue,
	schema: GraphQLSchema,
	pathToDirectivesInExtensions: Array<string>?
): Array<DirectiveNode>
	local directivesInExtensions = getDirectivesInExtensions(entity, pathToDirectivesInExtensions)
	local nodes: Array<
		SchemaDefinitionNode | SchemaExtensionNode | TypeDefinitionNode | TypeExtensionNode | EnumValueDefinitionNode
	> =
		{}
	if
		entity.astNode ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
	then
		table.insert(nodes, entity.astNode) --[[ ROBLOX CHECK: check if 'nodes' is an Array ]]
	end
	if
		Array.indexOf(Object.keys(entity), "extensionASTNodes") ~= -1
		-- ROBLOX deviation START: cast to any
		-- and entity.extensionASTNodes ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
		and (entity :: any).extensionASTNodes ~= nil
		-- ROBLOX deviation END
	then
		-- ROBLOX deviation START: cast to any
		-- nodes = Array.concat(nodes, entity.extensionASTNodes) --[[ ROBLOX CHECK: check if 'nodes' is an Array ]]
		nodes = Array.concat(nodes, (entity :: any).extensionASTNodes)
		-- ROBLOX deviation END
	end
	local directives: Array<DirectiveNode>
	if
		directivesInExtensions ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
	then
		-- ROBLOX deviation START: cast to any
		-- directives = makeDirectiveNodes(schema, directivesInExtensions)
		directives = makeDirectiveNodes(schema, directivesInExtensions :: any)
		-- ROBLOX deviation END
	else
		directives = {}
		for _, node in nodes do
			if Boolean.toJSBoolean(node.directives) then
				-- ROBLOX deviation START: fix implementation
				-- 				table.insert(
				-- 					directives,
				-- 					error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: SpreadElement ]] --[[ ...node.directives ]]
				-- 				) --[[ ROBLOX CHECK: check if 'directives' is an Array ]]
				directives = Array.concat(directives, node.directives)
				-- ROBLOX deviation END
			end
		end
	end
	return directives
end
exports.getDirectiveNodes = getDirectiveNodes
local function getDeprecatableDirectiveNodes(
	entity: GraphQLArgument | GraphQLField<any, any> | GraphQLInputField | GraphQLEnumValue,
	schema: GraphQLSchema?,
	pathToDirectivesInExtensions: Array<string>?
): Array<DirectiveNode>
	local directiveNodesBesidesDeprecated: Array<DirectiveNode> = {}
	local deprecatedDirectiveNode: Maybe<DirectiveNode> = nil
	local directivesInExtensions = getDirectivesInExtensions(entity, pathToDirectivesInExtensions)
	local directives: Maybe<ReadonlyArray<DirectiveNode>>
	if
		directivesInExtensions ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
	then
		-- ROBLOX deviation START: cast to any
		-- directives = makeDirectiveNodes(schema, directivesInExtensions)
		directives = makeDirectiveNodes(schema, directivesInExtensions :: any)
		-- ROBLOX deviation END
	else
		directives = if typeof(entity.astNode) == "table" then entity.astNode.directives else nil
	end
	if
		directives ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
	then
		directiveNodesBesidesDeprecated = Array.filter(directives, function(directive)
			return directive.name.value ~= "deprecated"
		end) --[[ ROBLOX CHECK: check if 'directives' is an Array ]]
		if
			((entity :: unknown) :: { deprecationReason: string }).deprecationReason
			~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
		then
			deprecatedDirectiveNode = if typeof(Array.filter(directives, function(directive)
					return directive.name.value == "deprecated"
				end)) == "table"
				then Array
					.filter(directives, function(directive)
						return directive.name.value == "deprecated"
					end) --[[ ROBLOX CHECK: check if 'directives' is an Array ]]
					-- ROBLOX deviation START: adjust index
					-- [0]
					[1]
				-- ROBLOX deviation END
				else nil
		end
	end
	if
		((entity :: unknown) :: { deprecationReason: string }).deprecationReason ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
		and deprecatedDirectiveNode == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
	then
		deprecatedDirectiveNode =
			makeDeprecatedDirective(((entity :: unknown) :: { deprecationReason: string }).deprecationReason)
	end
	return if deprecatedDirectiveNode == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
		then directiveNodesBesidesDeprecated
		else Array.concat({ deprecatedDirectiveNode }, directiveNodesBesidesDeprecated)
end
exports.getDeprecatableDirectiveNodes = getDeprecatableDirectiveNodes
-- ROBLOX deviation START: predeclared function
-- local function astFromArg(
function astFromArg(
	-- ROBLOX deviation END
	arg: GraphQLArgument,
	schema: GraphQLSchema?,
	pathToDirectivesInExtensions: Array<string>?
): InputValueDefinitionNode
	local refProp0 = Kind.INPUT_VALUE_DEFINITION
	local ref = if typeof(arg.astNode) == "table" then arg.astNode.description else nil
	local refProp1 = if ref ~= nil
		then ref
		else if Boolean.toJSBoolean(arg.description)
			then { kind = Kind.STRING, value = arg.description, block = true }
			else nil
	return {
		-- ROBLOX deviation START: cast to any
		-- 		kind = refProp0,
		-- 		description = refProp1,
		kind = refProp0 :: any,
		description = refProp1 :: any,
		-- ROBLOX deviation END
		name = { kind = Kind.NAME, value = arg.name },
		type = astFromType(arg.type),
		-- ConstXNode has been introduced in v16 but it is not compatible with XNode so we do `as any` for backwards compatibility
		-- ROBLOX deviation START: simplify
		-- 		defaultValue = if arg.defaultValue ~= nil
		-- 			then (function()
		-- 				local ref = astFromValue(arg.defaultValue, arg.type)
		-- 				return if ref ~= nil then ref else nil
		-- 			end)()
		-- 			else nil :: any,
		defaultValue = if arg.defaultValue ~= nil then astFromValue(arg.defaultValue, arg.type) else nil :: any,
		-- ROBLOX deviation END
		directives = getDeprecatableDirectiveNodes(arg, schema, pathToDirectivesInExtensions) :: any,
	}
end
exports.astFromArg = astFromArg
-- ROBLOX deviation START: predeclared function
-- local function astFromObjectType(
function astFromObjectType(
	-- ROBLOX deviation END
	-- ROBLOX deviation START: explicit type
	-- type_,
	type_: GraphQLObjectType,
	-- ROBLOX deviation END
	schema: GraphQLSchema,
	pathToDirectivesInExtensions: Array<string>?
): ObjectTypeDefinitionNode
	local refProp0 = Kind.OBJECT_TYPE_DEFINITION
	local ref = if typeof(type_.astNode) == "table" then type_.astNode.description else nil
	local refProp1 = if ref ~= nil
		then ref
		else if Boolean.toJSBoolean(type_.description)
			then { kind = Kind.STRING, value = type_.description, block = true }
			else nil
	return {
		-- ROBLOX deviation START: cast to any
		-- 		kind = refProp0,
		-- 		description = refProp1,
		kind = refProp0 :: any,
		description = refProp1 :: any,
		-- ROBLOX deviation END
		name = { kind = Kind.NAME, value = type_.name },
		-- ROBLOX deviation START: getFields returns a Map
		-- fields = Array.map(Object.values(type_:getFields()), function(field)
		fields = Array.map(type_:getFields():values(), function(field)
			-- ROBLOX deviation END
			return astFromField(field, schema, pathToDirectivesInExtensions)
		end),--[[ ROBLOX CHECK: check if 'Object.values(type.getFields())' is an Array ]]
		interfaces = Array.map(Object.values(type_:getInterfaces()), function(iFace)
			return astFromType(iFace) :: NamedTypeNode
		end),--[[ ROBLOX CHECK: check if 'Object.values(type.getInterfaces())' is an Array ]]
		directives = getDirectiveNodes(type_, schema, pathToDirectivesInExtensions) :: any,
	}
end
exports.astFromObjectType = astFromObjectType
-- ROBLOX deviation START: predeclared function
-- local function astFromInterfaceType(
function astFromInterfaceType(
	-- ROBLOX deviation END
	-- ROBLOX deviation START: explicit type
	-- type_,
	type_: GraphQLInterfaceType,
	-- ROBLOX deviation END
	schema: GraphQLSchema,
	pathToDirectivesInExtensions: Array<string>?
): InterfaceTypeDefinitionNode
	local refProp0 = Kind.INTERFACE_TYPE_DEFINITION
	local ref = if typeof(type_.astNode) == "table" then type_.astNode.description else nil
	local refProp1 = if ref ~= nil
		then ref
		else if Boolean.toJSBoolean(type_.description)
			then { kind = Kind.STRING, value = type_.description, block = true }
			else nil
	local node: InterfaceTypeDefinitionNode = {
		-- ROBLOX deviation START: cast to any
		-- 		kind = refProp0,
		-- 		description = refProp1,
		kind = refProp0 :: any,
		description = refProp1 :: any,
		-- ROBLOX deviation END
		name = { kind = Kind.NAME, value = type_.name },
		-- ROBLOX deviation START: getFields returns a Map
		-- fields = Array.map(Object.values(type_:getFields()), function(field)
		fields = Array.map(type_:getFields():values(), function(field)
			-- ROBLOX deviation END
			return astFromField(field, schema, pathToDirectivesInExtensions)
		end),--[[ ROBLOX CHECK: check if 'Object.values(type.getFields())' is an Array ]]
		directives = getDirectiveNodes(type_, schema, pathToDirectivesInExtensions) :: any,
	}
	-- ROBLOX deviation START: fix implementation
	-- if Array.indexOf(Object.keys(type_), "getInterfaces") ~= -1 then
	if (type_ :: Object).getInterfaces ~= nil then
		-- ROBLOX deviation END
		((node :: unknown) :: { interfaces: Array<NamedTypeNode> }).interfaces = Array.map(
			Object.values(((type_ :: unknown) :: GraphQLObjectType):getInterfaces()),
			function(iFace)
				return astFromType(iFace) :: NamedTypeNode
			end
		) --[[ ROBLOX CHECK: check if 'Object.values(((type as unknown) as GraphQLObjectType).getInterfaces())' is an Array ]]
	end
	return node
end
exports.astFromInterfaceType = astFromInterfaceType
-- ROBLOX deviation START: predeclared function
-- local function astFromUnionType(
function astFromUnionType(
	-- ROBLOX deviation END
	-- ROBLOX deviation START: explicit type
	-- type_,
	type_: GraphQLUnionType,
	-- ROBLOX deviation END
	schema: GraphQLSchema,
	pathToDirectivesInExtensions: Array<string>?
): UnionTypeDefinitionNode
	local refProp0 = Kind.UNION_TYPE_DEFINITION
	local ref = if typeof(type_.astNode) == "table" then type_.astNode.description else nil
	local refProp1 = if ref ~= nil
		then ref
		else if Boolean.toJSBoolean(type_.description)
			then { kind = Kind.STRING, value = type_.description, block = true }
			else nil
	return {
		-- ROBLOX deviation START: cast types
		-- 		kind = refProp0,
		-- 		description = refProp1,
		-- 		name = { kind = Kind.NAME, value = type_.name },
		kind = refProp0 :: any,
		description = refProp1 :: any,
		name = { kind = Kind.NAME, value = type_.name :: string },
		-- ROBLOX deviation END
		-- ConstXNode has been introduced in v16 but it is not compatible with XNode so we do `as any` for backwards compatibility
		directives = getDirectiveNodes(type_, schema, pathToDirectivesInExtensions) :: any,
		types = Array.map(type_:getTypes(), function(type_)
			return astFromType(type_) :: NamedTypeNode
		end),--[[ ROBLOX CHECK: check if 'type.getTypes()' is an Array ]]
	}
end
exports.astFromUnionType = astFromUnionType
-- ROBLOX deviation START: predeclared function
-- local function astFromInputObjectType(
function astFromInputObjectType(
	-- ROBLOX deviation END
	-- ROBLOX deviation START: explicit type
	-- type_,
	type_: GraphQLInputObjectType,
	-- ROBLOX deviation END
	schema: GraphQLSchema,
	pathToDirectivesInExtensions: Array<string>?
): InputObjectTypeDefinitionNode
	local refProp0 = Kind.INPUT_OBJECT_TYPE_DEFINITION
	local ref = if typeof(type_.astNode) == "table" then type_.astNode.description else nil
	local refProp1 = if ref ~= nil
		then ref
		else if Boolean.toJSBoolean(type_.description)
			then { kind = Kind.STRING, value = type_.description, block = true }
			else nil
	return {
		-- ROBLOX deviation START: cast types
		-- 		kind = refProp0,
		-- 		description = refProp1,
		kind = refProp0 :: any,
		description = refProp1 :: any,
		name = { kind = Kind.NAME, value = type_.name },
		-- ROBLOX deviation END
		-- ROBLOX deviation START: getFields returns a Map
		-- fields = Array.map(Object.values(type_:getFields()), function(field)
		fields = Array.map(type_:getFields():values(), function(field)
			-- ROBLOX deviation END
			return astFromInputField(field, schema, pathToDirectivesInExtensions)
		end),--[[ ROBLOX CHECK: check if 'Object.values(type.getFields())' is an Array ]]
		-- ConstXNode has been introduced in v16 but it is not compatible with XNode so we do `as any` for backwards compatibility
		directives = getDirectiveNodes(type_, schema, pathToDirectivesInExtensions) :: any,
	}
end
exports.astFromInputObjectType = astFromInputObjectType
-- ROBLOX deviation START: predeclared function
-- local function astFromEnumType(
function astFromEnumType(
	-- ROBLOX deviation END
	-- ROBLOX deviation START: explicit type
	-- type_,
	type_: GraphQLEnumType,
	-- ROBLOX deviation END
	schema: GraphQLSchema,
	pathToDirectivesInExtensions: Array<string>?
): EnumTypeDefinitionNode
	local refProp0 = Kind.ENUM_TYPE_DEFINITION
	local ref = if typeof(type_.astNode) == "table" then type_.astNode.description else nil
	local refProp1 = if ref ~= nil
		then ref
		else if Boolean.toJSBoolean(type_.description)
			then { kind = Kind.STRING, value = type_.description, block = true }
			else nil
	return {
		-- ROBLOX deviation START: cast to any
		-- 		kind = refProp0,
		-- 		description = refProp1,
		kind = refProp0 :: any,
		description = refProp1 :: any,
		-- ROBLOX deviation END
		name = { kind = Kind.NAME, value = type_.name },
		values = Array.map(Object.values(type_:getValues()), function(value)
			return astFromEnumValue(value, schema, pathToDirectivesInExtensions)
		end),--[[ ROBLOX CHECK: check if 'Object.values(type.getValues())' is an Array ]]
		-- ConstXNode has been introduced in v16 but it is not compatible with XNode so we do `as any` for backwards compatibility
		directives = getDirectiveNodes(type_, schema, pathToDirectivesInExtensions) :: any,
	}
end
exports.astFromEnumType = astFromEnumType
-- ROBLOX deviation START: predeclared function
-- local function astFromScalarType(
function astFromScalarType(
	-- ROBLOX deviation END
	-- ROBLOX deviation START: explicit type
	-- 	type_,
	type_: GraphQLScalarType,
	-- ROBLOX deviation END
	schema: GraphQLSchema,
	pathToDirectivesInExtensions: Array<string>?
): ScalarTypeDefinitionNode
	local directivesInExtensions = getDirectivesInExtensions(type_, pathToDirectivesInExtensions)
	local directives: Array<DirectiveNode> = if Boolean.toJSBoolean(directivesInExtensions)
		-- ROBLOX deviation START: simplify
		-- 		then makeDirectiveNodes(schema, directivesInExtensions)
		-- 		else (function()
		-- 			local ref = if typeof(type_.astNode) == "table"
		-- 				then type_.astNode.directives
		-- 				else nil :: Array<DirectiveNode>
		-- 			return Boolean.toJSBoolean(ref) and ref or {}
		-- 		end)()
		then makeDirectiveNodes(schema, directivesInExtensions :: any)
		else (
			(if typeof(type_.astNode) == "table" then type_.astNode.directives else nil) or {}
		) :: Array<DirectiveNode>
	-- ROBLOX deviation END
	local specifiedByValue = Boolean.toJSBoolean((type_ :: any)["specifiedByUrl"]) and (type_ :: any)["specifiedByUrl"]
		or (type_ :: any)["specifiedByURL"] :: string
	if
		Boolean.toJSBoolean(if Boolean.toJSBoolean(specifiedByValue)
			then not Boolean.toJSBoolean(Array.some(directives, function(directiveNode)
				return directiveNode.name.value == "specifiedBy"
			end) --[[ ROBLOX CHECK: check if 'directives' is an Array ]])
			else specifiedByValue)
	then
		local specifiedByArgs = { url = specifiedByValue }
		table.insert(directives, makeDirectiveNode("specifiedBy", specifiedByArgs)) --[[ ROBLOX CHECK: check if 'directives' is an Array ]]
	end
	local refProp0 = Kind.SCALAR_TYPE_DEFINITION
	local ref = if typeof(type_.astNode) == "table" then type_.astNode.description else nil
	local refProp1 = if ref ~= nil
		then ref
		else if Boolean.toJSBoolean(type_.description)
			then { kind = Kind.STRING, value = type_.description, block = true }
			else nil
	return {
		-- ROBLOX deviation START: cast to any
		-- 		kind = refProp0,
		-- 		description = refProp1,
		kind = refProp0 :: any,
		description = refProp1 :: any,
		-- ROBLOX deviation END
		name = { kind = Kind.NAME, value = type_.name },
		-- ConstXNode has been introduced in v16 but it is not compatible with XNode so we do `as any` for backwards compatibility
		directives = directives :: any,
	}
end
exports.astFromScalarType = astFromScalarType
-- ROBLOX deviation START: predeclared function
-- local function astFromField(
function astFromField(
	-- ROBLOX deviation END
	field: GraphQLField<any, any>,
	schema: GraphQLSchema,
	pathToDirectivesInExtensions: Array<string>?
): FieldDefinitionNode
	local refProp0 = Kind.FIELD_DEFINITION
	local ref = if typeof(field.astNode) == "table" then field.astNode.description else nil
	local refProp1 = if ref ~= nil
		then ref
		else if Boolean.toJSBoolean(field.description)
			then { kind = Kind.STRING, value = field.description, block = true }
			else nil
	return {
		-- ROBLOX deviation START: cast to any
		-- 		kind = refProp0,
		-- 		description = refProp1,
		kind = refProp0 :: any,
		description = refProp1 :: any,
		-- ROBLOX deviation END
		name = { kind = Kind.NAME, value = field.name },
		arguments = Array.map(field.args, function(arg)
			return astFromArg(arg, schema, pathToDirectivesInExtensions)
		end),--[[ ROBLOX CHECK: check if 'field.args' is an Array ]]
		type = astFromType(field.type),
		-- ConstXNode has been introduced in v16 but it is not compatible with XNode so we do `as any` for backwards compatibility
		directives = getDeprecatableDirectiveNodes(field, schema, pathToDirectivesInExtensions) :: any,
	}
end
exports.astFromField = astFromField
-- ROBLOX deviation START: predeclared function
-- local function astFromInputField(
function astFromInputField(
	-- ROBLOX deviation END
	field: GraphQLInputField,
	schema: GraphQLSchema,
	pathToDirectivesInExtensions: Array<string>?
): InputValueDefinitionNode
	local refProp0 = Kind.INPUT_VALUE_DEFINITION
	local ref = if typeof(field.astNode) == "table" then field.astNode.description else nil
	local refProp1 = if ref ~= nil
		then ref
		else if Boolean.toJSBoolean(field.description)
			then { kind = Kind.STRING, value = field.description, block = true }
			else nil
	local refProp2 = { kind = Kind.NAME, value = field.name }
	local refProp3 = astFromType(field.type)
	local refProp4 = getDeprecatableDirectiveNodes(field, schema, pathToDirectivesInExtensions) :: any
	-- ROBLOX deviation START: fix shadowed variable
	-- 	local ref = astFromValue(field.defaultValue, field.type)
	-- 	local refProp5 = if ref ~= nil then ref else nil :: any
	local ref1 = astFromValue(field.defaultValue, field.type)
	local refProp5 = if ref1 ~= nil and ref1 ~= NULL then ref1 else nil :: any
	-- ROBLOX deviation END
	return {
		-- ROBLOX deviation START: cast to any
		-- 		kind = refProp0,
		-- 		description = refProp1,
		kind = refProp0 :: any,
		description = refProp1 :: any,
		-- ROBLOX deviation END
		name = refProp2,
		type = refProp3,
		-- ConstXNode has been introduced in v16 but it is not compatible with XNode so we do `as any` for backwards compatibility
		directives = refProp4,
		defaultValue = refProp5,
	}
end
exports.astFromInputField = astFromInputField
-- ROBLOX deviation START: predeclared function
-- local function astFromEnumValue(
function astFromEnumValue(
	-- ROBLOX deviation END
	value: GraphQLEnumValue,
	schema: GraphQLSchema,
	pathToDirectivesInExtensions: Array<string>?
): EnumValueDefinitionNode
	local refProp0 = Kind.ENUM_VALUE_DEFINITION
	local ref = if typeof(value.astNode) == "table" then value.astNode.description else nil
	local refProp1 = if ref ~= nil
		then ref
		else if Boolean.toJSBoolean(value.description)
			then { kind = Kind.STRING, value = value.description, block = true }
			else nil
	return {
		-- ROBLOX deviation START: cast to any
		-- 		kind = refProp0,
		-- 		description = refProp1,
		kind = refProp0 :: any,
		description = refProp1 :: any,
		-- ROBLOX deviation END
		name = { kind = Kind.NAME, value = value.name },
		-- ConstXNode has been introduced in v16 but it is not compatible with XNode so we do `as any` for backwards compatibility
		directives = getDeprecatableDirectiveNodes(value, schema, pathToDirectivesInExtensions) :: any,
	}
end
exports.astFromEnumValue = astFromEnumValue
-- ROBLOX deviation START: predeclared function
-- local function makeDeprecatedDirective(deprecationReason: string): DirectiveNode
function makeDeprecatedDirective(deprecationReason: string): DirectiveNode
	-- ROBLOX deviation END
	return makeDirectiveNode("deprecated", { reason = deprecationReason }, GraphQLDeprecatedDirective)
end
exports.makeDeprecatedDirective = makeDeprecatedDirective
-- ROBLOX deviation START: predeclared function
-- local function makeDirectiveNode(
function makeDirectiveNode(
	-- ROBLOX deviation END
	name: string,
	args: Record<string, any>,
	directive: Maybe<GraphQLDirective>?
): DirectiveNode
	local directiveArguments: Array<ArgumentNode> = {}
	if
		directive ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
	then
		for _, arg in directive.args do
			local argName = arg.name
			local argValue = args[tostring(argName)]
			if argValue ~= nil then
				local value = astFromValue(argValue, arg.type)
				if Boolean.toJSBoolean(value) then
					table.insert(directiveArguments, {
						kind = Kind.ARGUMENT,
						name = { kind = Kind.NAME, value = argName },
						value = value,
						-- ROBLOX deviation START: cast necessary
						-- }) --[[ ROBLOX CHECK: check if 'directiveArguments' is an Array ]]
					} :: ArgumentNode)
					-- ROBLOX deviation END
				end
			end
		end
	else
		for argName in args do
			local argValue = args[tostring(argName)]
			local value = astFromValueUntyped(argValue)
			if Boolean.toJSBoolean(value) then
				table.insert(directiveArguments, {
					kind = Kind.ARGUMENT,
					name = { kind = Kind.NAME, value = argName },
					value = value,
					-- ROBLOX deviation START: cast necessary
					-- }) --[[ ROBLOX CHECK: check if 'directiveArguments' is an Array ]]
				} :: ArgumentNode)
				-- ROBLOX deviation END
			end
		end
	end
	return {
		kind = Kind.DIRECTIVE,
		name = { kind = Kind.NAME, value = name },
		arguments = directiveArguments,
	}
end
exports.makeDirectiveNode = makeDirectiveNode
-- ROBLOX deviation START: predeclared function
-- local function makeDirectiveNodes(
function makeDirectiveNodes(
	-- ROBLOX deviation END
	schema: Maybe<GraphQLSchema>,
	directiveValues: Record<string, any>
): Array<DirectiveNode>
	local directiveNodes: Array<DirectiveNode> = {}
	for directiveName in directiveValues do
		local arrayOrSingleValue = directiveValues[tostring(directiveName)]
		-- ROBLOX deviation START: simplify
		-- 		local ref = if typeof(schema) == "table" then schema.getDirective else nil
		-- 		local directive = if ref ~= nil then ref(directiveName) else nil
		local directive = if typeof(schema) == "table" then schema:getDirective(directiveName) else nil
		-- ROBLOX deviation END
		-- ROBLOX deviation START: no way to distinguish empty array and empty object. Treating empty table as an object
		-- if Boolean.toJSBoolean(Array.isArray(arrayOrSingleValue)) then
		if Array.isArray(arrayOrSingleValue) and #arrayOrSingleValue ~= 0 then
			-- ROBLOX deviation END
			for _, value in arrayOrSingleValue do
				table.insert(directiveNodes, makeDirectiveNode(directiveName, value, directive)) --[[ ROBLOX CHECK: check if 'directiveNodes' is an Array ]]
			end
		else
			table.insert(directiveNodes, makeDirectiveNode(directiveName, arrayOrSingleValue, directive)) --[[ ROBLOX CHECK: check if 'directiveNodes' is an Array ]]
		end
	end
	return directiveNodes
end
exports.makeDirectiveNodes = makeDirectiveNodes
return exports
