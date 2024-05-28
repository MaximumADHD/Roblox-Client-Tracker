-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/getArgumentValues.ts
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Object = LuauPolyfill.Object
type Record<K, T> = { [K]: T } --[[ ROBLOX TODO: TS 'Record' built-in type is not available in Luau ]]
local exports = {}
local graphqlModule = require(Packages.GraphQL)
local valueFromAST = graphqlModule.valueFromAST
-- ROBLOX deviation START: import as types instead of locals
-- local GraphQLField = graphqlModule.GraphQLField
-- local GraphQLDirective = graphqlModule.GraphQLDirective
-- local DirectiveNode = graphqlModule.DirectiveNode
-- local FieldNode = graphqlModule.FieldNode
type GraphQLField<TSource, TContext, TArgs = any> = graphqlModule.GraphQLField<TSource, TContext, TArgs>
type GraphQLDirective = graphqlModule.GraphQLDirective
type DirectiveNode = graphqlModule.DirectiveNode
type FieldNode = graphqlModule.FieldNode
-- ROBLOX deviation END
local isNonNullType = graphqlModule.isNonNullType
local Kind = graphqlModule.Kind
-- ROBLOX deviation START: fix import
-- local print_ = graphqlModule.print_
local print_ = graphqlModule.print
-- ROBLOX deviation END
-- ROBLOX deviation START: import as type instead of local
-- local ArgumentNode = graphqlModule.ArgumentNode
type ArgumentNode = graphqlModule.ArgumentNode
-- ROBLOX deviation END
-- ROBLOX deviation START: fix imports
-- local createGraphQLError = require(script.Parent["errors.js"]).createGraphQLError
-- local inspect = require(script.Parent["inspect.js"]).inspect
local createGraphQLError = require(script.Parent.errors).createGraphQLError
local inspect = require(script.Parent.inspect).inspect
-- ROBLOX deviation END
-- ROBLOX deviation START: add additional imports
type Array<T> = LuauPolyfill.Array<T>
-- ROBLOX deviation END
--[[*
 * Prepares an object map of argument values given a list of argument
 * definitions and list of argument AST nodes.
 *
 * Note: The returned value is a plain Object with a prototype, since it is
 * exposed to user code. Care should be taken to not pull values from the
 * Object prototype.
 ]]
local function getArgumentValues(
	def: GraphQLField<any, any> | GraphQLDirective,
	node: FieldNode | DirectiveNode,
	variableValues_: Record<string, any>?
): Record<string, any>
	local variableValues: Record<string, any> = if variableValues_ ~= nil then variableValues_ else {}
	-- ROBLOX deviation START: add explicit type
	-- local variableMap: Record<string, any> = Array.reduce(Object.entries(variableValues), function(prev, ref0)
	local variableMap: Record<string, any> = Array.reduce(
		Object.entries(variableValues),
		function(prev: Record<string, any>, ref0)
			-- ROBLOX deviation END
			local key, value = table.unpack(ref0, 1, 2)
			return Object.assign({}, prev, { [tostring(key)] = value })
		end,
		{}
	) --[[ ROBLOX CHECK: check if 'Object.entries(variableValues)' is an Array ]]
	local coercedValues = {}
	local argumentNodes = if node.arguments ~= nil then node.arguments else {}
	-- ROBLOX deviation START: add explicit type
	-- local argNodeMap: Record<string, ArgumentNode> = Array.reduce(argumentNodes, function(prev, arg)
	local argNodeMap: Record<string, ArgumentNode> = Array.reduce(
		argumentNodes,
		function(prev: Record<string, ArgumentNode>, arg)
			-- ROBLOX deviation END
			return Object.assign({}, prev, { [tostring(arg.name.value)] = arg })
		end,
		{}
	) --[[ ROBLOX CHECK: check if 'argumentNodes' is an Array ]]
	-- ROBLOX deviation START: explicit type
	-- for _, ref in def.args do
	for _, ref in def.args :: Array<any> do
		-- ROBLOX deviation END
		local name, argType, defaultValue = ref.name, ref.type, ref.defaultValue
		local argumentNode = argNodeMap[tostring(name)]
		if not Boolean.toJSBoolean(argumentNode) then
			if defaultValue ~= nil then
				coercedValues[tostring(name)] = defaultValue
			elseif Boolean.toJSBoolean(isNonNullType(argType)) then
				error(
					createGraphQLError(
						('Argument "%s" of required type "%s" '):format(tostring(name), tostring(inspect(argType)))
							.. "was not provided.",
						{ nodes = { node } }
					)
				)
			end
			continue
		end
		local valueNode = argumentNode.value
		local isNull = valueNode.kind == Kind.NULL
		if valueNode.kind == Kind.VARIABLE then
			local variableName = valueNode.name.value
			if
				variableValues == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
				or variableMap[tostring(variableName)] == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
			then
				if defaultValue ~= nil then
					coercedValues[tostring(name)] = defaultValue
				elseif Boolean.toJSBoolean(isNonNullType(argType)) then
					error(
						createGraphQLError(
							('Argument "%s" of required type "%s" '):format(tostring(name), tostring(inspect(argType)))
								.. ('was provided the variable "$%s" which was not provided a runtime value.'):format(
									tostring(variableName)
								),
							{ nodes = { valueNode } }
						)
					)
				end
				continue
			end
			isNull = variableValues[tostring(variableName)] == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
		end
		-- ROBLOX deviation START: simplify
		-- if Boolean.toJSBoolean(if Boolean.toJSBoolean(isNull) then isNonNullType(argType) else isNull) then
		if isNull and isNonNullType(argType) then
			-- ROBLOX deviation END
			error(
				createGraphQLError(
					('Argument "%s" of non-null type "%s" '):format(tostring(name), tostring(inspect(argType)))
						.. "must not be null.",
					{ nodes = { valueNode } }
				)
			)
		end
		local coercedValue = valueFromAST(valueNode, argType, variableValues)
		if coercedValue == nil then
			-- Note: ValuesOfCorrectTypeRule validation should catch this before
			-- execution. This is a runtime check to ensure execution does not
			-- continue with an invalid argument value.
			error(
				createGraphQLError(
					('Argument "%s" has invalid value %s.'):format(tostring(name), tostring(print_(valueNode))),
					{ nodes = { valueNode } }
				)
			)
		end
		coercedValues[tostring(name)] = coercedValue
	end
	return coercedValues
end
exports.getArgumentValues = getArgumentValues
return exports
