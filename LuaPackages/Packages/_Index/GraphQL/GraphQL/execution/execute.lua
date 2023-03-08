--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/execution/execute.js
local srcWorkspace = script.Parent.Parent
local jsUtilsWorkspace = srcWorkspace.jsutils
local errorWorkspace = srcWorkspace.error
local languageWorkspace = srcWorkspace.language
local typeWorkspace = srcWorkspace.type
local utilitiesWorkspace = srcWorkspace.utilities
local luaUtilsWorkspace = srcWorkspace.luaUtils
local Packages = srcWorkspace.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Error = LuauPolyfill.Error
local Map = LuauPolyfill.Map
local Set = LuauPolyfill.Set
local instanceof = LuauPolyfill.instanceof
type Array<T> = LuauPolyfill.Array<T>
type Map<T, V> = LuauPolyfill.Map<T, V>

local ObjMapImport = require(jsUtilsWorkspace.ObjMap)
type ObjMap<T> = ObjMapImport.ObjMap<T>
local PromiseOrValueImport = require(jsUtilsWorkspace.PromiseOrValue)
type PromiseOrValue<T> = PromiseOrValueImport.PromiseOrValue<T>

local Promise = require(srcWorkspace.Parent.Promise)
type Promise<T> = LuauPolyfill.Promise<T>
local NULL = require(luaUtilsWorkspace.null)
local isNillish = require(luaUtilsWorkspace.isNillish).isNillish

local inspect = require(jsUtilsWorkspace.inspect).inspect
local memoize3 = require(jsUtilsWorkspace.memoize3).memoize3
local invariant = require(jsUtilsWorkspace.invariant).invariant
local devAssert = require(jsUtilsWorkspace.devAssert).devAssert
local isPromise = require(jsUtilsWorkspace.isPromise).isPromise
local isObjectLike = require(jsUtilsWorkspace.isObjectLike).isObjectLike
local promiseReduce = require(jsUtilsWorkspace.promiseReduce).promiseReduce
local promiseForObject = require(jsUtilsWorkspace.promiseForObject).promiseForObject
local pathImport = require(jsUtilsWorkspace.Path)
type Path = pathImport.Path
local addPath = pathImport.addPath
local pathToArray = pathImport.pathToArray
local isIteratableObject = require(jsUtilsWorkspace.isIteratableObject).isIteratableObject

local formatErrorImport = require(errorWorkspace.formatError)
type GraphQLFormattedError = formatErrorImport.GraphQLFormattedError
local graphQLErrorImport = require(errorWorkspace.GraphQLError)
type GraphQLError = graphQLErrorImport.GraphQLError
local GraphQLError = graphQLErrorImport.GraphQLError
local locatedError = require(errorWorkspace.locatedError).locatedError

local astImport = require(languageWorkspace.ast)
type DocumentNode = astImport.DocumentNode
type OperationDefinitionNode = astImport.OperationDefinitionNode
type SelectionSetNode = astImport.SelectionSetNode
type FieldNode = astImport.FieldNode
type FragmentSpreadNode = astImport.FragmentSpreadNode
type InlineFragmentNode = astImport.InlineFragmentNode
type FragmentDefinitionNode = astImport.FragmentDefinitionNode
type NamedTypeNode = astImport.NamedTypeNode
local Kind = require(srcWorkspace.language.kinds).Kind

local schemaImport = require(typeWorkspace.schema)
type GraphQLSchema = schemaImport.GraphQLSchema
local definitionImport = require(typeWorkspace.definition)
type GraphQLType = definitionImport.GraphQLType
type GraphQLObjectType = definitionImport.GraphQLObjectType
type GraphQLOutputType = definitionImport.GraphQLOutputType
type GraphQLLeafType = definitionImport.GraphQLLeafType
type GraphQLScalarType = definitionImport.GraphQLScalarType
type GraphQLEnumType = definitionImport.GraphQLEnumType
type GraphQLAbstractType = definitionImport.GraphQLAbstractType
type GraphQLNamedType = definitionImport.GraphQLNamedType
type GraphQLInterfaceType = definitionImport.GraphQLInterfaceType
type GraphQLUnionType = definitionImport.GraphQLUnionType
type GraphQLField<Source, TContext> = definitionImport.GraphQLField<Source, TContext>
type GraphQLFieldResolver<T, V> = definitionImport.GraphQLFieldResolver<T, V>
type GraphQLResolveInfo = definitionImport.GraphQLResolveInfo
type GraphQLTypeResolver<T, V> = definitionImport.GraphQLTypeResolver<T, V>
type GraphQLList<T> = definitionImport.GraphQLList<T>
type GraphQLNonNull<T> = definitionImport.GraphQLNonNull<T>
local assertValidSchema = require(typeWorkspace.validate).assertValidSchema
local introspectionImport = require(typeWorkspace.introspection)
local SchemaMetaFieldDef = introspectionImport.SchemaMetaFieldDef
local TypeMetaFieldDef = introspectionImport.TypeMetaFieldDef
local TypeNameMetaFieldDef = introspectionImport.TypeNameMetaFieldDef
local directivesImport = require(typeWorkspace.directives)
local GraphQLIncludeDirective = directivesImport.GraphQLIncludeDirective
local GraphQLSkipDirective = directivesImport.GraphQLSkipDirective
local isObjectType = definitionImport.isObjectType
local isAbstractType = definitionImport.isAbstractType
local isLeafType = definitionImport.isLeafType
local isListType = definitionImport.isListType
local isNonNullType = definitionImport.isNonNullType

local typeFromAST = require(utilitiesWorkspace.typeFromAST).typeFromAST
local getOperationRootType = require(utilitiesWorkspace.getOperationRootType).getOperationRootType

local valuesImport = require(script.Parent.values)
local getVariableValues = valuesImport.getVariableValues
local getArgumentValues = valuesImport.getArgumentValues
local getDirectiveValues = valuesImport.getDirectiveValues

