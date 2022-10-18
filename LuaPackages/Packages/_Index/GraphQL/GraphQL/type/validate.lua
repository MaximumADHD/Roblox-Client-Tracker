--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/type/validate.js
--# selene: allow(if_same_then_else)
local srcWorkspace = script.Parent.Parent
local root = srcWorkspace.Parent

local LuauPolyfill = require(root.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Error = LuauPolyfill.Error
type Array<T> = LuauPolyfill.Array<T>
type Map<T, U> = LuauPolyfill.Map<T, U>
type Set<T> = LuauPolyfill.Set<T>

local isNotNillish = require(srcWorkspace.luaUtils.isNillish).isNotNillish

local inspect = require(script.Parent.Parent.jsutils.inspect).inspect
local GraphQLErrorModule = require(script.Parent.Parent.error.GraphQLError)
local GraphQLError = GraphQLErrorModule.GraphQLError
type GraphQLError = GraphQLErrorModule.GraphQLError
local locatedError = require(script.Parent.Parent.error).locatedError

local astModule = require(srcWorkspace.language.ast)
type ASTNode = astModule.ASTNode
type NamedTypeNode = astModule.NamedTypeNode
type DirectiveNode = astModule.DirectiveNode
type OperationTypeNode = astModule.OperationTypeNode

local isValidNameError = require(srcWorkspace.utilities.assertValidName).isValidNameError
local typeComparators = require(script.Parent.Parent.utilities.typeComparators)
local isEqualType = typeComparators.isEqualType
local isTypeSubTypeOf = typeComparators.isTypeSubTypeOf
local schemaModule = require(script.Parent.schema)
local assertSchema = schemaModule.assertSchema
type GraphQLSchema = schemaModule.GraphQLSchema

local definitionModule = require(script.Parent.definition)
type GraphQLArgument = definitionModule.GraphQLArgument
type GraphQLInputField = definitionModule.GraphQLInputField
type GraphQLObjectType = definitionModule.GraphQLObjectType
type GraphQLInterfaceType = definitionModule.GraphQLInterfaceType
type GraphQLUnionType = definitionModule.GraphQLUnionType
type GraphQLEnumType = definitionModule.GraphQLEnumType
type GraphQLInputObjectType = definitionModule.GraphQLInputObjectType

local isIntrospectionType = require(script.Parent.introspection).isIntrospectionType
local directives = require(script.Parent.directives)
local isDirective = directives.isDirective
local GraphQLDeprecatedDirective = directives.GraphQLDeprecatedDirective
local isObjectType = definitionModule.isObjectType
local isInterfaceType = definitionModule.isInterfaceType
local isUnionType = definitionModule.isUnionType
local isEnumType = definitionModule.isEnumType
local isInputObjectType = definitionModule.isInputObjectType
local isNamedType = definitionModule.isNamedType
local isNonNullType = definitionModule.isNonNullType
local isInputType = definitionModule.isInputType
local isOutputType = definitionModule.isOutputType
local isRequiredArgument = definitionModule.isRequiredArgument
local isRequiredInputField = definitionModule.isRequiredInputField

local SchemaValidationContext
local validateRootTypes, validateDirectives, getOperationTypeNode
local getAllSubNodes: <T, K, L>(object: SDLDefinedObject<T, K>, getter: (T | K) -> (L | Array<L>)?) -> Array<L>
local getAllNodes, getAllImplementsInterfaceNodes, getDeprecatedDirectiveNode, getUnionMemberTypeNodes, validateEnumValues, validateName, validateFields, validateTypeImplementsAncestors, validateTypes, validateTypeImplementsInterface, validateInterfaces
--[[*
 * Implements the "Type Validation" sub-sections of the specification's
 * "Type System" section.
 *
 * Validation runs synchronously, returning an array of encountered errors, or
 * an empty array if no errors were encountered and the Schema is valid.
 ]]
local validateSchema = function(schema: GraphQLSchema): Array<GraphQLError>
	-- First check to ensure the provided value is in fact a GraphQLSchema.
	assertSchema(schema)

	-- If this Schema has already been validated, return the previous results.
	if schema.__validationErrors ~= nil then
		return schema.__validationErrors
	end

	--  Validate the schema, producing a list of errors.
	local context = SchemaValidationContext.new(schema)
	validateRootTypes(context)
	validateDirectives(context)
	validateTypes(context)

	-- Persist the results of validation before returning to ensure validation
	-- does not run multiple times for this schema.
	local errors = context:getErrors()

	schema.__validationErrors = errors

	return errors
end

--[[*
 * Utility function which asserts a schema is valid by throwing an error if
 * it is invalid.
 ]]
local assertValidSchema = function(schema: GraphQLSchema): ()
	local errors = validateSchema(schema)

	if #errors ~= 0 then
		error(Error.new(Array.join(
			Array.map(errors, function(error_)
				return error_.message
			end),
			"\n\n"
		)))
	end
end

type SchemaValidationContext = {
	_errors: Array<GraphQLError>,
	schema: GraphQLSchema,

	-- method definitions
	reportError: (SchemaValidationContext, string, Array<ASTNode?> | ASTNode?) -> (),
	addError: (SchemaValidationContext, GraphQLError) -> (),
	getErrors: (SchemaValidationContext) -> Array<GraphQLError>,
	new: (schema: GraphQLSchema) -> SchemaValidationContext,
}
SchemaValidationContext = {} :: SchemaValidationContext;
(SchemaValidationContext :: any).__index = SchemaValidationContext

function SchemaValidationContext.new(schema: GraphQLSchema): SchemaValidationContext
	local self = (setmetatable({}, SchemaValidationContext) :: any) :: SchemaValidationContext

	self._errors = {}
	self.schema = schema

	return self
end

function SchemaValidationContext:reportError(message: string, nodes: Array<ASTNode?> | ASTNode?): ()
	local _nodes = if Array.isArray(nodes)
		then Array.filter(nodes :: Array<ASTNode?>, Boolean.toJSBoolean)
		else nodes :: ASTNode?

	-- ROBLOX FIXME Luau: workaround for bug: None of the union options are compatible. For example: Type 'Array<(ArgumentNode | BooleanValueNode | DirectiveDefinitionNode
	self:addError(GraphQLError.new(message, _nodes :: any))
end

function SchemaValidationContext:addError(error_: GraphQLError): ()
	table.insert(self._errors, error_)
end

function SchemaValidationContext:getErrors(): Array<GraphQLError>
	return self._errors
end

function validateRootTypes(context: SchemaValidationContext): ()
	local schema = context.schema
	local queryType = schema:getQueryType()

	if not isNotNillish(queryType) then
		context:reportError("Query root type must be provided.", schema.astNode)
	elseif not isObjectType(queryType) then
		-- ROBLOX TODO Luau: need null coalescing to do `getOperationTypeNode(schema, 'query') ?? queryType.astNode`
		local ref = getOperationTypeNode(schema, "query")
		context:reportError(
			("Query root type must be Object type, it cannot be %s."):format(inspect(queryType)),
			if ref then ref else (queryType :: any).astNode
		)
	end

	local mutationType = schema:getMutationType()

	if isNotNillish(mutationType) and not isObjectType(mutationType) then
		-- ROBLOX TODO Luau: need null coalescing to do `getOperationTypeNode(schema, 'query') ?? queryType.astNode`
		local ref = getOperationTypeNode(schema, "mutation")
		context:reportError(
			"Mutation root type must be Object type if provided, it cannot be "
				.. ("%s."):format(inspect(mutationType)),
			if ref then ref else (mutationType :: any).astNode
		)
	end

	local subscriptionType = schema:getSubscriptionType()

	if isNotNillish(subscriptionType) and not isObjectType(subscriptionType) then
		-- ROBLOX TODO Luau: need null coalescing to do `getOperationTypeNode(schema, 'query') ?? queryType.astNode`
		local ref = getOperationTypeNode(schema, "subscription")
		context:reportError(
			"Subscription root type must be Object type if provided, it cannot be "
				.. ("%s."):format(inspect(subscriptionType)),
			if ref then ref else (subscriptionType :: any).astNode
		)
	end
end
function getOperationTypeNode(schema: GraphQLSchema, operation: OperationTypeNode): ASTNode?
	local operationNodes = getAllSubNodes(schema, function(node)
		return node.operationTypes
	end)

	for _, node in ipairs(operationNodes) do
		if node.operation == operation then
			return node.type
		end
	end

	return nil
end

function validateDirectives(context: SchemaValidationContext): ()
	for _, directive in ipairs(context.schema:getDirectives()) do
		-- Ensure all directives are in fact GraphQL directives.
		if not isDirective(directive) then
			context:reportError(
				("Expected directive but got: %s."):format(inspect(directive)),
				if directive then directive.astNode else nil
			)
			continue
		end

		-- Ensure they are named correctly.
		validateName(context, directive)

		-- TODO: Ensure proper locations.

		-- Ensure the arguments are valid.
		for _, arg in ipairs(directive.args) do
			validateName(context, arg)

			-- Ensure the type is an input type.
			if not isInputType(arg.type) then
				context:reportError(
					("The type of @%s(%s:) must be Input Type "):format(directive.name, arg.name)
						.. ("but got: %s."):format(inspect(arg.type)),
					arg.astNode
				)
			end

			if isRequiredArgument(arg) and isNotNillish(arg.deprecationReason) then
				context:reportError(
					("Required argument @%s(%s:) cannot be deprecated."):format(
						directive.name,
						arg.name
					),
					{
						getDeprecatedDirectiveNode(arg.astNode),
						if arg.astNode ~= nil then arg.astNode.type else nil,
					} :: Array<any> -- ROBLOX FIXME Luau: need to support mixed arrays
				)
			end
		end
	end
end
function validateName(
	context: SchemaValidationContext,
	node: { name: string, astNode: ASTNode? }
): ()
	-- Ensure names are valid, however introspection types opt out.
	-- ROBLOX deviation: Lua doesn't allow indexing (name) into a function
	local nodeName
	local nodeAstNode
	if typeof(node) == "table" then
		nodeName = node.name
		nodeAstNode = node.astNode
	else
		nodeName = tostring(node)
	end
	local error_ = isValidNameError(nodeName)

	if error_ then
		context:addError(locatedError(error_, nodeAstNode))
	end
end

function validateTypes(context: SchemaValidationContext): ()
	local validateInputObjectCircularRefs = createInputObjectCircularRefsValidator(context)
	local typeMap = context.schema:getTypeMap()

	-- ROBLOX deviation: use Map type
	for _, type_ in ipairs(typeMap:values()) do
		-- Ensure all provided types are in fact GraphQL type.
		-- ROBLOX deviation: Lua doesn't allow indexing into a function
		local typeAstNode
		if typeof(type_) == "table" then
			typeAstNode = type_.astNode
		end
		if not isNamedType(type_) then
			context:reportError(
				("Expected GraphQL named type but got: %s."):format(inspect(type_)),
				typeAstNode
			)
			continue
		end

		-- Ensure it is named correctly (excluding introspection types).
		if not isIntrospectionType(type_) then
			validateName(context, type_)
		end

		-- ROBLOX TODO START: Luau: hard casts here due to missing %checks feature
		if isObjectType(type_) then
			-- Ensure fields are valid
			validateFields(context, type_ :: GraphQLObjectType)
			-- Ensure objects implement the interfaces they claim to.
			validateInterfaces(context, type_ :: GraphQLObjectType)
		elseif isInterfaceType(type_) then
			-- Ensure fields are valid.
			validateFields(context, type_ :: GraphQLInterfaceType)
			-- Ensure interfaces implement the interfaces they claim to.
			validateInterfaces(context, type_ :: GraphQLInterfaceType)
		elseif isUnionType(type_) then
			-- Ensure Unions include valid member types.
			validateUnionMembers(context, type_ :: GraphQLUnionType)
		elseif isEnumType(type_) then
			-- Ensure Enums have valid values.
			validateEnumValues(context, type_ :: GraphQLEnumType)
		elseif isInputObjectType(type_) then
			-- Ensure Input Object fields are valid.
			validateInputFields(context, type_ :: GraphQLInputObjectType)

			-- Ensure Input Objects do not contain non-nullable circular references
			validateInputObjectCircularRefs(type_ :: GraphQLInputObjectType)
		end
		-- ROBLOX TODO END
	end
end

function validateFields(
	context: SchemaValidationContext,
	type_: GraphQLObjectType | GraphQLInterfaceType
): ()
	-- ROBLOX FIXME Luau: does complaints of function union not being callable
	local fields = (type_ :: any):getFields():values()

	-- Objects and Interfaces both must define one or more fields.
	if #fields == 0 then
		context:reportError(
			("Type %s must define one or more fields."):format(type_.name),
			getAllNodes(type_)
		)
	end

	for _, field in ipairs(fields) do
		-- Ensure they are named correctly.
		validateName(context, field)

		-- Ensure the type is an output type
		if not isOutputType(field.type) then
			context:reportError(
				("The type of %s.%s must be Output Type "):format(type_.name, field.name)
					.. ("but got: %s."):format(inspect(field.type)),
				-- istanbul ignore next (TODO need to write coverage tests)
				if field.astNode ~= nil then field.astNode.type else nil
			)
		end

		-- Ensure the arguments are valid
		for _, arg in ipairs(field.args) do
			local argName = arg.name

			-- Ensure they are named correctly.
			validateName(context, arg)

			-- Ensure the type is an input type
			if not isInputType(arg.type) then
				context:reportError(
					("The type of %s.%s(%s:) must be Input "):format(
						type_.name,
						field.name,
						argName
					) .. ("Type but got: %s."):format(inspect(arg.type)),
					-- istanbul ignore next (TODO need to write coverage tests)
					if arg.astNode ~= nil then arg.astNode.type else nil
				)
			end
			if isRequiredArgument(arg) and isNotNillish(arg.deprecationReason) then
				context:reportError(
					("Required argument %s.%s(%s:) cannot be deprecated."):format(
						type_.name,
						field.name,
						argName
					),
					{
						getDeprecatedDirectiveNode(arg.astNode),
						-- istanbul ignore next (TODO need to write coverage tests)
						if arg.astNode ~= nil then arg.astNode.type else nil,
					} :: Array<any>
				)
			end
		end
	end
end
function validateInterfaces(
	context: SchemaValidationContext,
	type_: GraphQLObjectType | GraphQLInterfaceType
): ()
	local ifaceTypeNames = {}

	-- ROBLOX FIXME Luau: does not recognize union of functions as callable
	for _, iface in ipairs((type_ :: any):getInterfaces()) do
		if not isInterfaceType(iface) then
			context:reportError(
				("Type %s must only implement Interface types, "):format(inspect(type_))
					.. ("it cannot implement %s."):format(inspect(iface)),
				getAllImplementsInterfaceNodes(type_, iface)
			)
			continue
		end
		if type_ == iface then
			context:reportError(
				("Type %s cannot implement itself because it would create a circular reference."):format(
					type_.name
				),
				getAllImplementsInterfaceNodes(type_, iface)
			)
			continue
		end

		-- ROBLOX deviation: Lua can't deref fields on functions/primitives
		local ifaceName
		if typeof(ifaceName) == "table" then
			ifaceName = tostring(iface.name)
		else
			ifaceName = tostring(iface)
		end

		-- ROBLOX deviation: upstream can receive a GraphQLList with no name member, but Lua can't store a nil key
		if ifaceTypeNames[ifaceName] then
			context:reportError(
				("Type %s can only implement %s once."):format(type_.name, iface.name),
				getAllImplementsInterfaceNodes(type_, iface)
			)
			continue
		end

		-- ROBLOX deviation: upstream can receive a GraphQLList with no name member, but Lua can't store a nil key
		ifaceTypeNames[ifaceName] = true

		validateTypeImplementsAncestors(context, type_, iface)
		validateTypeImplementsInterface(context, type_, iface)
	end
end
function validateTypeImplementsInterface(
	context: SchemaValidationContext,
	type_: GraphQLObjectType | GraphQLInterfaceType,
	iface: GraphQLInterfaceType
): ()
	-- ROBLOX deviation: getFields returns a Map
	-- ROBLOX TODO: fix types to avoid casting
	local typeFieldMap = (type_ :: any):getFields()

	-- Assert each interface field is implemented.
	-- ROBLOX deviation: getFields returns a Map
	for _, ifaceField in ipairs(iface:getFields():values()) do
		local fieldName = ifaceField.name
		-- ROBLOX deviation: use Map
		local typeField = typeFieldMap:get(fieldName)

		-- Assert interface field exists on type.
		if not typeField then
			context:reportError(
				("Interface field %s.%s expected but %s does not provide it."):format(
					iface.name,
					fieldName,
					type_.name
				),
				Array.concat({
					ifaceField.astNode,
				}, getAllNodes(type_))
			)
			continue
		end

		-- Assert interface field type is satisfied by type field type, by being
		-- a valid subtype. (covariant)
		if not isTypeSubTypeOf(context.schema, typeField.type, ifaceField.type) then
			context:reportError(
				("Interface field %s.%s expects type "):format(iface.name, fieldName)
					.. ("%s but %s.%s "):format(inspect(ifaceField.type), type_.name, fieldName)
					.. ("is type %s."):format(inspect(typeField.type)),
				{
					if ifaceField.astNode ~= nil then ifaceField.astNode.type else nil,
					if typeField.astNode ~= nil then typeField.astNode.type else nil,
				}
			)
		end

		-- Assert each interface field arg is implemented.
		for _, ifaceArg in ipairs(ifaceField.args) do
			local argName = ifaceArg.name
			local typeArg = Array.find(typeField.args, function(arg)
				return arg.name == argName
			end)

			-- Assert interface field arg exists on object field.
			if not typeArg then
				context:reportError(
					("Interface field argument %s.%s(%s:) expected but %s.%s does not provide it."):format(
						iface.name,
						fieldName,
						argName,
						type_.name,
						fieldName
					),
					{
						ifaceArg.astNode,
						typeField.astNode,
					}
				)
				continue
			end

			-- Assert interface field arg type matches object field arg type.
			-- (invariant)
			-- TODO: change to contravariant?
			if not isEqualType(ifaceArg.type, typeArg.type) then
				context:reportError(
					("Interface field argument %s.%s(%s:) "):format(iface.name, fieldName, argName)
						.. ("expects type %s but "):format(inspect(ifaceArg.type))
						.. ("%s.%s(%s:) is type "):format(type_.name, fieldName, argName)
						.. ("%s."):format(inspect(typeArg.type)),
					{
						if ifaceArg.astNode ~= nil then ifaceArg.astNode.type else nil,
						if typeArg.astNode ~= nil
							-- ROBLOX TODO Luau: I had a typo here that Luau didn't say anything about: typeArg.astNode.Type
							then typeArg.astNode.type
							else nil,
					}
				)
			end
			-- TODO: validate default values?
		end

		-- Assert additional arguments must not be required.
		for _, typeArg in ipairs(typeField.args) do
			local argName = typeArg.name
			local ifaceArg = Array.find(ifaceField.args, function(arg)
				return arg.name == argName
			end)

			if not ifaceArg and isRequiredArgument(typeArg) then
				context:reportError(
					(
						"Object field %s.%s includes required argument %s that is missing from the Interface field %s.%s."
					):format(type_.name, fieldName, argName, iface.name, fieldName),
					{
						typeArg.astNode,
						ifaceField.astNode,
					}
				)
			end
		end
	end
end

function validateTypeImplementsAncestors(
	context: SchemaValidationContext,
	type_: GraphQLObjectType | GraphQLInterfaceType,
	iface: GraphQLInterfaceType
): ()
	-- ROBLOX FIXME Luau: does not recognize union of functions as callable
	local ifaceInterfaces = (type_ :: any):getInterfaces()

	for _, transitive in ipairs(iface:getInterfaces()) do
		if Array.indexOf(ifaceInterfaces, transitive) == -1 then
			context:reportError(
				if transitive == type_
					then
						(
							"Type %s cannot implement %s because it would create a circular reference."
						):format(type_.name, iface.name)
					else ("Type %s must implement %s because it is implemented by %s."):format(
						type_.name,
						transitive.name,
						iface.name
					),
				Array.concat(
					getAllImplementsInterfaceNodes(iface, transitive),
					getAllImplementsInterfaceNodes(type_, iface)
				)
			)
		end
	end
end

function validateUnionMembers(context: SchemaValidationContext, union: GraphQLUnionType): ()
	local memberTypes = union:getTypes()

	if #memberTypes == 0 then
		context:reportError(
			("Union type %s must define one or more member types."):format(union.name),
			getAllNodes(union)
		)
	end

	local includedTypeNames = {}

	for _, memberType in ipairs(memberTypes) do
		-- ROBLOX deviation: upstream can receive a GraphQLList with no name member, but Lua can't store a nil key
		if includedTypeNames[tostring(memberType.name)] then
			context:reportError(
				("Union type %s can only include type %s once."):format(union.name, memberType.name),
				getUnionMemberTypeNodes(union, memberType.name)
			)
			continue
		end

		-- ROBLOX deviation: upstream can receive a GraphQLList with no name member, but Lua can't store a nil key
		includedTypeNames[tostring(memberType.name)] = true

		if not isObjectType(memberType) then
			context:reportError(
				("Union type %s can only include Object types, "):format(union.name)
					.. ("it cannot include %s."):format(inspect(memberType)),
				getUnionMemberTypeNodes(union, tostring(memberType))
			)
		end
	end
end
function validateEnumValues(context: SchemaValidationContext, enumType: GraphQLEnumType): ()
	local enumValues = enumType:getValues()

	if #enumValues == 0 then
		context:reportError(
			("Enum type %s must define one or more values."):format(enumType.name),
			getAllNodes(enumType)
		)
	end

	for _, enumValue in ipairs(enumValues) do
		local valueName = enumValue.name

		-- Ensure valid name.
		validateName(context, enumValue)

		if valueName == "true" or valueName == "false" or valueName == "null" then
			context:reportError(
				("Enum type %s cannot include value: %s."):format(enumType.name, valueName),
				enumValue.astNode
			)
		end
	end
end

function validateInputFields(context: SchemaValidationContext, inputObj: GraphQLInputObjectType): ()
	-- ROBLOX deviation: getFields returns a Map
	local fields = inputObj:getFields():values()

	if #fields == 0 then
		context:reportError(
			("Input Object type %s must define one or more fields."):format(inputObj.name),
			getAllNodes(inputObj)
		)
	end

	-- Ensure the arguments are valid
	for _, field in ipairs(fields) do
		validateName(context, field)

		-- Ensure the type is an input type
		if not isInputType(field.type) then
			context:reportError(
				("The type of %s.%s must be Input Type "):format(inputObj.name, field.name)
					.. ("but got: %s."):format(inspect(field.type)),
				if field.astNode ~= nil then field.astNode.type else nil
			)
		end
		if isRequiredInputField(field) and isNotNillish(field.deprecationReason) then
			context:reportError(
				("Required input field %s.%s cannot be deprecated."):format(
					inputObj.name,
					field.name
				),
				{
					getDeprecatedDirectiveNode((field :: GraphQLInputField).astNode),
					if field.astNode ~= nil
						-- ROBLOX FIXME START: Luau: work around TypeError: Value of type 'InputValueDefinitionNode?' could be nil
						then (field :: any).astNode.type
						-- ROBLOX FIXME END
						else nil,
				}
			)
		end
	end
end

function createInputObjectCircularRefsValidator(
	context: SchemaValidationContext
): (GraphQLInputObjectType) -> ()
	-- Modified copy of algorithm from 'src/validation/rules/NoFragmentCycles.lua'.
	-- Tracks already visited types to maintain O(N) and to ensure that cycles
	-- are not redundantly reported.
	local visitedTypes = {}

	-- Array of types nodes used to produce meaningful errors
	local fieldPath = {}

	-- Position in the type path
	local fieldPathIndexByTypeName = {}

	-- This does a straight-forward DFS to find cycles.
	-- It does not terminate when a cycle was found but continues to explore
	-- the graph to find all possible cycles.
	local function detectCycleRecursive(inputObj: GraphQLInputObjectType): ()
		-- ROBLOX deviation: upstream can receive a GraphQLList with no name member, but Lua can't store a nil key
		if visitedTypes[tostring(inputObj.name)] then
			return
		end

		-- ROBLOX deviation: upstream can receive a GraphQLList with no name member, but Lua can't store a nil key
		visitedTypes[tostring(inputObj.name)] = true
		-- ROBLOX deviation: upstream can receive a GraphQLList with no name member, but Lua can't store a nil key
		-- ROBLOX deviation: we add 1 to fieldPath length, since Lua array indices start at 1 and length can be zero
		fieldPathIndexByTypeName[tostring(inputObj.name)] = #fieldPath + 1

		local fields = inputObj:getFields():values()

		for _, field in ipairs(fields) do
			if isNonNullType(field.type) and isInputObjectType(field.type.ofType) then
				local fieldType = field.type.ofType
				-- ROBLOX deviation: upstream can receive a GraphQLList with no name member, but Lua can't store a nil key
				local cycleIndex = fieldPathIndexByTypeName[tostring(fieldType.name)]

				table.insert(fieldPath, field)

				if cycleIndex == nil then
					detectCycleRecursive(fieldType)
				else
					local cyclePath
					cyclePath = Array.slice(fieldPath, cycleIndex)
					local pathStr = Array.join(
						Array.map(cyclePath, function(fieldObj)
							return fieldObj.name
						end),
						"."
					)

					context:reportError(
						(
							'Cannot reference Input Object "%s" within itself through a series of non-null fields: "%s".'
						):format(fieldType.name, pathStr),
						Array.map(cyclePath, function(fieldObj)
							return fieldObj.astNode
						end)
					)
				end

				table.remove(fieldPath)
			end
		end

		-- ROBLOX deviation: upstream can receive a GraphQLList with no name member, but Lua can't store a nil key
		fieldPathIndexByTypeName[tostring(inputObj.name)] = nil
	end

	return detectCycleRecursive
end

type SDLDefinedObject<T, K> = {
	astNode: T?,
	extensionASTNodes: Array<K>?,
}

-- ROBLOX TODO Luau: needs constraints
-- function getAllNodes<T: ASTNode, K: ASTNode>(
function getAllNodes<T, K>(object: SDLDefinedObject<T, K>): Array<T | K>
	local astNode, extensionASTNodes = object.astNode, object.extensionASTNodes

	return if astNode
		then if extensionASTNodes then Array.concat({ astNode }, extensionASTNodes) else { astNode }
		else if extensionASTNodes then extensionASTNodes else {}
end

-- ROBLOX TODO Luau: needs constraints
-- function getAllSubNodes<T: ASTNode, K: ASTNode, L: ASTNode>(
function getAllSubNodes<T, K, L>(
	object: SDLDefinedObject<T, K>,
	getter: (T | K) -> (L | Array<L>)?
): Array<L>
	local subNodes: Array<L> = {}

	for _, node in ipairs(getAllNodes(object)) do
		-- istanbul ignore next (See: 'https://github.com/graphql/graphql-js/issues/2203')
		-- ROBLOX TODO Luau: needs null coalescing or similar to do `getter(node) ?? {}`
		local ref = (getter(node) :: any) :: ASTNode
		subNodes = Array.concat(subNodes, if ref then ref else {})
	end

	return subNodes
end

function getAllImplementsInterfaceNodes(
	type_: GraphQLObjectType | GraphQLInterfaceType,
	iface: GraphQLInterfaceType
): Array<NamedTypeNode>
	return Array.filter(
		getAllSubNodes(type_, function(typeNode)
			return typeNode.interfaces :: Array<NamedTypeNode> | NamedTypeNode
		end),
		function(ifaceNode)
			return ifaceNode.name.value == iface.name
		end
	)
end

function getUnionMemberTypeNodes(union: GraphQLUnionType, typeName: string): Array<NamedTypeNode>
	return Array.filter(
		getAllSubNodes(union, function(unionNode)
			return unionNode.types :: Array<NamedTypeNode> | NamedTypeNode
		end),
		function(typeNode)
			return typeNode.name.value == typeName
		end
	)
end

function getDeprecatedDirectiveNode(
	definitionNode: { directives: Array<DirectiveNode>? }?
): DirectiveNode?
	if definitionNode ~= nil and definitionNode.directives ~= nil then
		-- istanbul ignore next (See: 'https://github.com/graphql/graphql-js/issues/2203')
		return Array.find(definitionNode.directives, function(node)
			return node.name.value == GraphQLDeprecatedDirective.name
		end)
	end
	return
end

return {
	validateSchema = validateSchema,
	assertValidSchema = assertValidSchema,
}
