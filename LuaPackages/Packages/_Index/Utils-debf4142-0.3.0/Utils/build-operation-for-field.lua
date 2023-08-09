-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/build-operation-for-field.ts
type void = nil --[[ ROBLOX FIXME: adding `void` type alias to make it easier to use Luau `void` equivalent when supported ]]
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Map = LuauPolyfill.Map
local Object = LuauPolyfill.Object
type Array<T> = LuauPolyfill.Array<T>
type Set<T> = LuauPolyfill.Set<T>
local exports = {}
local graphqlModule = require(Packages.GraphQL)
-- ROBLOX deviation START: import as type insteadof local
-- local GraphQLSchema = graphqlModule.GraphQLSchema
-- local GraphQLObjectType = graphqlModule.GraphQLObjectType
type GraphQLSchema = graphqlModule.GraphQLSchema
type GraphQLObjectType = graphqlModule.GraphQLObjectType
-- ROBLOX deviation END
local isObjectType = graphqlModule.isObjectType
local getNamedType = graphqlModule.getNamedType
local isUnionType = graphqlModule.isUnionType
-- ROBLOX deviation START: import as type instead of local
-- local OperationDefinitionNode = graphqlModule.OperationDefinitionNode
-- local VariableDefinitionNode = graphqlModule.VariableDefinitionNode
type OperationDefinitionNode = graphqlModule.OperationDefinitionNode
type VariableDefinitionNode = graphqlModule.VariableDefinitionNode
-- ROBLOX deviation END
local isNonNullType = graphqlModule.isNonNullType
-- ROBLOX deviation START: import as type instead of local
-- local SelectionNode = graphqlModule.SelectionNode
-- local InlineFragmentNode = graphqlModule.InlineFragmentNode
-- local GraphQLNamedType = graphqlModule.GraphQLNamedType
-- local SelectionSetNode = graphqlModule.SelectionSetNode
type SelectionNode = graphqlModule.SelectionNode
type InlineFragmentNode = graphqlModule.InlineFragmentNode
type GraphQLNamedType = graphqlModule.GraphQLNamedType
type SelectionSetNode = graphqlModule.SelectionSetNode
-- ROBLOX deviation END
local isScalarType = graphqlModule.isScalarType
-- ROBLOX deviation START: import as type instead of local
-- local TypeNode = graphqlModule.TypeNode
type TypeNode = graphqlModule.TypeNode
-- ROBLOX deviation END
local isListType = graphqlModule.isListType
-- ROBLOX deviation START: import as type instead of local
-- local ArgumentNode = graphqlModule.ArgumentNode
-- local GraphQLField = graphqlModule.GraphQLField
-- local GraphQLArgument = graphqlModule.GraphQLArgument
-- local GraphQLInputType = graphqlModule.GraphQLInputType
type ArgumentNode = graphqlModule.ArgumentNode
type GraphQLField<TSource, TContext, TArgs = any> = graphqlModule.GraphQLField<TSource, TContext, TArgs>
type GraphQLArgument = graphqlModule.GraphQLArgument
type GraphQLInputType = graphqlModule.GraphQLInputType
-- ROBLOX deviation END
-- ROBLOX deviation START: not needed
-- local GraphQLList = graphqlModule.GraphQLList
-- local ListTypeNode = graphqlModule.ListTypeNode
-- local GraphQLNonNull = graphqlModule.GraphQLNonNull
-- ROBLOX deviation END
-- ROBLOX deviation START: import as type instead of local
-- local NonNullTypeNode = graphqlModule.NonNullTypeNode
-- local OperationTypeNode = graphqlModule.OperationTypeNode
type NonNullTypeNode = graphqlModule.NonNullTypeNode
type OperationTypeNode = graphqlModule.OperationTypeNode
-- ROBLOX deviation END
local isInterfaceType = graphqlModule.isInterfaceType
local isEnumType = graphqlModule.isEnumType
local Kind = graphqlModule.Kind
-- ROBLOX deviation START: fix import
-- local rootTypesJsModule = require(script.Parent["rootTypes.js"])
local rootTypesJsModule = require(script.Parent.rootTypes)
-- ROBLOX deviation END
local getDefinedRootType = rootTypesJsModule.getDefinedRootType
local getRootTypeNames = rootTypesJsModule.getRootTypeNames
-- ROBLOX deviation START: additional types
type GraphQLUnionType = graphqlModule.GraphQLUnionType
-- ROBLOX deviation END
-- ROBLOX deviation START: add predecared variables
local buildOperationAndCollectVariables
local resolveVariable
local hasCircularRef
local resolveField
-- ROBLOX deviation END
-- ROBLOX deviation START: add helper value to prevent nil from removing key
local nillishValue = ({} :: any) :: nil
-- ROBLOX deviation END
local operationVariables: Array<VariableDefinitionNode> = {}
local fieldTypeMap = Map.new()
local function addOperationVariable(variable: VariableDefinitionNode)
	table.insert(operationVariables, variable) --[[ ROBLOX CHECK: check if 'operationVariables' is an Array ]]