--[[*
--  * Terminology
--  *
--  * "Definitions" are the generic name for top-level statements in the document.
--  * Examples of this include:
--  * 1) Operations (such as a query)
--  * 2) Fragments
--  *
--  * "Operations" are a generic name for requests in the document.
--  * Examples of this include:
--  * 1) query,
--  * 2) mutation
--  *
--  * "Selections" are the definitions that can appear legally and at
--  * single level of the query. These include:
--  * 1) field references e.g "a"
--  * 2) fragment "spreads" e.g. "...c"
--  * 3) inline fragment "spreads" e.g. "...on Type { a }"
--  *]]

--[[*
--  * Data that must be available at all points during query execution.
--  *
--  * Namely, schema of the type system that is currently executing,
--  * and the fragments defined in the query document
--  *]]
export type ExecutionContext = {
	schema: GraphQLSchema,
	fragments: ObjMap<FragmentDefinitionNode>,
	rootValue: any,
	contextValue: any,
	operation: OperationDefinitionNode,
	variableValues: { [string]: any }, -- ROBLOX TODO: missing type varargs
	fieldResolver: GraphQLFieldResolver<any, any>,
	typeResolver: GraphQLTypeResolver<any, any>,
	errors: Array<GraphQLError>,
}

--[[*
--  * The result of GraphQL execution.
--  *
--  *   - `errors` is included when any errors occurred as a non-empty array.
--  *   - `data` is the result of a successful execution of the query.
--  *   - `extensions` is reserved for adding non-standard properties.
--  *]]
export type ExecutionResult = {
	errors: Array<GraphQLError>?,
	data: ObjMap<any> | typeof(NULL),
	extensions: ObjMap<any>?,
}

export type FormattedExecutionResult = {
	errors: Array<GraphQLFormattedError>?,
	data: ObjMap<any>?,
	extensions: ObjMap<any>?,
}

export type ExecutionArgs = {
	schema: GraphQLSchema,
	document: DocumentNode,
	rootValue: any?,
	contextValue: any?,
	variableValues: { [string]: any }?, -- ROBLOX TODO: missing type varargs
	operationName: string?,
	fieldResolver: GraphQLFieldResolver<any, any>?,
	typeResolver: GraphQLTypeResolver<any, any>?,
}

-- ROBLOX deviation: predeclare functions
local execute
local executeSync
local assertValidExecutionArguments
local buildExecutionContext
local collectFields
local buildResolveInfo
local defaultTypeResolver: GraphQLTypeResolver<any, any>
local defaultFieldResolver: GraphQLFieldResolver<any, any>
local getFieldDef: (
	schema: GraphQLSchema,
	parentType: GraphQLObjectType,
	fieldName: string
) -> GraphQLField<any, any>?
local buildResponse
local executeOperation
local executeFieldsSerially
local executeFields
local shouldIncludeNode
local doesFragmentConditionMatch: (
	exeContext: ExecutionContext,
	fragment: FragmentDefinitionNode | InlineFragmentNode,
	type_: GraphQLObjectType
) -> boolean
local getFieldEntryKey
local resolveField
local handleFieldError
local completeValue
local completeListValue
local completeLeafValue: (returnType: GraphQLLeafType, result: any) -> any
local completeAbstractValue
local ensureValidRuntimeType
local completeObjectValue
local invalidReturnTypeError
local collectAndExecuteSubfields
local _collectSubfields
local collectSubfields

--[[*
--  * Implements the "Evaluating requests" section of the GraphQL specification.
--  *
--  * Returns either a synchronous ExecutionResult (if all encountered resolvers
--  * are synchronous), or a Promise of an ExecutionResult that will eventually be
--  * resolved and never rejected.
--  *
--  * If the arguments to this function do not result in a legal execution context,
--  * a GraphQLError will be thrown immediately explaining the invalid input.
--  *]]
function execute(args: ExecutionArgs): PromiseOrValue<ExecutionResult>
	local schema = args.schema
	local document = args.document
	local rootValue = args.rootValue
	local contextValue = args.contextValue
	local variableValues = args.variableValues
	local operationName = args.operationName
	local fieldResolver = args.fieldResolver
	local typeResolver = args.typeResolver

	-- If arguments are missing or incorrect, throw an error.
	assertValidExecutionArguments(schema, document, variableValues)

	-- If a valid execution context cannot be created due to incorrect arguments,
	-- a "Response" with only errors is returned.
	local exeContext = buildExecutionContext(
		schema,
		document,
		rootValue,
		contextValue,
		variableValues,
		operationName,
		fieldResolver,
		typeResolver
	)

	-- Return early errors if execution context failed.
	if Array.isArray(exeContext) or not (exeContext :: ExecutionContext).schema then
		-- ROBLOX FIXME Luau: Luau shouldn't need this ExecutionResult annotation, probably needs normalization
		return { errors = exeContext :: Array<GraphQLError> } :: ExecutionResult
	end

	-- Return a Promise that will eventually resolve to the data described by
	-- The "Response" section of the GraphQL specification.
	--
	-- If errors are encountered while executing a GraphQL field, only that
	-- field and its descendants will be omitted, and sibling fields will still
	-- be executed. An execution which encounters errors will still result in a
	-- resolved Promise.
	local data = executeOperation(
		exeContext :: ExecutionContext,
		(exeContext :: ExecutionContext).operation,
		rootValue
	)

	return buildResponse(exeContext :: ExecutionContext, data)
end

--[[*
--  * Also implements the "Evaluating requests" section of the GraphQL specification.
--  * However, it guarantees to complete synchronously (or throw an error) assuming
--  * that all field resolvers are also synchronous.
--  *]]
function executeSync(args: ExecutionArgs): ExecutionResult
	local result = execute(args)

	-- Assert that the execution was synchronous.
	if isPromise(result) then
		error(Error.new("GraphQL execution failed to complete synchronously."))
	end

	-- ROBLOX TODO Luau: Luau needs something like %checks functionality on isPromise to not need this cast
	return result :: ExecutionResult
