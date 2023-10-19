-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/visitResult.ts
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Map = LuauPolyfill.Map
local Object = LuauPolyfill.Object
local Set = LuauPolyfill.Set
type Array<T> = LuauPolyfill.Array<T>
type Map<T, U> = LuauPolyfill.Map<T, U>
type Set<T> = LuauPolyfill.Set<T>
type Record<K, T> = { [K]: T } --[[ ROBLOX TODO: TS 'Record' built-in type is not available in Luau ]]
local exports = {}
-- ROBLOX deviation START: fix module import
-- local getOperationASTFromRequest =
-- 	require(script.Parent["getOperationASTFromRequest.js"]).getOperationASTFromRequest
local getOperationASTFromRequest = require(script.Parent.getOperationASTFromRequest).getOperationASTFromRequest
-- ROBLOX deviation END
local graphqlModule = require(Packages.GraphQL)
-- ROBLOX deviation START: import as type instead of local
-- local GraphQLSchema = graphqlModule.GraphQLSchema
type GraphQLSchema = graphqlModule.GraphQLSchema
-- ROBLOX deviation END
local Kind = graphqlModule.Kind
-- ROBLOX deviation START: import as types instead of locals
-- local GraphQLObjectType = graphqlModule.GraphQLObjectType
-- local FieldNode = graphqlModule.FieldNode
-- local GraphQLOutputType = graphqlModule.GraphQLOutputType
type GraphQLObjectType = graphqlModule.GraphQLObjectType
type FieldNode = graphqlModule.FieldNode
type GraphQLOutputType = graphqlModule.GraphQLOutputType
-- ROBLOX deviation END
local isListType = graphqlModule.isListType
local getNullableType = graphqlModule.getNullableType
local isAbstractType = graphqlModule.isAbstractType
local isObjectType = graphqlModule.isObjectType
-- ROBLOX deviation START: import as types instead of locals
-- local OperationDefinitionNode = graphqlModule.OperationDefinitionNode
-- local GraphQLError = graphqlModule.GraphQLError
type OperationDefinitionNode = graphqlModule.OperationDefinitionNode
type GraphQLError = graphqlModule.GraphQLError
-- ROBLOX deviation END
local TypeNameMetaFieldDef = graphqlModule.TypeNameMetaFieldDef
-- ROBLOX deviation START: import as type instead of local
-- local FragmentDefinitionNode = graphqlModule.FragmentDefinitionNode
type FragmentDefinitionNode = graphqlModule.FragmentDefinitionNode
-- ROBLOX deviation END
local SchemaMetaFieldDef = graphqlModule.SchemaMetaFieldDef
-- ROBLOX deviation START: fix module impopot
-- local collectFieldsJsModule = require(script.Parent["collectFields.js"])
local collectFieldsJsModule = require(script.Parent.collectFields)
-- ROBLOX deviation END
local collectFields = collectFieldsJsModule.collectFields
local collectSubFields = collectFieldsJsModule.collectSubFields
-- ROBLOX deviation START: fix module import
-- local interfacesJsModule = require(script.Parent["Interfaces.js"])
local interfacesJsModule = require(script.Parent.Interfaces)
-- ROBLOX deviation END
-- ROBLOX deviation START: import as types instead of locals
-- local ExecutionRequest = interfacesJsModule.ExecutionRequest
-- local ExecutionResult = interfacesJsModule.ExecutionResult
type ExecutionRequest = interfacesJsModule.ExecutionRequest
type ExecutionResult = interfacesJsModule.ExecutionResult
-- ROBLOX deviation END
-- ROBLOX deviation START: fix import and import as type instead of local
-- local Maybe = require(script.Parent["types.js"]).Maybe
local typesModule = require(script.Parent.types)
type Maybe<T> = typesModule.Maybe<T>
-- ROBLOX deviation END
export type ValueVisitor = (value: any) -> any
export type ObjectValueVisitor = { __enter: ValueVisitor?, __leave: ValueVisitor? } & Record<string, ValueVisitor>
export type ResultVisitorMap = Record<string, ValueVisitor | ObjectValueVisitor>
export type ErrorVisitor = (error_: any, pathIndex: number) -> GraphQLError
export type ErrorVisitorMap =
	{ __unpathed: ((error_: any) -> GraphQLError)? }
	& Record<string, Record<string, ErrorVisitor>>