end
local function resetOperationVariables()
	operationVariables = {}
end
local function resetFieldMap()
	fieldTypeMap = Map.new()
end
export type Skip = Array<string>
export type Force = Array<string>
export type Ignore = Array<string>
export type SelectedFields = { [string]: SelectedFields } | boolean
local function buildOperationNodeForField(ref0: {
	schema: GraphQLSchema,
	kind: OperationTypeNode,
	field: string,
	models: Array<string>?,
	ignore: Ignore?,
	depthLimit: number?,
	circularReferenceDepth: number?,
	argNames: Array<string>?,
	selectedFields: SelectedFields?,
})
	local schema, kind, field, models, ignore, depthLimit, circularReferenceDepth, argNames, selectedFields =
		ref0.schema,
		ref0.kind,
		ref0.field,
		ref0.models,
		if ref0.ignore == nil then {} else ref0.ignore,
		ref0.depthLimit,
		ref0.circularReferenceDepth,
		ref0.argNames,
		if ref0.selectedFields == nil then true else ref0.selectedFields
	resetOperationVariables()
	resetFieldMap()
	-- ROBLOX deviation START: needs cast
	-- local rootTypeNames = getRootTypeNames(schema)
	local rootTypeNames = getRootTypeNames(schema :: GraphQLSchema)
	-- ROBLOX deviation END
	local operationNode = buildOperationAndCollectVariables({
		-- ROBLOX deviation START: needs cast
		-- schema = schema,
		schema = schema :: GraphQLSchema,
		-- ROBLOX deviation END
		fieldName = field,
		-- ROBLOX deviation START: needs cast
		-- kind = kind,
		-- models = Boolean.toJSBoolean(models) and models or {},
		kind = kind :: OperationTypeNode,
		models = (if Boolean.toJSBoolean(models) then models else {}) :: Array<string>,
		-- ROBLOX deviation END
		ignore = ignore,
		-- ROBLOX deviation START: needs cast
		-- depthLimit = Boolean.toJSBoolean(depthLimit) and depthLimit or math.huge,
		depthLimit = (if Boolean.toJSBoolean(depthLimit) then depthLimit else math.huge) :: number,
		-- ROBLOX deviation END
		circularReferenceDepth = Boolean.toJSBoolean(circularReferenceDepth) and circularReferenceDepth or 1,
		argNames = argNames,
		selectedFields = selectedFields,
		rootTypeNames = rootTypeNames,
	}); -- attach variables
	-- ROBLOX deviation START: remove Array.spread
	-- (operationNode :: any).variableDefinitions = Array.concat({}, Array.spread(operationVariables))
	(operationNode :: any).variableDefinitions = Array.concat({}, operationVariables)
	-- ROBLOX deviation END
	resetOperationVariables()
	resetFieldMap()
	return operationNode