end

--[[*
--  * Given a completed execution context and data, build the { errors, data }
--  * response defined by the "Response" section of the GraphQL specification.
--  *]]
function buildResponse(
	exeContext: ExecutionContext,
	-- ROBLOX deviation: workaround Luau, which doesn't have predicates, and has nilability narrowing issues. should be PromiseOrValue<ObjMap<any>?>
	data: PromiseOrValue<ObjMap<any> | typeof(NULL)>
): PromiseOrValue<ExecutionResult>
	if isPromise(data) then
		-- ROBLOX FIXME: couldn't figure out typing for this Promise<T> that returns a Promise<R>
		return (data :: Promise<any>):andThen(function(resolved)
			return buildResponse(exeContext, resolved)
		end)
	end

	return if #exeContext.errors == 0
		then { data = data :: ObjMap<any> } :: ExecutionResult
		else {
			errors = exeContext.errors :: Array<GraphQLError>,
			data = data :: typeof(NULL),
		} :: ExecutionResult
end

--[[*
--  * Essential assertions before executing to provide developer feedback for
--  * improper use of the GraphQL library.
--  *
--  * @internal
--  *]]
function assertValidExecutionArguments(
	schema: GraphQLSchema,
	document: DocumentNode,
	rawVariableValues: { [string]: any }? -- ROBLOX TODO: missing type varargs
)
	devAssert(document, "Must provide document.")

	-- If the schema used for execution is invalid, throw an error.
	assertValidSchema(schema)

	-- Variables, if provided, must be an object.
	devAssert(
		rawVariableValues == nil or isObjectLike(rawVariableValues),
		"Variables must be provided as an Object where each property is a variable value. Perhaps look to see if an unparsed JSON string was provided."
	)
end

--[[*
--  * Constructs a ExecutionContext object from the arguments passed to
--  * execute, which we will pass throughout the other execution methods.
--  *
--  * Throws a GraphQLError if a valid execution context cannot be created.
--  *
--  * @internal
--  *]]
function buildExecutionContext(
	schema: GraphQLSchema,
	document: DocumentNode,
	rootValue: any?,
	contextValue: any?,
	rawVariableValues: { [string]: any }?, -- ROBLOX TODO: missing type varargs
	operationName: string?,
	fieldResolver: GraphQLFieldResolver<any, any>?,
	typeResolver: GraphQLTypeResolver<any, any>?
): Array<GraphQLError> | ExecutionContext
	local operation: OperationDefinitionNode -- ROBLOX TODO: should be nilable, fix then Luau narrowing is fixed
	local fragments = {}

	for _, definition in ipairs(document.definitions) do
		if definition.kind == Kind.OPERATION_DEFINITION then
			if operationName == nil then
				if operation ~= nil then
					return {
						GraphQLError.new(
							"Must provide operation name if query contains multiple operations."
						),
					}
				end
				operation = definition
			elseif (definition.name and definition.name.value) == operationName then
				operation = definition
			end
		elseif definition.kind == Kind.FRAGMENT_DEFINITION then
			fragments[definition.name.value] = definition
		end
	end

	if not operation then
		if operationName ~= nil then
			return {
				GraphQLError.new(('Unknown operation named "%s".'):format(operationName)),
			}
		end

		return {
			GraphQLError.new("Must provide an operation."),
		}
	end

	-- istanbul ignore next (See: 'https://github.com/graphql/graphql-js/issues/2203')
	local variableDefinitions = operation.variableDefinitions or {}

	local coercedVariableValues = getVariableValues(
		schema,
		variableDefinitions,
		if rawVariableValues then rawVariableValues else {},
		{ maxErrors = 50 }
	)

	-- ROBLOX TODO: This is a type error in upstream that TS doesn't catch
	if (coercedVariableValues :: any).errors then
		return (coercedVariableValues :: { errors: Array<GraphQLError> }).errors
	end

	return {
		schema = schema,
		fragments = fragments,
		rootValue = rootValue,
		contextValue = contextValue,
		operation = operation,
		-- ROBLOX TODO: This is a type error in upstream that TS doesn't catch
		variableValues = (coercedVariableValues :: { coerced: { [string]: any } }).coerced,
		fieldResolver = fieldResolver or defaultFieldResolver,
		typeResolver = typeResolver or defaultTypeResolver,
		errors = {},
	}
end

--[[*
--  * Implements the "Evaluating operations" section of the spec.
--  *]]
function executeOperation(
	exeContext: ExecutionContext,
	operation: OperationDefinitionNode,
	rootValue: any
): PromiseOrValue<ObjMap<any> | typeof(NULL)>
	local type_ = getOperationRootType(exeContext.schema, operation)
	local fields = collectFields(
		exeContext,
		type_,
		operation.selectionSet,
		-- ROBLOX deviation: use Map
		Map.new(),
		{}
	)

	local path = nil

	-- Errors from sub-fields of a NonNull type may propagate to the top level,
	-- at which point we still log the error and null the parent field, which
	-- in this case is the entire response.
	-- ROBLOX deviation START: instead of wrapping entire block in try, only wrap specific calls that could fail
	local ok: boolean, result: any
	if operation.operation == "mutation" then
		ok, result = pcall(executeFieldsSerially, exeContext, type_, rootValue, path, fields)
	else
		ok, result = pcall(executeFields, exeContext, type_, rootValue, path, fields)
	end
	-- ROBLOX deviation END
	if isPromise(result) then
		return result:andThen(nil, function(error_)
			table.insert(exeContext.errors, error_)
			return Promise.resolve(NULL)
		end)
	end

	if not ok then
		table.insert(exeContext.errors, result)
		return NULL
	end
	return result
end