type SegmentInfo = { type: GraphQLObjectType, fieldName: string, pathIndex: number }
type ErrorInfo = {
	segmentInfoMap: Map<GraphQLError, Array<SegmentInfo>>,
	unpathedErrors: Set<GraphQLError>,
}
type SortedErrors = {
	errorMap: Record<string, Array<GraphQLError>>,
	unpathedErrors: Set<GraphQLError>,
}
-- ROBLOX deviation START: add additional types
type ReadonlyArray<T> = Array<T>
-- ROBLOX deviation END
-- ROBLOX deviation START: add additional imports
local NULL = graphqlModule.NULL
-- ROBLOX deviation END
-- ROBLOX deviation START: add predefine variables
local visitRoot
local visitErrorsByType
local visitObjectValue
local sortErrorsByPathSegment
local updateObject
local addPathSegmentInfo
local visitFieldValue
-- ROBLOX deviation END
local function visitData(data: any, enter: ValueVisitor?, leave: ValueVisitor?): any
	if Boolean.toJSBoolean(Array.isArray(data)) then
		return Array.map(data, function(value)
			return visitData(value, enter, leave)
		end) --[[ ROBLOX CHECK: check if 'data' is an Array ]]
	elseif typeof(data) == "table" then
		local newData = if enter ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
			then enter(data)
			else data
		if
			newData ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
		then
			for key in newData do
				local value = newData[tostring(key)]
				-- ROBLOX deviation START: Object.defineProperty not available in Luau
				-- Object.defineProperty(newData, key, { value = visitData(value, enter, leave) })
				newData[key] = visitData(value, enter, leave)
				-- ROBLOX deviation END
			end
		end
		return if leave ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
			then leave(newData)
			else newData
	end
	return data
end
exports.visitData = visitData
local function visitErrors(
	errors: ReadonlyArray<GraphQLError>,
	visitor: (error_: any) -> GraphQLError
): Array<GraphQLError>
	return Array.map(errors, function(error_)
		return visitor(error_)
	end) --[[ ROBLOX CHECK: check if 'errors' is an Array ]]
end
exports.visitErrors = visitErrors
local function visitResult(
	result: ExecutionResult,
	request: ExecutionRequest,
	schema: GraphQLSchema,
	resultVisitorMap: ResultVisitorMap?,
	errorVisitorMap: ErrorVisitorMap?
): any
	local fragments = Array.reduce(request.document.definitions, function(acc, def)
		if def.kind == Kind.FRAGMENT_DEFINITION then
			acc[tostring(def.name.value)] = def
		end
		return acc
	end, {}) --[[ ROBLOX CHECK: check if 'request.document.definitions' is an Array ]]
	-- ROBLOX deviation START: simplify and cast type
	-- local variableValues = Boolean.toJSBoolean(request.variables) and request.variables or {}
	local variableValues = (
		if Boolean.toJSBoolean(request.variables) then request.variables else {}
	) :: Record<string, any>
	-- ROBLOX deviation END
	local errorInfo: ErrorInfo = { segmentInfoMap = Map.new(), unpathedErrors = Set.new() }
	local data = result.data
	local errors = result.errors
	local visitingErrors = errors ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
		and errorVisitorMap ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
	local operationDocumentNode = getOperationASTFromRequest(request)
	if
		data ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
		and operationDocumentNode ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
	then
		result.data = visitRoot(
			data,
			operationDocumentNode,
			schema,
			fragments,
			variableValues,
			resultVisitorMap,
			if Boolean.toJSBoolean(visitingErrors) then errors else nil,
			errorInfo
		)
	end
	if
		Boolean.toJSBoolean(errors ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]] and errorVisitorMap)
	then
		-- ROBLOX deviation START: fix as this fails with union of Record and object
		-- result.errors = visitErrorsByType(errors, errorVisitorMap, errorInfo)
		result.errors = visitErrorsByType(errors, errorVisitorMap :: Record<string, any>, errorInfo)
		-- ROBLOX deviation END
	end
	return result