end
exports.buildOperationNodeForField = buildOperationNodeForField
-- ROBLOX deviation START: predeclare function
-- local function buildOperationAndCollectVariables(ref0: {
-- 	schema: GraphQLSchema,
-- 	fieldName: string,
-- 	kind: OperationTypeNode,
-- 	models: Array<string>,
-- 	ignore: Ignore,
-- 	depthLimit: number,
-- 	circularReferenceDepth: number,
-- 	argNames: Array<string>?,
-- 	selectedFields: SelectedFields,
-- 	rootTypeNames: Set<string>,
-- }): OperationDefinitionNode
-- ROBLOX NOTE: deviating bigger chunk of code. Otherwise StyLua messes up formatting for the undeviated code
function buildOperationAndCollectVariables(ref0: {
	schema: GraphQLSchema,
	fieldName: string,
	kind: OperationTypeNode,
	models: Array<string>,
	ignore: Ignore,
	depthLimit: number,
	circularReferenceDepth: number,
	argNames: Array<string>?,
	selectedFields: SelectedFields,
	rootTypeNames: Set<string>,
}): OperationDefinitionNode
	-- ROBLOX deviation END
	local schema, fieldName, kind, models, ignore, depthLimit, circularReferenceDepth, argNames, selectedFields, rootTypeNames =
		ref0.schema,
		ref0.fieldName,
		ref0.kind,
		ref0.models,
		ref0.ignore,
		ref0.depthLimit,
		ref0.circularReferenceDepth,
		ref0.argNames,
		ref0.selectedFields,
		ref0.rootTypeNames
	-- ROBLOX deviation START: needs cast
	-- local type_ = getDefinedRootType(schema, kind)
	local type_ = getDefinedRootType(schema, kind :: OperationTypeNode)
	-- ROBLOX deviation END
	-- ROBLOX deviation START: getFields returns a Map
	-- local field = type_:getFields()[tostring(fieldName)]
	local field = type_:getFields():get(fieldName)
	-- ROBLOX deviation END
	local operationName = ("%s_%s"):format(tostring(fieldName), tostring(kind))
	-- ROBLOX deviation START: check that field exists before acessing property
	-- if Boolean.toJSBoolean(field.args) then
	if field and field.args then
		-- ROBLOX deviation END
		for _, arg in field.args do
			local argName = arg.name
			-- ROBLOX deviation START: needs cast and simplify
			-- 			if
			-- 				Boolean.toJSBoolean(
			-- 					not Boolean.toJSBoolean(argNames) or Array.includes(argNames, argName) --[[ ROBLOX CHECK: check if 'argNames' is an Array ]]
			-- 				)
			-- 			then
			if not argNames or Array.includes(argNames :: Array<string>, argName) then
				-- ROBLOX deviation END
				addOperationVariable(resolveVariable(arg, argName))
			end
		end
	end
	return {
		kind = Kind.OPERATION_DEFINITION,
		-- ROBLOX deviation START: needs cast
		-- operation = kind,
		operation = kind :: OperationTypeNode,
		-- ROBLOX deviation END
		name = { kind = Kind.NAME, value = operationName },
		variableDefinitions = {},
		selectionSet = {
			kind = Kind.SELECTION_SET,
			selections = {
				resolveField({
					type = type_,
					-- ROBLOX deviation START: needs cast
					-- field = field,
					field = field :: GraphQLField<any, any>,
					-- ROBLOX deviation END
					models = models,
					firstCall = true,
					path = {},
					ancestors = {},
					ignore = ignore,
					depthLimit = depthLimit,
					circularReferenceDepth = circularReferenceDepth,
					schema = schema,
					depth = 0,
					argNames = argNames,
					selectedFields = selectedFields,
					rootTypeNames = rootTypeNames,
				}),
			},
		},
	}