--[[*
--  * Implements the "Evaluating selection sets" section of the spec
--  * for "write" mode.
--  *]]
function executeFieldsSerially(
	exeContext: ExecutionContext,
	parentType: GraphQLObjectType,
	sourceValue: any,
	path: Path | nil,
	fields: Map<string, Array<FieldNode>>
): PromiseOrValue<ObjMap<any>>
	return promiseReduce(
		-- ROBLOX deviation: use Map
		fields:keys(),
		function(results, responseName: string)
			-- ROBLOX TODO: this is a type bug in upstream, which should also need annotation
			local fieldNodes = fields[responseName] :: Array<FieldNode>
			local fieldPath = addPath(path, responseName, parentType.name)
			local result = resolveField(exeContext, parentType, sourceValue, fieldNodes, fieldPath)

			if result == nil then
				-- ROBLOX FIXME Luau: with promiseReduce forwarding types correctly, this now emits a Type contains a self-recursive construct that cannot be resolved
				return results :: any
			end
			if isPromise(result) then
				-- ROBLOX FIXME: couldn't figure out typing for this Promise<T> that returns a Promise<R>
				return (result :: Promise<any>):andThen(function(resolvedResult)
					results[responseName] = resolvedResult

					return results
				end)
			end

			results[responseName] = result

			return results
		end,
		{}
	)
end

--[[*
--  * Implements the "Evaluating selection sets" section of the spec
--  * for "read" mode.
--  *]]
function executeFields(
	exeContext: ExecutionContext,
	parentType: GraphQLObjectType,
	sourceValue: any,
	path: Path | nil, -- ROBLOX deviation: Luau can't express void, so use nil
	fields: Map<string, Array<FieldNode>> -- ROBLOX deviation: use our ordered Map
): PromiseOrValue<ObjMap<any>>
	local results = {}
	local containsPromise = false

	-- ROBLOX deviation: use Map
	for _, responseName in ipairs(fields:keys()) do
		-- ROBLOX TODO: this is a type bug in upstream, which should also need annotation
		local fieldNodes = fields[responseName] :: Array<FieldNode>
		local fieldPath = addPath(path, responseName, parentType.name)
		local result = resolveField(exeContext, parentType, sourceValue, fieldNodes, fieldPath)

		if result ~= nil then
			results[responseName] = result

			if isPromise(result) then
				containsPromise = true
			end
		end
	end

	-- If there are no promises, we can just return the object
	if not containsPromise then
		return results
	end

	-- Otherwise, results is a map from field name to the result of resolving that
	-- field, which is possibly a promise. Return a promise that will return this
	-- same map, but with any promises replaced with the values they resolved to.
	return promiseForObject(results)
end

--[[*
--  * Given a selectionSet, adds all of the fields in that selection to
--  * the passed in map of fields, and returns it at the end.
--  *
--  * CollectFields requires the "runtime type" of an object. For a field which
--  * returns an Interface or Union type, the "runtime type" will be the actual
--  * Object type returned by that field.
--  *
--  * @internal
--  *]]
function collectFields(
	exeContext: ExecutionContext,
	runtimeType: GraphQLObjectType,
	selectionSet: SelectionSetNode,
	fields: Map<string, Array<FieldNode>>, -- ROBLOX deviation: use our ordered Map
	visitedFragmentNames: ObjMap<boolean>
): Map<string, Array<FieldNode>>
	for _, selection in ipairs(selectionSet.selections) do
		if selection.kind == Kind.FIELD then
			if not shouldIncludeNode(exeContext, selection) then
				continue
			end
			local name = getFieldEntryKey(selection)
			-- ROBLOX deviation: use Map
			if not fields[name] then
				fields[name] = {}
			end
			table.insert(fields[name], selection)
		elseif selection.kind == Kind.INLINE_FRAGMENT then
			if
				not shouldIncludeNode(exeContext, selection)
				or not doesFragmentConditionMatch(exeContext, selection, runtimeType)
			then
				continue
			end
			collectFields(
				exeContext,
				runtimeType,
				selection.selectionSet,
				fields,
				visitedFragmentNames
			)
		elseif selection.kind == Kind.FRAGMENT_SPREAD then
			local fragName = selection.name.value
			if visitedFragmentNames[fragName] or not shouldIncludeNode(exeContext, selection) then
				continue
			end
			visitedFragmentNames[fragName] = true
			local fragment = exeContext.fragments[fragName]
			if
				not fragment or not doesFragmentConditionMatch(exeContext, fragment, runtimeType)
			then
				continue
			end
			collectFields(
				exeContext,
				runtimeType,
				fragment.selectionSet,
				fields,
				visitedFragmentNames
			)
		end
	end

	return fields
end

--[[*
--  * Determines if a field should be included based on the @include and @skip
--  * directives, where @skip has higher precedence than @include.
--  *]]
function shouldIncludeNode(
	exeContext: ExecutionContext,
	node: FragmentSpreadNode | FieldNode | InlineFragmentNode
): boolean
	local skip = getDirectiveValues(GraphQLSkipDirective, node, exeContext.variableValues)

	if (skip and skip["if"]) == true then
		return false
	end

	local include = getDirectiveValues(GraphQLIncludeDirective, node, exeContext.variableValues)

	if (include and include["if"]) == false then
		return false
	end

	return true
end

--[[*
--  * Determines if a fragment is applicable to the given type.
--  *]]
function doesFragmentConditionMatch(
	exeContext: ExecutionContext,
	fragment: FragmentDefinitionNode | InlineFragmentNode,
	type_: GraphQLObjectType
): boolean
	local typeConditionNode = fragment.typeCondition

	if not typeConditionNode then
		return true
	end

	-- ROBLOX FIXME Luau: Luau does not narrow to non-nil based on branch above
	local conditionalType =
		typeFromAST(exeContext.schema, typeConditionNode :: NamedTypeNode) :: GraphQLNamedType

	if conditionalType == type_ then
		return true
	end
	if isAbstractType(conditionalType) then
		-- ROBLOX TODO Luau: need return type constraint feature to not need manual annotation here. TS does some cool, fancy narrowing here.
		return exeContext.schema:isSubType(
			conditionalType :: GraphQLInterfaceType | GraphQLUnionType,
			type_ :: GraphQLObjectType
		)
	end

	return false