end
exports.visitResult = visitResult
-- ROBLOX deviation START: predeclare function
-- local function visitErrorsByType(
function visitErrorsByType(
	-- ROBLOX deviation END
	errors: ReadonlyArray<GraphQLError>,
	errorVisitorMap: ErrorVisitorMap,
	errorInfo: ErrorInfo
): Array<GraphQLError>
	local segmentInfoMap = errorInfo.segmentInfoMap
	local unpathedErrors = errorInfo.unpathedErrors
	-- ROBLOX deviation START: cast as we can't access extended Record type
	-- local unpathedErrorVisitor = errorVisitorMap["__unpathed"]
	local unpathedErrorVisitor = (errorVisitorMap :: any)["__unpathed"]
	-- ROBLOX deviation END
	return Array.map(errors, function(originalError)
		local pathSegmentsInfo = segmentInfoMap:get(originalError)
		local newError = if pathSegmentsInfo == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
			then originalError
			-- ROBLOX deviation START: use reduce + reverse + concat instead of reduceRight - see https://github.com/Roblox/luau-polyfill/issues/175 for reduceRight support
			-- 			else pathSegmentsInfo:reduceRight(function(acc, segmentInfo)
			-- 				local typeName = segmentInfo.type.name
			-- 				local typeVisitorMap = errorVisitorMap[tostring(typeName)]
			-- 				if
			-- 					typeVisitorMap == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
			-- 				then
			-- 					return acc
			-- 				end
			-- 				local errorVisitor = typeVisitorMap[tostring(segmentInfo.fieldName)]
			-- 				return if errorVisitor == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
			-- 					then acc
			-- 					else errorVisitor(acc, segmentInfo.pathIndex)
			-- 			end, originalError)
			else Array.reduce(
				Array.reverse(Array.concat({}, pathSegmentsInfo)),
				function(acc, segmentInfo)
					local typeName = segmentInfo.type.name
					-- ROBLOX FIXME Luau: can't access extended Record type
					local typeVisitorMap = (errorVisitorMap :: any)[typeName]
					if typeVisitorMap == nil then
						return acc
					end
					local errorVisitor = typeVisitorMap[tostring(segmentInfo.fieldName)]
					return if errorVisitor == nil then acc else errorVisitor(acc, segmentInfo.pathIndex)
				end,
				-- ROBLOX deviation END
				originalError
			)
		-- ROBLOX deviation END
		if
			Boolean.toJSBoolean(
				if Boolean.toJSBoolean(unpathedErrorVisitor)
					then unpathedErrors:has(originalError)
					else unpathedErrorVisitor
			)
		then
			return unpathedErrorVisitor(newError)
		end
		return newError
	end) --[[ ROBLOX CHECK: check if 'errors' is an Array ]]
end
-- ROBLOX deviation START: cast type
-- local function getOperationRootType(schema: GraphQLSchema, operationDef: OperationDefinitionNode)
local function getOperationRootType(
	schema: GraphQLSchema,
	operationDef: OperationDefinitionNode
): Maybe<GraphQLObjectType>
	-- ROBLOX deviation END
	local condition_ = operationDef.operation
	if condition_ == "query" then
		return schema:getQueryType()
	elseif condition_ == "mutation" then
		return schema:getMutationType()
	elseif condition_ == "subscription" then
		return schema:getSubscriptionType()
	end
	-- ROBLOX deviation START: add explicit return
	return nil
	-- ROBLOX deviation END
end
-- ROBLOX deviation START: predeclare function
-- local function visitRoot(
function visitRoot(
	-- ROBLOX deviation END
	root: any,
	operation: OperationDefinitionNode,
	schema: GraphQLSchema,
	fragments: Record<string, FragmentDefinitionNode>,
	variableValues: Record<string, any>,
	resultVisitorMap: Maybe<ResultVisitorMap>,
	errors: Maybe<ReadonlyArray<GraphQLError>>,
	errorInfo: ErrorInfo
): any
	local operationRootType = getOperationRootType(schema, operation) :: any
	local collectedFields = collectFields(
		schema,
		fragments,
		variableValues,
		operationRootType,
		operation.selectionSet,
		Map.new(),
		Set.new()
	)
	return visitObjectValue(
		root,
		operationRootType,
		collectedFields,
		schema,
		fragments,
		variableValues,
		resultVisitorMap,
		-- ROBLOX deviation START: add 1 to initial value
		-- 		0,
		1,
		-- ROBLOX deviation END
		errors,
		errorInfo
	)
end
-- ROBLOX deviation START: predeclare function
-- local function visitObjectValue(
function visitObjectValue(
	-- ROBLOX deviation END
	object: Record<string, any>,
	-- ROBLOX deviation START: cast type
	-- 	type_,
	type_: GraphQLObjectType,
	-- ROBLOX deviation END
	fieldNodeMap: Map<string, Array<FieldNode>>,
	schema: GraphQLSchema,
	fragments: Record<string, FragmentDefinitionNode>,
	variableValues: Record<string, any>,
	resultVisitorMap: Maybe<ResultVisitorMap>,
	pathIndex: number,
	errors: Maybe<ReadonlyArray<GraphQLError>>,
	errorInfo: ErrorInfo
): Record<string, any>
	local fieldMap = type_:getFields()
	-- ROBLOX deviation START: simplify and loosen type
	-- 	local typeVisitorMap = if typeof(resultVisitorMap) == "table"
	-- 		then resultVisitorMap[type_.name]
	-- 		else nil :: ObjectValueVisitor
	local typeVisitorMap = (
		if typeof(resultVisitorMap) == "table" then resultVisitorMap[type_.name] else nil
	) :: ObjectValueVisitor?
	-- ROBLOX deviation END
	-- ROBLOX deviation START: simplify and loosen type
	-- local enterObject = if typeof(typeVisitorMap) == "table" then typeVisitorMap.__enter else nil :: ValueVisitor
	local enterObject = (if typeof(typeVisitorMap) == "table" then typeVisitorMap.__enter else nil) :: ValueVisitor?
	-- ROBLOX deviation END
	local newObject = if enterObject ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
		then enterObject(object)
		else object
	local sortedErrors: SortedErrors
	local errorMap: Maybe<Record<string, Array<GraphQLError>>> = nil
	if
		errors ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
	then
		sortedErrors = sortErrorsByPathSegment(errors, pathIndex)
		errorMap = sortedErrors.errorMap
		for _, error_ in sortedErrors.unpathedErrors do
			errorInfo.unpathedErrors:add(error_)
		end
	end
	for _, ref in fieldNodeMap do
		local responseKey, subFieldNodes = table.unpack(ref, 1, 2)
		local fieldName = subFieldNodes[
			1 --[[ ROBLOX adaptation: added 1 to array index ]]
		].name.value
		-- ROBLOX deviation START: value is checked to be not nil
		-- local fieldType = if typeof(fieldMap[tostring(fieldName)]) == "table"
		-- then fieldMap[tostring(fieldName)].type
		local fieldType = if typeof(fieldMap:get(fieldName)) == "table"
			then (fieldMap:get(fieldName) :: any).type
			-- ROBLOX deviation END
			else nil
		if
			fieldType == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
		then
			local condition_ = fieldName
			if condition_ == "__typename" then
				fieldType = TypeNameMetaFieldDef.type
			elseif condition_ == "__schema" then
				fieldType = SchemaMetaFieldDef.type
			end
		end
		local newPathIndex = pathIndex + 1
		local fieldErrors: Array<GraphQLError> | nil
		-- ROBLOX deviation START: check for loose equality
		-- if Boolean.toJSBoolean(errorMap) then
		if errorMap then
			-- ROBLOX deviation END
			fieldErrors = errorMap[tostring(responseKey)]
			if
				fieldErrors ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
			then
				errorMap[tostring(responseKey)] = nil
			end
			addPathSegmentInfo(type_, fieldName, newPathIndex, fieldErrors, errorInfo)
		end
		local newValue = visitFieldValue(
			object[tostring(responseKey)],
			fieldType,
			subFieldNodes,
			schema,
			fragments,
			variableValues,
			resultVisitorMap,
			newPathIndex,
			fieldErrors,
			errorInfo
		)
		-- ROBLOX deviation START: cast type
		-- updateObject(newObject, responseKey, newValue, typeVisitorMap, fieldName)
		updateObject(newObject, responseKey, newValue, typeVisitorMap :: ObjectValueVisitor, fieldName)
		-- ROBLOX deviation END
	end
	local oldTypename = newObject.__typename
	if
		oldTypename ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
	then
		-- ROBLOX deviation START: cast type
		-- updateObject(newObject, "__typename", oldTypename, typeVisitorMap, "__typename")
		updateObject(newObject, "__typename", oldTypename, typeVisitorMap :: ObjectValueVisitor, "__typename")
		-- ROBLOX deviation END
	end
	-- ROBLOX deviation START: do not use toJSBoolean
	-- if Boolean.toJSBoolean(errorMap) then
	if errorMap then
		-- ROBLOX deviation END
		for errorsKey in errorMap do
			-- ROBLOX deviation START:  renamed to errors_ to avoid shadowing
			-- 			local errors = errorMap[tostring(errorsKey)]
			-- 			for _, error_ in errors do
			local errors_ = errorMap[errorsKey]
			for _, error_ in errors_ do
				-- ROBLOX deviation END
				errorInfo.unpathedErrors:add(error_)
			end
		end
	end
	-- ROBLOX deviation START: loosen type
	-- local leaveObject = if typeof(typeVisitorMap) == "table" then typeVisitorMap.__leave else nil :: ValueVisitor
	local leaveObject = (if typeof(typeVisitorMap) == "table" then typeVisitorMap.__leave else nil) :: ValueVisitor?
	-- ROBLOX deviation END
	return if leaveObject ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
		then leaveObject(newObject)
		else newObject
end
-- ROBLOX deviation START: predeclare function
-- local function updateObject(
function updateObject(
	-- ROBLOX deviation END
	object: Record<string, any>,
	responseKey: string,
	newValue: any,
	typeVisitorMap: ObjectValueVisitor,
	fieldName: string
): ()
	if
		typeVisitorMap == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
	then
		object[tostring(responseKey)] = newValue
		return
	end
	-- ROBLOX deviation START: cast type as we cannot access extended Record type
	-- local fieldVisitor = typeVisitorMap[tostring(fieldName)]
	local fieldVisitor = (typeVisitorMap :: any)[fieldName]
	-- ROBLOX deviation END
	if
		fieldVisitor == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
	then
		object[tostring(responseKey)] = newValue
		return
	end
	local visitedValue = fieldVisitor(newValue)
	if visitedValue == nil then
		object[tostring(responseKey)] = nil
		return
	end
	object[tostring(responseKey)] = visitedValue
end
local function visitListValue(
	list: Array<any>,
	returnType: GraphQLOutputType,
	fieldNodes: Array<FieldNode>,
	schema: GraphQLSchema,
	fragments: Record<string, FragmentDefinitionNode>,
	variableValues: Record<string, any>,
	resultVisitorMap: Maybe<ResultVisitorMap>,
	pathIndex: number,
	errors: ReadonlyArray<GraphQLError>,
	errorInfo: ErrorInfo
): Array<any>
	return Array.map(list, function(listMember)
		return visitFieldValue(
			listMember,
			returnType,
			fieldNodes,
			schema,
			fragments,
			variableValues,
			resultVisitorMap,
			pathIndex + 1,
			errors,
			errorInfo
		)
	end) --[[ ROBLOX CHECK: check if 'list' is an Array ]]
end
-- ROBLOX deviation START: predeclare function
-- local function visitFieldValue(
function visitFieldValue(
	-- ROBLOX deviation END
	value: any,
	returnType: GraphQLOutputType,
	fieldNodes: Array<FieldNode>,
	schema: GraphQLSchema,
	fragments: Record<string, FragmentDefinitionNode>,
	variableValues: Record<string, any>,
	resultVisitorMap: Maybe<ResultVisitorMap>,
	pathIndex: number,
	-- ROBLOX deviation START: narrow type
	-- errors_: (ReadonlyArray<GraphQLError> | nil)?,
	errors_: ReadonlyArray<GraphQLError>?,
	-- ROBLOX deviation END
	errorInfo: ErrorInfo
): any
	-- ROBLOX deviation START: narrow type
	-- local errors: ReadonlyArray<GraphQLError> | nil = if errors_ ~= nil then errors_ else {}
	local errors: ReadonlyArray<GraphQLError> = if errors_ ~= nil then errors_ else {}
	-- ROBLOX deviation END
	if
		value == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
		-- ROBLOX deviation START: add check for NULL type in graphql-lua
		or value == NULL
		-- ROBLOX deviation END
	then
		return value
	end
	local nullableType = getNullableType(returnType)
	if Boolean.toJSBoolean(isListType(nullableType)) then
		return visitListValue(
			value :: Array<any>,
			nullableType.ofType,
			fieldNodes,
			schema,
			fragments,
			variableValues,
			resultVisitorMap,
			pathIndex,
			errors,
			errorInfo
		)
	elseif Boolean.toJSBoolean(isAbstractType(nullableType)) then
		local finalType = schema:getType(value.__typename) :: GraphQLObjectType
		local collectedFields = collectSubFields(schema, fragments, variableValues, finalType, fieldNodes)
		return visitObjectValue(
			value,
			finalType,
			collectedFields,
			schema,
			fragments,
			variableValues,
			resultVisitorMap,
			pathIndex,
			errors,
			errorInfo
		)
	elseif Boolean.toJSBoolean(isObjectType(nullableType)) then
		local collectedFields = collectSubFields(schema, fragments, variableValues, nullableType, fieldNodes)
		return visitObjectValue(
			value,
			nullableType,
			collectedFields,
			schema,
			fragments,
			variableValues,
			resultVisitorMap,
			pathIndex,
			errors,
			errorInfo
		)
	end
	local typeVisitorMap = if typeof(resultVisitorMap) == "table"
		then resultVisitorMap[nullableType.name]
		-- ROBLOX deviation START: loosen type
		-- else nil :: ValueVisitor
		else nil :: ValueVisitor?
	-- ROBLOX deviation END
	if
		typeVisitorMap == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
	then
		return value
	end
	-- ROBLOX deviation START: already checked typeVisitorMap is not null
	-- local visitedValue = typeVisitorMap(value)
	local visitedValue = (typeVisitorMap :: ValueVisitor)(value)
	-- ROBLOX deviation END
	return if visitedValue == nil then value else visitedValue
end
-- ROBLOX deviation START: predeclare function
-- local function sortErrorsByPathSegment(errors: ReadonlyArray<GraphQLError>, pathIndex: number): SortedErrors
function sortErrorsByPathSegment(errors: ReadonlyArray<GraphQLError>, pathIndex: number): SortedErrors
	-- ROBLOX deviation END
	-- ROBLOX deviation START: replace Object.create
	-- local errorMap = Object.create(nil)
	local errorMap = {}
	-- ROBLOX deviation END
	local unpathedErrors: Set<GraphQLError> = Set.new()
	for _, error_ in errors do
		local pathSegment = if typeof(error_.path) == "table" then error_.path[pathIndex] else nil
		if
			pathSegment == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
		then
			unpathedErrors:add(error_)
			continue
		end
		if Array.indexOf(Object.keys(errorMap), tostring(pathSegment)) ~= -1 then
			table.insert(errorMap[tostring(pathSegment)], error_) --[[ ROBLOX CHECK: check if 'errorMap[pathSegment]' is an Array ]]
		else
			errorMap[tostring(pathSegment)] = { error_ }
		end
	end
	return { errorMap = errorMap, unpathedErrors = unpathedErrors }
end
-- ROBLOX deviation START: add predeclare variables
-- local function addPathSegmentInfo(
function addPathSegmentInfo(
	-- ROBLOX deviation END
	-- ROBLOX deviation START: declare type
	-- type_,
	type_: GraphQLObjectType,
	-- ROBLOX deviation END
	fieldName: string,
	pathIndex: number,
	errors_: ReadonlyArray<GraphQLError>?,
	errorInfo: ErrorInfo
)
	local errors: ReadonlyArray<GraphQLError> = if errors_ ~= nil then errors_ else {}
	for _, error_ in errors do
		local segmentInfo = { type = type_, fieldName = fieldName, pathIndex = pathIndex }
		local pathSegmentsInfo = errorInfo.segmentInfoMap:get(error_)
		if
			pathSegmentsInfo == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
		then
			errorInfo.segmentInfoMap:set(error_, { segmentInfo })
		else
			table.insert(pathSegmentsInfo, segmentInfo) --[[ ROBLOX CHECK: check if 'pathSegmentsInfo' is an Array ]]
		end
	end
end
return exports