end
local function resolveSelectionSet(ref0: {
	parent: GraphQLNamedType,
	type: GraphQLNamedType,
	models: Array<string>,
	path: Array<string>,
	ancestors: Array<GraphQLNamedType>,
	firstCall: boolean?,
	ignore: Ignore,
	depthLimit: number,
	circularReferenceDepth: number,
	schema: GraphQLSchema,
	depth: number,
	selectedFields: SelectedFields,
	argNames: Array<string>?,
	rootTypeNames: Set<string>,
}): SelectionSetNode | void
	local parent, type_, models, firstCall, path, ancestors, ignore, depthLimit, circularReferenceDepth, schema, depth, argNames, selectedFields, rootTypeNames =
		ref0.parent,
		ref0.type,
		ref0.models,
		ref0.firstCall,
		ref0.path,
		ref0.ancestors,
		ref0.ignore,
		ref0.depthLimit,
		ref0.circularReferenceDepth,
		ref0.schema,
		ref0.depth,
		ref0.argNames,
		ref0.selectedFields,
		ref0.rootTypeNames
	if
		typeof(selectedFields) == "boolean"
		and depth > depthLimit --[[ ROBLOX CHECK: operator '>' works only if either both arguments are strings or both are a number ]]
	then
		return
	end
	if Boolean.toJSBoolean(isUnionType(type_)) then
		-- ROBLOX deviation START: needs cast
		-- local types = type_:getTypes()
		local types = (type_ :: GraphQLUnionType):getTypes()
		-- ROBLOX deviation END
		return {
			kind = Kind.SELECTION_SET,
			selections = Array.filter(
				Array.map(
					Array.filter(types, function(t)
						-- ROBLOX deviation START: remove Array.spread and simplify
						-- 						return not Boolean.toJSBoolean(
						-- 							hasCircularRef(
						-- 								Array.concat({}, Array.spread(ancestors), { t }),
						-- 								{ depth = circularReferenceDepth }
						-- 							)
						-- 						)
						return not hasCircularRef(
							Array.concat({}, ancestors, { t }),
							{ depth = circularReferenceDepth }
						)
						-- ROBLOX deviation END
					end), --[[ ROBLOX CHECK: check if 'types' is an Array ]]
					function(t)
						return {
							kind = Kind.INLINE_FRAGMENT,
							typeCondition = {
								kind = Kind.NAMED_TYPE,
								name = { kind = Kind.NAME, value = t.name },
							},
							selectionSet = resolveSelectionSet({
								parent = type_,
								type = t,
								models = models,
								path = path,
								ancestors = ancestors,
								ignore = ignore,
								depthLimit = depthLimit,
								circularReferenceDepth = circularReferenceDepth,
								schema = schema,
								depth = depth,
								argNames = argNames,
								selectedFields = selectedFields,
								rootTypeNames = rootTypeNames,
							}) :: SelectionSetNode,
						}
					end
				),
				function(fragmentNode)
					-- ROBLOX deviation START: fix nillish comparisons and simplify
					-- 					return (
					-- 						if typeof(
					-- 								if typeof(if typeof(fragmentNode) == "table" then fragmentNode.selectionSet else nil)
					-- 										== "table"
					-- 									then (if typeof(fragmentNode) == "table" then fragmentNode.selectionSet else nil).selections
					-- 									else nil
					-- 							) == "table"
					-- 							then (if typeof(if typeof(fragmentNode) == "table" then fragmentNode.selectionSet else nil)
					-- 									== "table"
					-- 								then (if typeof(fragmentNode) == "table" then fragmentNode.selectionSet else nil).selections
					-- 								else nil).length
					-- 							else nil
					-- 					)
					-- 						> 0 --[[ ROBLOX CHECK: operator '>' works only if either both arguments are strings or both are a number ]]
					return typeof(fragmentNode) == "table"
						and fragmentNode.selectionSet ~= nillishValue
						and typeof(fragmentNode.selectionSet) == "table"
						and typeof(fragmentNode.selectionSet.selections) == "table"
						and #fragmentNode.selectionSet.selections > 0
					-- ROBLOX deviation END
				end
				-- ROBLOX deviation START: needs cast
				-- ),
			) :: Array<any>,
			-- ROBLOX deviation END
		}
	end
	if Boolean.toJSBoolean(isInterfaceType(type_)) then
		-- ROBLOX deviation START: getTypeMap returns a Map
		-- local types = Array.filter(Object.values(schema:getTypeMap()), function(t: any)
		local types = Array.filter(schema:getTypeMap():values(), function(t: any)
			-- ROBLOX deviation END
			local ref = isObjectType(t)
			return if Boolean.toJSBoolean(ref)
				then Array.includes(t:getInterfaces(), type_) --[[ ROBLOX CHECK: check if 't.getInterfaces()' is an Array ]]
				else ref
		end) --[[ ROBLOX CHECK: check if 'Object.values(schema.getTypeMap())' is an Array ]] :: Array<GraphQLObjectType>
		return {
			kind = Kind.SELECTION_SET,
			selections = Array.filter(
				Array.map(
					Array.filter(types, function(t)
						-- ROBLOX deviation START: remove Array.spread and simplify
						-- 						return not Boolean.toJSBoolean(
						-- 							hasCircularRef(
						-- 								Array.concat({}, Array.spread(ancestors), { t }),
						-- 								{ depth = circularReferenceDepth }
						-- 							)
						-- 						)
						return not hasCircularRef(
							Array.concat({}, ancestors, { t }),
							{ depth = circularReferenceDepth }
						)
						-- ROBLOX deviation END
					end), --[[ ROBLOX CHECK: check if 'types' is an Array ]]
					function(t)
						return {
							kind = Kind.INLINE_FRAGMENT,
							typeCondition = {
								kind = Kind.NAMED_TYPE,
								name = { kind = Kind.NAME, value = t.name },
							},
							selectionSet = resolveSelectionSet({
								parent = type_,
								type = t,
								models = models,
								path = path,
								ancestors = ancestors,
								ignore = ignore,
								depthLimit = depthLimit,
								circularReferenceDepth = circularReferenceDepth,
								schema = schema,
								depth = depth,
								argNames = argNames,
								selectedFields = selectedFields,
								rootTypeNames = rootTypeNames,
							}) :: SelectionSetNode,
						}
					end
				),
				function(fragmentNode)
					-- ROBLOX deviation START: fix nillish comparison and simplify
					-- 					return (
					-- 						if typeof(
					-- 								if typeof(if typeof(fragmentNode) == "table" then fragmentNode.selectionSet else nil)
					-- 										== "table"
					-- 									then (if typeof(fragmentNode) == "table" then fragmentNode.selectionSet else nil).selections
					-- 									else nil
					-- 							) == "table"
					-- 							then (if typeof(if typeof(fragmentNode) == "table" then fragmentNode.selectionSet else nil)
					-- 									== "table"
					-- 								then (if typeof(fragmentNode) == "table" then fragmentNode.selectionSet else nil).selections
					-- 								else nil).length
					-- 							else nil
					-- 					)
					-- 						> 0 --[[ ROBLOX CHECK: operator '>' works only if either both arguments are strings or both are a number ]]
					return if typeof(fragmentNode) == "table"
							and fragmentNode.selectionSet ~= nillishValue
							and typeof(fragmentNode.selectionSet) == "table"
							and typeof(fragmentNode.selectionSet.selections) == "table"
						then #fragmentNode.selectionSet.selections > 0
						else false
					-- ROBLOX deviation END
				end
				-- ROBLOX deviation START: needs cast
				-- ),
			) :: Array<any>,
			-- ROBLOX deviation END
		}
	end
	if
		Boolean.toJSBoolean((function()
			local ref = isObjectType(type_)
			return if Boolean.toJSBoolean(ref) then not Boolean.toJSBoolean(rootTypeNames:has(type_.name)) else ref
		end)())
	then
		local ref = Array.includes(ignore, type_.name) --[[ ROBLOX CHECK: check if 'ignore' is an Array ]]
		local isIgnored = Boolean.toJSBoolean(ref) and ref
			or Array.includes(
				ignore,
				-- ROBLOX deviation START: fix .length conversion
				-- ("%s.%s"):format(tostring(parent.name), tostring(path[tostring(path.length - 1)]))
				("%s.%s"):format(parent.name, tostring(path[#path]))
				-- ROBLOX deviation END
			) --[[ ROBLOX CHECK: check if 'ignore' is an Array ]]
		local isModel = Array.includes(models, type_.name) --[[ ROBLOX CHECK: check if 'models' is an Array ]]
		if
			Boolean.toJSBoolean((function()
				local ref = not Boolean.toJSBoolean(firstCall) and isModel
				return if Boolean.toJSBoolean(ref) then not Boolean.toJSBoolean(isIgnored) else ref
			end)())
		then
			return {
				kind = Kind.SELECTION_SET,
				selections = { { kind = Kind.FIELD, name = { kind = Kind.NAME, value = "id" } } },
			}
		end
		-- ROBLOX deviation START: needs cast
		-- local fields = type_:getFields()
		local fields = (type_ :: GraphQLObjectType):getFields()
		-- ROBLOX deviation END
		return {
			kind = Kind.SELECTION_SET,
			selections = Array.filter(
				Array.map(
					-- ROBLOX deviation START: fix .keys, Array.spread and Map accesing
					-- 					Array.filter(Object.keys(fields), function(fieldName)
					-- 						return not Boolean.toJSBoolean(
					-- 							hasCircularRef(
					-- 								Array.concat(
					-- 									{},
					-- 									Array.spread(ancestors),
					-- 									{ getNamedType(fields[tostring(fieldName)].type) }
					-- 								),
					-- 								{ depth = circularReferenceDepth }
					-- 							)
					-- 						)
					-- 					end), --[[ ROBLOX CHECK: check if 'Object.keys(fields)' is an Array ]]
					Array.filter(fields:keys(), function(fieldName)
						return not hasCircularRef(
							Array.concat(
								{},
								ancestors,
								{ getNamedType((fields:get(fieldName) :: GraphQLField<any, any>).type) }
							),
							{ depth = circularReferenceDepth }
						)
					end),
					-- ROBLOX deviation END
					-- ROBLOX deviation START: add explicit return type
					-- function(fieldName)
					function(fieldName): SelectionNode?
						-- ROBLOX deviation END
						local selectedSubFields = if typeof(selectedFields) == "table"
							then selectedFields[tostring(fieldName)]
							else true
						if Boolean.toJSBoolean(selectedSubFields) then
							return resolveField({
								-- ROBLOX deviation START: needs cast
								-- type = type_,
								-- field = fields[tostring(fieldName)],
								type = type_ :: GraphQLObjectType,
								field = fields:get(fieldName) :: GraphQLField<any, any>,
								-- ROBLOX deviation END
								models = models,
								-- ROBLOX deviation START: remove Array.spread
								-- path = Array.concat({}, Array.spread(path), { fieldName }),
								path = Array.concat({}, path, { fieldName }),
								-- ROBLOX deviation END
								ancestors = ancestors,
								ignore = ignore,
								depthLimit = depthLimit,
								circularReferenceDepth = circularReferenceDepth,
								schema = schema,
								depth = depth,
								argNames = argNames,
								selectedFields = selectedSubFields,
								rootTypeNames = rootTypeNames,
							})
						end
						-- ROBLOX deviation START: return nillishValue
						-- return nil
						return nillishValue :: SelectionNode?
						-- ROBLOX deviation END
					end
				),
				function(
					f
				): boolean --[[ ROBLOX FIXME: change to TSTypePredicate equivalent if supported ]] --[[ f is SelectionNode ]]
					-- ROBLOX deviation START: additional check for nillish value
					-- if
					-- 	f == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
					-- then
					if f == nil or f == nillishValue then
						-- ROBLOX deviation END
						return false
					elseif Array.indexOf(Object.keys(f), "selectionSet") ~= -1 then
						-- ROBLOX deviation START: fix .length conversion and simplify
						-- 						return not not Boolean.toJSBoolean(
						-- 							if typeof(if typeof(f.selectionSet) == "table" then f.selectionSet.selections else nil)
						-- 									== "table"
						-- 								then (if typeof(f.selectionSet) == "table" then f.selectionSet.selections else nil).length
						-- 								else nil
						-- 						)
						return Boolean.toJSBoolean(
							if typeof((f :: any).selectionSet) == "table"
									and typeof((f :: any).selectionSet.selections) == "table"
								then #(f :: any).selectionSet.selections
								else nil
						)
						-- ROBLOX deviation END
					end
					return true
				end
				-- ROBLOX deviation START: needs cast
				-- ),
			) :: Array<any>,
			-- ROBLOX deviation END
		}
	end
	-- ROBLOX deviation START: add explicit return
	return nil
	-- ROBLOX deviation END
end
-- ROBLOX deviation START: predeclare function
-- local function resolveVariable(arg: GraphQLArgument, name: string?): VariableDefinitionNode
function resolveVariable(arg: GraphQLArgument, name: string?): VariableDefinitionNode
	-- ROBLOX deviation END
	-- ROBLOX deviation START: pick the implementation types
	-- error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: TSDeclareFunction ]] --[[ function resolveVariableType(type: GraphQLList<any>): ListTypeNode; ]]
	-- error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: TSDeclareFunction ]] --[[ function resolveVariableType(type: GraphQLNonNull<any>): NonNullTypeNode; ]]
	-- error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: TSDeclareFunction ]] --[[ function resolveVariableType(type: GraphQLInputType): TypeNode; ]]
	-- local function resolveVariableType(type_): TypeNode
	local function resolveVariableType(type_: GraphQLInputType): TypeNode
		-- ROBLOX deviation END
		if Boolean.toJSBoolean(isListType(type_)) then
			return { kind = Kind.LIST_TYPE, type = resolveVariableType(type_.ofType) }
		end
		if Boolean.toJSBoolean(isNonNullType(type_)) then
			return {
				kind = Kind.NON_NULL_TYPE,
				-- for v16 compatibility
				type = resolveVariableType(type_.ofType) :: any,
			}
		end
		return { kind = Kind.NAMED_TYPE, name = { kind = Kind.NAME, value = type_.name } }
	end
	return {
		kind = Kind.VARIABLE_DEFINITION,
		variable = {
			kind = Kind.VARIABLE,
			name = { kind = Kind.NAME, value = Boolean.toJSBoolean(name) and name or arg.name },
		},
		type = resolveVariableType(arg.type),
	}