end

--[[*
--  * Implements the logic to compute the key of a given field's entry
--  *]]
function getFieldEntryKey(node: FieldNode): string
	return if node.alias then node.alias.value else node.name.value
end

--[[*
--  * Resolves the field on the given source object. In particular, this
--  * figures out the value that the field returns by calling its resolve function,
--  * then calls completeValue to complete promises, serialize scalars, or execute
--  * the sub-selection-set for objects.
--  *]]
function resolveField(
	exeContext: ExecutionContext,
	parentType: GraphQLObjectType,
	source: any,
	fieldNodes: Array<FieldNode>,
	path: Path
): PromiseOrValue<any>? -- ROBLOX TODO: added nilability here due to the void return below, upstream PR
	local fieldNode = fieldNodes[1]
	local fieldName = fieldNode.name.value

	local fieldDef = getFieldDef(exeContext.schema, parentType, fieldName)

	if not fieldDef then
		return
	end

	-- ROBLOX Luau FIXME: should narrow based on branch above
	local returnType = (fieldDef :: GraphQLField<any, any>).type
	local resolveFn = if (fieldDef :: GraphQLField<any, any>).resolve
		then (fieldDef :: GraphQLField<any, any>).resolve :: GraphQLFieldResolver<any, any>
		else exeContext.fieldResolver

	local info = buildResolveInfo(
		exeContext,
		fieldDef :: GraphQLField<any, any>,
		fieldNodes,
		parentType,
		path
	)

	-- Get the resolve function, regardless of if its result is normal or abrupt (error).
	local ok, resultOrError = pcall(function()
		-- Build a JS object of arguments from the field.arguments AST, using the
		-- variables scope to fulfill any variable references.
		-- TODO: find a way to memoize, in case this field is within a List type.
		local args = getArgumentValues(
			fieldDef :: GraphQLField<any, any>,
			fieldNodes[1],
			exeContext.variableValues
		)

		-- The resolve function's optional third argument is a context value that
		-- is provided to every resolve function within an execution. It is commonly
		-- used to represent an authenticated user, or request-specific caches.
		local contextValue = exeContext.contextValue

		-- ROBLOX FIXME Luau: needs normalization
		local result = (resolveFn :: (any, any, any, GraphQLResolveInfo) -> any)(
			source,
			args,
			contextValue,
			info
		)

		local completed
		if isPromise(result) then
			completed = result:andThen(function(resolved)
				return completeValue(exeContext, returnType, fieldNodes, info, path, resolved)
			end)
		else
			completed = completeValue(exeContext, returnType, fieldNodes, info, path, result)
		end

		if isPromise(completed) then
			-- Note: we don't rely on a `catch` method, but we do expect "thenable"
			-- to take a second callback for the error case.
			return completed:andThen(nil, function(rawError)
				local error_ = locatedError(rawError, fieldNodes, pathToArray(path))
				return handleFieldError(error_, returnType, exeContext)
			end)
		end
		return completed
	end)

	if not ok then
		local rawError = resultOrError
		local error_ = locatedError(rawError, fieldNodes, pathToArray(path))
		return handleFieldError(error_, returnType, exeContext)
	end

	return resultOrError
end

--[[*
--  * @internal
--  *]]
function buildResolveInfo(
	exeContext: ExecutionContext,
	fieldDef: GraphQLField<any, any>,
	fieldNodes: Array<FieldNode>,
	parentType: GraphQLObjectType,
	path: Path
): GraphQLResolveInfo
	-- The resolve function's optional fourth argument is a collection of
	-- information about the current execution state.
	return {
		fieldName = fieldDef.name,
		fieldNodes = fieldNodes,
		returnType = fieldDef.type,
		parentType = parentType,
		path = path,
		schema = exeContext.schema,
		fragments = exeContext.fragments,
		rootValue = exeContext.rootValue,
		operation = exeContext.operation,
		variableValues = exeContext.variableValues,
	}
end

function handleFieldError(
	error_: GraphQLError,
	returnType: GraphQLOutputType,
	exeContext: ExecutionContext
): typeof(NULL)
	-- If the field type is non-nullable, then it is resolved without any
	-- protection from errors, however it still properly locates the error.
	if isNonNullType(returnType) then
		error(error_)
	end

	-- Otherwise, error protection is applied, logging the error and resolving
	-- a null value for this field if one is encountered.
	table.insert(exeContext.errors, error_)
	return NULL
end

