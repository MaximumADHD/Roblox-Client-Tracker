-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/astFromValueUntyped.ts
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
type Array<T> = LuauPolyfill.Array<T>
local exports = {}
-- ROBLOX deviation START: not needed - js-to-lua issue: https://github.com/Roblox/js-to-lua/issues/919
-- local JestGlobals = require(Packages.Dev.JestGlobals)
-- local test = JestGlobals.test
-- ROBLOX deviation END
local graphqlModule = require(Packages.GraphQL)
local Kind = graphqlModule.Kind
-- ROBLOX deviation START: import types
-- local ObjectFieldNode = graphqlModule.ObjectFieldNode
-- local ValueNode = graphqlModule.ValueNode
type ObjectFieldNode = graphqlModule.ObjectFieldNode
type ValueNode = graphqlModule.ValueNode
-- ROBLOX deviation END
-- ROBLOX deviation START: add additional imports
local Error = LuauPolyfill.Error
local Number = LuauPolyfill.Number
local Object = LuauPolyfill.Object
local TypeError = Error
local RegExp = require(Packages.LuauRegExp)
-- ROBLOX deviation END
-- ROBLOX deviation START: predeclare variables
local integerStringRegExp
-- ROBLOX deviation END
-- ROBLOX deviation START: add isFinite polyfill
local function isFinite(val: unknown): boolean
	local ok, res = pcall(function()
		local asNumber = tonumber(val)

		if Number.isNaN(asNumber) or asNumber == math.huge or asNumber == -math.huge then
			return false
		end
		return true
	end)
	if not ok then
		return false
	end
	return res
end
-- ROBLOX deviation END
--[[*
 * Produces a GraphQL Value AST given a JavaScript object.
 * Function will match JavaScript/JSON values to GraphQL AST schema format
 * by using the following mapping.
 *
 * | JSON Value    | GraphQL Value        |
 * | ------------- | -------------------- |
 * | Object        | Input Object         |
 * | Array         | List                 |
 * | Boolean       | Boolean              |
 * | String        | String               |
 * | Number        | Int / Float          |
 * | null          | NullValue            |
 *
 ]]
local function astFromValueUntyped(
	value: any
): ValueNode | nil --[[ ROBLOX CHECK: verify if `null` wasn't used differently than `undefined` ]]
	-- only explicit null, not undefined, NaN
	-- ROBLOX deviation START: use Object.None
	-- if value == nil then
	if value == Object.None then
		-- ROBLOX deviation END
		return { kind = Kind.NULL }
	end -- undefined
	if value == nil then
		return nil
	end -- Convert JavaScript array to GraphQL list. If the GraphQLType is a list, but
	-- the value is not an array, convert the value using the list's item type.
	if Boolean.toJSBoolean(Array.isArray(value)) then
		local valuesNodes: Array<ValueNode> = {}
		for _, item in value do
			local itemNode = astFromValueUntyped(item)
			if
				itemNode ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
			then
				table.insert(valuesNodes, itemNode) --[[ ROBLOX CHECK: check if 'valuesNodes' is an Array ]]
			end
		end
		return { kind = Kind.LIST, values = valuesNodes }
	end
	if typeof(value) == "table" then
		local fieldNodes: Array<ObjectFieldNode> = {}
		for fieldName in value do
			local fieldValue = value[tostring(fieldName)]
			local ast = astFromValueUntyped(fieldValue)
			if Boolean.toJSBoolean(ast) then
				table.insert(fieldNodes, {
					kind = Kind.OBJECT_FIELD,
					name = { kind = Kind.NAME, value = fieldName },
					value = ast,
					-- ROBLOX deviation START: needs explicit cast
					-- }) --[[ ROBLOX CHECK: check if 'fieldNodes' is an Array ]]
				} :: ObjectFieldNode)
				-- ROBLOX deviation END
			end
		end
		return { kind = Kind.OBJECT, fields = fieldNodes }
	end -- Others serialize based on their corresponding JavaScript scalar types.
	if typeof(value) == "boolean" then
		return { kind = Kind.BOOLEAN, value = value }
	end -- JavaScript numbers can be Int or Float values.
	if Boolean.toJSBoolean(typeof(value) == "number" and isFinite(value)) then
		-- ROBLOX deviation START: use tostring - js-to-lua issue: https://github.com/Roblox/js-to-lua/issues/835
		-- local stringNum = String(value)
		local stringNum = tostring(value)
		-- ROBLOX deviation END
		return if Boolean.toJSBoolean(integerStringRegExp:test(stringNum))
			then { kind = Kind.INT, value = stringNum }
			else { kind = Kind.FLOAT, value = stringNum }
	end
	if typeof(value) == "string" then
		return { kind = Kind.STRING, value = value }
	end
	error(TypeError.new(("Cannot convert value to AST: %s."):format(tostring(value))))
end
exports.astFromValueUntyped = astFromValueUntyped
--[[*
 * IntValue:
 *   - NegativeSign? 0
 *   - NegativeSign? NonZeroDigit ( Digit+ )?
 ]]
-- ROBLOX deviation START: implement RegExp
-- local integerStringRegExp = error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /^-?(?:0|[1-9][0-9]*)$/ ]]
integerStringRegExp = RegExp("^-?(?:0|[1-9][0-9]*)$")
-- ROBLOX deviation END
return exports