end
local function getArgumentName(name: string, path: Array<string>): string
	-- ROBLOX deviation START: remove Array.spread
	-- return Array.join(Array.concat({}, Array.spread(path), { name }), "_")
	return Array.join(Array.concat({}, path, { name }), "_")
	-- ROBLOX deviation END
end
-- ROBLOX deviation START: predeclare function
-- local function resolveField(ref0: {
-- 	type: GraphQLObjectType,
-- 	field: GraphQLField<any, any>,
-- 	models: Array<string>,
-- 	path: Array<string>,
-- 	ancestors: Array<GraphQLNamedType>,
-- 	firstCall: boolean?,
-- 	ignore: Ignore,
-- 	depthLimit: number,
-- 	circularReferenceDepth: number,
-- 	schema: GraphQLSchema,
-- 	depth: number,
-- 	selectedFields: SelectedFields,
-- 	argNames: Array<string>?,
-- 	rootTypeNames: Set<string>,
-- }): SelectionNode
-- ROBLOX NOTE: deviating bigger chunk of code. Otherwise StyLua messes up formatting for the undeviated code
function resolveField(ref0: {
	type: GraphQLObjectType,
	field: GraphQLField<any, any>,
	models: Array<string>,
	path: Array<string>,
	ancestors: Array<GraphQLNamedType>,
	firstCall: boolean?,
	ignore: Ignore,
	depthLimit: number,
	circularReferenceDepth: number,
	schema: GraphQLSchema,
	depth: number,
	selectedFields: SelectedFields,
	argNames: Array<string>?,
	rootTypeNames: Set<string>,
}): SelectionNode
	-- ROBLOX deviation END
	local type_, field, models, firstCall, path, ancestors, ignore, depthLimit, circularReferenceDepth, schema, depth, argNames, selectedFields, rootTypeNames =
		ref0.type,
		ref0.field,
		ref0.models,
		ref0.firstCall,
		ref0.path,
		ref0.ancestors,
		ref0.ignore,
		ref0.depthLimit,
		ref0.circularReferenceDepth,
		ref0.schema,
		ref0.depth,
		ref0.argNames,
		ref0.selectedFields,
		ref0.rootTypeNames
	local namedType = getNamedType(field.type)
	local args: Array<ArgumentNode> = {}
	local removeField = false
	-- ROBLOX deviation START: fix length conversion and simplify
	-- if Boolean.toJSBoolean(if Boolean.toJSBoolean(field.args) then field.args.length else field.args) then
	if Boolean.toJSBoolean(field.args) and #field.args ~= 0 then
		-- ROBLOX deviation END
		args = Array.filter(
			Array.map(field.args, function(arg)
				local argumentName = getArgumentName(arg.name, path)
				-- ROBLOX deviation START: fix analyze and simplify
				-- 				if
				-- 					Boolean.toJSBoolean(if Boolean.toJSBoolean(argNames)
				-- 						then not Boolean.toJSBoolean(
				-- 								Array.includes(argNames, argumentName) --[[ ROBLOX CHECK: check if 'argNames' is an Array ]]
				-- 							)
				-- 						else argNames)
				-- 				then
				if if argNames then not Array.includes(argNames, argumentName) else Boolean.toJSBoolean(argNames) then
					-- ROBLOX deviation END
					if Boolean.toJSBoolean(isNonNullType(arg.type)) then
						removeField = true
					end
					return nil :: any
				end
				if not Boolean.toJSBoolean(firstCall) then
					addOperationVariable(resolveVariable(arg, argumentName))
				end
				return {
					kind = Kind.ARGUMENT,
					name = { kind = Kind.NAME, value = arg.name },
					value = {
						kind = Kind.VARIABLE,
						name = { kind = Kind.NAME, value = getArgumentName(arg.name, path) },
					},
				}
			end), --[[ ROBLOX CHECK: check if 'field.args' is an Array ]]
			-- ROBLOX deviation START: use toJSBoolean
			-- Boolean
			Boolean.toJSBoolean
			-- ROBLOX deviation END
		)
	end
	if Boolean.toJSBoolean(removeField) then
		return nil :: any
	end
	-- ROBLOX deviation START: remove Array.spread
	-- local fieldPath = Array.concat({}, Array.spread(path), { field.name })
	local fieldPath = Array.concat({}, path, { field.name })
	-- ROBLOX deviation END
	local fieldPathStr = Array.join(fieldPath, ".") --[[ ROBLOX CHECK: check if 'fieldPath' is an Array ]]
	local fieldName = field.name
	if
		Boolean.toJSBoolean((function()
			local ref = fieldTypeMap:has(fieldPathStr)
			return if Boolean.toJSBoolean(ref) then fieldTypeMap:get(fieldPathStr) ~= tostring(field.type) else ref
		end)())
	then
		-- ROBLOX deviation START: fix operator and simplify
		-- fieldName += tostring(field.type :: any):replace("!", "NonNull")
		local replaced = tostring(field.type :: any):gsub("!", "NonNull")
		fieldName ..= replaced
		-- ROBLOX deviation END
	end
	fieldTypeMap:set(fieldPathStr, tostring(field.type))
	if not Boolean.toJSBoolean(isScalarType(namedType)) and not Boolean.toJSBoolean(isEnumType(namedType)) then
		-- ROBLOX deviation START: add missing code - js-to-lua issue https://github.com/Roblox/js-to-lua/issues/938
		local ref_ = resolveSelectionSet({
			parent = type_,
			type = namedType,
			models = models,
			firstCall = firstCall,
			path = fieldPath,
			ancestors = Array.concat({}, ancestors, { type_ }),
			ignore = ignore,
			depthLimit = depthLimit,
			circularReferenceDepth = circularReferenceDepth,
			schema = schema,
			depth = depth + 1,
			argNames = argNames,
			selectedFields = selectedFields,
			rootTypeNames = rootTypeNames,
		})
		local ref = if Boolean.toJSBoolean(ref_) then ref_ else nil
		-- ROBLOX deviation END
		return Object.assign(
			{},
			{ kind = Kind.FIELD, name = { kind = Kind.NAME, value = field.name } },
			fieldName ~= field.name and { alias = { kind = Kind.NAME, value = fieldName } },
			-- ROBLOX deviation START: use nillishValue
			-- { selectionSet = Boolean.toJSBoolean(ref) and ref or nil, arguments = args }
			{ selectionSet = Boolean.toJSBoolean(ref) and ref or nillishValue, arguments = args }
			-- ROBLOX deviation END
		)
	end
	return Object.assign(
		{},
		{ kind = Kind.FIELD, name = { kind = Kind.NAME, value = field.name } },
		fieldName ~= field.name and { alias = { kind = Kind.NAME, value = fieldName } },
		{ arguments = args }
	)
end
-- ROBLOX deviation START: predeclare function
-- local function hasCircularRef(types: Array<GraphQLNamedType>, config_: { depth: number }?): boolean
function hasCircularRef(types: Array<GraphQLNamedType>, config_: { depth: number }?): boolean
	-- ROBLOX deviation END
	local config: { depth: number } = if config_ ~= nil then config_ else { depth = 1 }
	-- ROBLOX deviation START: fix .length conversion
	-- local type_ = types[tostring(types.length - 1)]
	local type_ = types[#types]
	-- ROBLOX deviation END
	if Boolean.toJSBoolean(isScalarType(type_)) then
		return false
	end
	-- ROBLOX deviation START: fix .length conversion
	-- 	local size = Array
	-- 		.filter(types, function(t)
	-- 			return t.name == type_.name
	-- 		end) --[[ ROBLOX CHECK: check if 'types' is an Array ]]
	-- 		.length
	local size = #(Array.filter(types, function(t)
		return t.name == type_.name
	end))
	-- ROBLOX deviation END
	return size > config.depth --[[ ROBLOX CHECK: operator '>' works only if either both arguments are strings or both are a number ]]
end
return exports