--[[*
--  * Implements the instructions for completeValue as defined in the
--  * "Field entries" section of the spec.
--  *
--  * If the field type is Non-Null, then this recursively completes the value
--  * for the inner type. It throws a field error if that completion returns null,
--  * as per the "Nullability" section of the spec.
--  *
--  * If the field type is a List, then this recursively completes the value
--  * for the inner type on each item in the list.
--  *
--  * If the field type is a Scalar or Enum, ensures the completed value is a legal
--  * value of the type by calling the `serialize` method of GraphQL type
--  * definition.
--  *
--  * If the field is an abstract type, determine the runtime type of the value
--  * and then complete based on that type
--  *
--  * Otherwise, the field type expects a sub-selection set, and will complete the
--  * value by evaluating all sub-selections.
--  *]]
function completeValue(
	exeContext: ExecutionContext,
	returnType: GraphQLOutputType,
	fieldNodes: Array<FieldNode>,
	info: GraphQLResolveInfo,
	path: Path,
	result: any
): PromiseOrValue<any>
	-- If result is an Error, throw a located error.
	if instanceof(result, Error) then
		error(result)
	end

	-- If field type is NonNull, complete for inner type, and throw field error
	-- if result is null.
	if isNonNullType(returnType) then
		-- ROBLOX TODO Luau: need return constraints so we can narrow: isNonNullType(type: unknown): type is GraphQLUnionType
		local completed = completeValue(
			exeContext,
			(returnType :: GraphQLNonNull<typeof(returnType)>).ofType,
			fieldNodes,
			info,
			path,
			result
		)

		-- ROBLOX deviation: checks for concrete nil or NULL sentinel
		if isNillish(completed) then
			error(
				Error.new(
					("Cannot return null for non-nullable field %s.%s."):format(
						info.parentType.name,
						info.fieldName
					)
				)
			)
		end

		return completed
	end

	-- If result value is null or undefined then return null.
	if isNillish(result) then
		return NULL
	end

	-- If field type is List, complete each item in the list with the inner type
	if isListType(returnType) then
		-- ROBLOX TODO Luau: need return constraints so we can narrow: isNonNullType(type: unknown): type is GraphQLUnionType
		return completeListValue(
			exeContext,
			returnType :: GraphQLList<typeof(returnType)>,
			fieldNodes,
			info,
			path,
			result
		)
	end

	-- If field type is a leaf type, Scalar or Enum, serialize to a valid value,
	-- returning null if serialization is not possible.
	if isLeafType(returnType) then
		-- ROBLOX TODO Luau: need return constraints so we can narrow: isNonNullType(type: unknown): type is GraphQLUnionType
		return completeLeafValue(returnType :: GraphQLLeafType, result)
	end

	-- If field type is an abstract type, Interface or Union, determine the
	-- runtime Object type and complete for that type.
	if isAbstractType(returnType) then
		-- ROBLOX TODO Luau: need return constraints so we can narrow: isNonNullType(type: unknown): type is GraphQLUnionType
		return completeAbstractValue(
			exeContext,
			returnType :: GraphQLAbstractType,
			fieldNodes,
			info,
			path,
			result
		)
	end

	-- If field type is Object, execute and complete all sub-selections.
	-- istanbul ignore else (See: 'https://github.com/graphql/graphql-js/issues/2618')
	-- ROBLOX TODO Luau: need return constraints so we can narrow: isUnionType(type: unknown): type is GraphQLUnionType
	if isObjectType(returnType) then
		-- ROBLOX TODO Luau: need return constraints so we can narrow: isNonNullType(type: unknown): type is GraphQLUnionType
		return completeObjectValue(
			exeContext,
			returnType :: GraphQLObjectType,
			fieldNodes,
			info,
			path,
			result
		)
	end

	invariant(false, "Cannot complete value of unexpected output type: " .. inspect(returnType))
	-- ROBLOX deviation START: Luau doesn't propagate noreturn/throws from invariant
	assert(false, "Cannot complete value of unexpected output type: " .. inspect(returnType))
	-- ROBLOX deviation END
end

--[[*
--  * Complete a list value by completing each item in the list with the
--  * inner type
--  *]]
function completeListValue(
	exeContext: ExecutionContext,
	returnType: GraphQLList<GraphQLOutputType>,
	fieldNodes: Array<FieldNode>,
	info: GraphQLResolveInfo,
	path: Path,
	result: any
): PromiseOrValue<Array<any>>
	-- ROBLOX deviation: Set isn't iterable, so resolve before continuing
	if instanceof(result, Set) then
		local iterableResult = {}
		for _, item in result do
			table.insert(iterableResult, item)
		end
		result = iterableResult
	end

	if not isIteratableObject(result) then
		error(
			GraphQLError.new(
				('Expected Iterable, but did not find one for field "%s.%s".'):format(
					info.parentType.name,
					info.fieldName
				)
			)
		)
	end

	-- This is specified as a simple map, however we're optimizing the path
	-- where the list contains no Promises by avoiding creating another Promise.
	local itemType = returnType.ofType
	local containsPromise = false
	-- ROBLOX deviation START: Promise.all does not accept non-promise values
	local containsNonPromise = false
	-- ROBLOX deviation END
	local completedResults = Array.from(result, function(item, index)
		-- No need to modify the info object containing the path,
		-- since from here on it is not ever accessed by resolver functions.
		local itemPath = addPath(path, index, nil)

		local ok, resultOrError = pcall(function()
			local completedItem
			if isPromise(item) then
				completedItem = item:andThen(function(resolved)
					return completeValue(exeContext, itemType, fieldNodes, info, itemPath, resolved)
				end)
			else
				completedItem = completeValue(
					exeContext,
					itemType,
					fieldNodes,
					info,
					itemPath,
					item
				)
			end

			if isPromise(completedItem) then
				containsPromise = true
				-- Note: we don't rely on a `catch` method, but we do expect "thenable"
				-- to take a second callback for the error case.
				return completedItem:andThen(nil, function(rawError)
					local error_ = locatedError(rawError, fieldNodes, pathToArray(itemPath))
					return handleFieldError(error_, itemType, exeContext)
				end)
			end
			-- ROBLOX deviation START: Promise.all does not accept non-promise values
			containsNonPromise = true
			-- ROBLOX deviation END
			return completedItem
		end)

		if not ok then
			local rawError = resultOrError
			local error_ = locatedError(rawError, fieldNodes, pathToArray(itemPath))
			return handleFieldError(error_, itemType, exeContext)
		end

		return resultOrError
	end)

	-- ROBLOX deviation START: if we have an array with promises and values, wrap the values in a promise
	if containsNonPromise and containsPromise then
		completedResults = Array.map(completedResults, function(value)
			return if isPromise(value) then value else Promise.resolve(value)
		end)
	end
	-- ROBLOX deviation END

	return if containsPromise then Promise.all(completedResults) else completedResults
end

--[[*
--  * Complete a Scalar or Enum by serializing to a valid value, returning
--  * null if serialization is not possible.
--  *]]
function completeLeafValue(returnType: GraphQLLeafType, result: any): any
	-- ROBLOX FIXME: besides normalization not unifying two callable fields as callable, see TODO in definition file around GraphQLScalarSerializer<> not including self param
	local serializedResult = (returnType :: any):serialize(result)

	if serializedResult == nil then
		error(
			Error.new(
				('Expected a value of type "%s" but '):format(inspect(returnType))
					.. ("received: %s"):format(inspect(result))
			)
		)
	end

	return serializedResult
end

--[[*
--  * Complete a value of an abstract type by determining the runtime object type
--  * of that value, then complete the value for that type.
--  *]]
function completeAbstractValue(
	exeContext: ExecutionContext,
	returnType: GraphQLAbstractType,
	fieldNodes: Array<FieldNode>,
	info: GraphQLResolveInfo,
	path: Path,
	result: any
): PromiseOrValue<ObjMap<any>>
	-- ROBLOX FIXME Luau: lack of ?? operator and `or` not unifying/normalizing means we take the runtime hit of the table lookup twice
	local resolveTypeFn = (
		if returnType.resolveType then returnType.resolveType else exeContext.typeResolver
	) :: GraphQLTypeResolver<any, any>
	local contextValue = exeContext.contextValue
	local runtimeType = resolveTypeFn(result, contextValue, info, returnType)

	-- ROBLOX TODO Luau: needs return type constraints to not need manual cast to Promise<>
	-- ROBLOX FIXME Luau: note that we can't do Promise<string?> correctly here, because our Promise type can't capture generics for andThen correctly
	if isPromise(runtimeType) then
		return (runtimeType :: Promise<any>):andThen(function(resolvedRuntimeType)
			return completeObjectValue(
				exeContext,
				ensureValidRuntimeType(
					resolvedRuntimeType,
					exeContext,
					returnType,
					fieldNodes,
					info,
					result
				),
				fieldNodes,
				info,
				path,
				result
			)
		end)
	end

	-- ROBLOX TODO Luau: needs return type constraints and type states to understand false branch of isPromise() above to not need manual cast to string?
	return completeObjectValue(
		exeContext,
		ensureValidRuntimeType(
			runtimeType :: string?,
			exeContext,
			returnType,
			fieldNodes,
			info,
			result
		),
		fieldNodes,
		info,
		path,
		result
	)
end

function ensureValidRuntimeType(
	runtimeTypeName: any,
	exeContext: ExecutionContext,
	returnType: GraphQLAbstractType,
	fieldNodes: Array<FieldNode>,
	info: GraphQLResolveInfo,
	result: any
): GraphQLObjectType
	if runtimeTypeName == nil then
		error(
			GraphQLError.new(
				(
					'Abstract type "%s" must resolve to an Object type at runtime for field "%s.%s". Either the "%s" type should provide a "resolveType" function or each possible type should provide an "isTypeOf" function.'
				):format(returnType.name, info.parentType.name, info.fieldName, returnType.name),
				fieldNodes
			)
		)
	end

	-- releases before 16.0.0 supported returning `GraphQLObjectType` from `resolveType`
	-- TODO: remove in 17.0.0 release
	if isObjectType(runtimeTypeName) then
		error(
			GraphQLError.new(
				"Support for returning GraphQLObjectType from resolveType was removed in graphql-js@16.0.0 please return type name instead."
			)
		)
	end

	if typeof(runtimeTypeName) ~= "string" then
		error(
			GraphQLError.new(
				(
					'Abstract type "%s" must resolve to an Object type at runtime for field "%s.%s" with '
				):format(returnType.name, info.parentType.name, info.fieldName)
					.. ('value %s, received "%s".'):format(
						inspect(result),
						inspect(runtimeTypeName)
					)
			)
		)
	end

	local runtimeType = exeContext.schema:getType(runtimeTypeName)
	if runtimeType == nil then
		error(
			GraphQLError.new(
				('Abstract type "%s" was resolve to a type "%s" that does not exist inside schema.'):format(
					returnType.name,
					runtimeTypeName
				),
				fieldNodes
			)
		)
	end

	if not isObjectType(runtimeType) then
		error(
			GraphQLError.new(
				('Abstract type "%s" was resolve to a non-object type "%s".'):format(
					returnType.name,
					runtimeTypeName
				),
				fieldNodes
			)
		)
	end

	-- ROBLOX TODO Luau: manually narrowing runtimeType here since Luau doesn't support constraint syntax
	if not exeContext.schema:isSubType(returnType, runtimeType :: GraphQLObjectType) then
		error(
			GraphQLError.new(
				('Runtime Object type "%s" is not a possible type for "%s".'):format(
					(runtimeType :: GraphQLObjectType).name,
					returnType.name
				),
				fieldNodes
			)
		)
	end

	return runtimeType :: GraphQLObjectType
end

--[[*
--  * Complete an Object value by executing all sub-selections.
--  *]]
function completeObjectValue(
	exeContext: ExecutionContext,
	returnType: GraphQLObjectType,
	fieldNodes: Array<FieldNode>,
	info: GraphQLResolveInfo,
	path: Path,
	result: any
): PromiseOrValue<ObjMap<any>>
	-- If there is an isTypeOf predicate function, call it with the
	-- current result. If isTypeOf returns false, then raise an error rather
	-- than continuing execution.
	if returnType.isTypeOf ~= nil then
		local isTypeOf = returnType.isTypeOf(returnType, result, exeContext.contextValue, info)

		if isPromise(isTypeOf) then
			-- ROBLOX TODO Luau: we needs a %checks annotation for functions like isPromise
			return (isTypeOf :: Promise<any>):andThen(function(resolvedIsTypeOf)
				if not resolvedIsTypeOf then
					error(invalidReturnTypeError(returnType, result, fieldNodes))
				end

				return collectAndExecuteSubfields(exeContext, returnType, fieldNodes, path, result)
			end)
		end

		if not isTypeOf then
			error(invalidReturnTypeError(returnType, result, fieldNodes))
		end
	end

	return collectAndExecuteSubfields(exeContext, returnType, fieldNodes, path, result)
end

function invalidReturnTypeError(
	returnType: GraphQLObjectType,
	result: any,
	fieldNodes: Array<FieldNode>
): GraphQLError
	return GraphQLError.new(
		('Expected value of type "%s" but got: %s.'):format(returnType.name, inspect(result)),
		fieldNodes
	)
end

function collectAndExecuteSubfields(
	exeContext: ExecutionContext,
	returnType: GraphQLObjectType,
	fieldNodes: Array<FieldNode>,
	path: Path,
	result: any
): PromiseOrValue<ObjMap<any>>
	-- Collect sub-fields to execute to complete this value.
	local subFieldNodes = collectSubfields(exeContext, returnType, fieldNodes)
	return executeFields(exeContext, returnType, result, path, subFieldNodes)
end

--[[
--	ROBLOX deviation: no hoisting in Lua so need to declare col
--  need to declare _collectSubfields before collectSubfields assignment
--]]
function _collectSubfields(
	exeContext: ExecutionContext,
	returnType: GraphQLObjectType,
	fieldNodes: Array<FieldNode>
	-- ROBLOX note: pulled in return type from 16.x.x that fixed an incorrect annotation in 15.x.x
): Map<string, Array<FieldNode>>
	local subFieldNodes = Map.new()
	local visitedFragmentNames = {}

	for _, node in ipairs(fieldNodes) do
		if node.selectionSet then
			subFieldNodes = collectFields(
				exeContext,
				returnType,
				node.selectionSet,
				subFieldNodes,
				visitedFragmentNames
			)
		end
	end

	return subFieldNodes
end
--[[*
--  * A memoized collection of relevant subfields with regard to the return
--  * type. Memoizing ensures the subfields are not repeatedly calculated, which
--  * saves overhead when resolving lists of values.
--  *]]
collectSubfields = memoize3(_collectSubfields)

--[[*
--  * If a resolveType function is not given, then a default resolve behavior is
--  * used which attempts two strategies:
--  *
--  * First, See if the provided value has a `__typename` field defined, if so, use
--  * that value as name of the resolved type.
--  *
--  * Otherwise, test each possible type for the abstract type by calling
--  * isTypeOf for the object being coerced, returning the first type that matches.
--  *]]
defaultTypeResolver = function(value, contextValue, info, abstractType)
	-- First, look for `__typename`.
	if isObjectLike(value) and typeof(value.__typename) == "string" then
		return value.__typename
	end

	-- Otherwise, test each possible type.
	local possibleTypes = info.schema:getPossibleTypes(abstractType)
	local promisedIsTypeOfResults = {}

	for i = 1, #possibleTypes do
		local type_ = possibleTypes[i]

		if type_.isTypeOf then
			local isTypeOfResult = type_:isTypeOf(value, contextValue, info)

			if isPromise(isTypeOfResult) then
				promisedIsTypeOfResults[i] = isTypeOfResult
			elseif isTypeOfResult then
				return type_.name
			end
		end
	end

	if #promisedIsTypeOfResults > 0 then
		return Promise.all(promisedIsTypeOfResults):andThen(function(isTypeOfResults)
			for i = 1, #isTypeOfResults do
				if isTypeOfResults[i] then
					return possibleTypes[i].name
				end
			end
			return nil -- ROBLOX deviation: no implicit return
		end)
	end
	return nil -- ROBLOX deviation: no implicit return
end

--[[*
--  * If a resolve function is not given, then a default resolve behavior is used
--  * which takes the property of the source object of the same name as the field
--  * and returns it as the result, or if it's a function, returns the result
--  * of calling that function while passing along args and context value.
--  *]]
-- ROBLOX TODO: the upstream return type annotation should be nil, since this resolve can fail
defaultFieldResolver = function(source: any, args, contextValue, info)
	-- ensure source is a value for which property access is acceptable.
	if isObjectLike(source) or typeof(source) == "function" then
		local property = source[info.fieldName]
		if typeof(property) == "function" then
			-- ROBLOX deviation: pass source as self
			return source[info.fieldName](source, args, contextValue, info)
		end
		return property
	end
	return nil -- ROBLOX deviation: no implicit return
end

--[[*
--  * This method looks up the field on the given type definition.
--  * It has special casing for the three introspection fields,
--  * __schema, __type and __typename. __typename is special because
--  * it can always be queried as a field, even in situations where no
--  * other fields are allowed, like on a Union. __schema and __type
--  * could get automatically added to the query type, but that would
--  * require mutating type definitions, which would cause issues.
--  *
--  * @internal
--  *]]
function getFieldDef(
	schema: GraphQLSchema,
	parentType: GraphQLObjectType,
	fieldName: string
): GraphQLField<any, any>?
	if fieldName == SchemaMetaFieldDef.name and schema:getQueryType() == parentType then
		return SchemaMetaFieldDef
	elseif fieldName == TypeMetaFieldDef.name and schema:getQueryType() == parentType then
		return TypeMetaFieldDef
	elseif fieldName == TypeNameMetaFieldDef.name then
		return TypeNameMetaFieldDef
	end

	-- ROBLOX deviation: getFields returns Map
	return parentType:getFields():get(fieldName)
end

return {
	execute = execute,
	executeSync = executeSync,
	assertValidExecutionArguments = assertValidExecutionArguments,
	buildExecutionContext = buildExecutionContext,
	collectFields = collectFields,
	buildResolveInfo = buildResolveInfo,
	getFieldDef = getFieldDef,
	defaultFieldResolver = defaultFieldResolver,
	defaultTypeResolver = defaultTypeResolver,
}
