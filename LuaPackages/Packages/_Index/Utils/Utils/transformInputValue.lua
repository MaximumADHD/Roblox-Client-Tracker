-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/transformInputValue.ts
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local exports = {}
local graphqlModule = require(Packages.GraphQL)
-- ROBLOX deviation START: import type
-- local GraphQLInputType = graphqlModule.GraphQLInputType
type GraphQLInputType = graphqlModule.GraphQLInputType
-- ROBLOX deviation END
local getNullableType = graphqlModule.getNullableType
local isLeafType = graphqlModule.isLeafType
local isListType = graphqlModule.isListType
local isInputObjectType = graphqlModule.isInputObjectType
-- ROBLOX deviation START: fix import
-- local typesJsModule = require(script.Parent["types.js"])
local typesModule = require(script.Parent.types)
-- ROBLOX deviation END
-- ROBLOX deviation START: import types
-- local InputLeafValueTransformer = typesJsModule.InputLeafValueTransformer
-- local InputObjectValueTransformer = typesJsModule.InputObjectValueTransformer
-- local Maybe = typesJsModule.Maybe
type InputLeafValueTransformer = typesModule.InputLeafValueTransformer
type InputObjectValueTransformer = typesModule.InputObjectValueTransformer
type Maybe<T> = typesModule.Maybe<T>
-- ROBLOX deviation END

-- ROBLOX deviation START: additional required types
type FIX_ANALYZE = any
type GraphQLEnumType = graphqlModule.GraphQLEnumType
type GraphQLScalarType = graphqlModule.GraphQLScalarType
-- ROBLOX deviation END
local function transformInputValue(
	-- ROBLOX deviation START: explicit type
	-- type_,
	type_: GraphQLInputType,
	-- ROBLOX deviation END
	value: any,
	inputLeafValueTransformer_: Maybe<InputLeafValueTransformer>?,
	inputObjectValueTransformer_: Maybe<InputObjectValueTransformer>?
): any
	local inputLeafValueTransformer: Maybe<InputLeafValueTransformer> = if inputLeafValueTransformer_ ~= nil
		then inputLeafValueTransformer_
		else nil
	local inputObjectValueTransformer: Maybe<InputObjectValueTransformer> = if inputObjectValueTransformer_
			~= nil
		then inputObjectValueTransformer_
		else nil
	if
		value == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
	then
		return value
	end
	local nullableType = getNullableType(type_)
	if Boolean.toJSBoolean(isLeafType(nullableType)) then
		return if inputLeafValueTransformer ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
			then inputLeafValueTransformer(nullableType, value)
			else value
	elseif Boolean.toJSBoolean(isListType(nullableType)) then
		return Array.map(value, function(listMember: any)
			return transformInputValue(
				nullableType.ofType,
				listMember,
				inputLeafValueTransformer,
				inputObjectValueTransformer
			)
		end) --[[ ROBLOX CHECK: check if 'value' is an Array ]]
	elseif Boolean.toJSBoolean(isInputObjectType(nullableType)) then
		local fields = nullableType:getFields()
		local newValue = {}
		for key in value do
			local field = fields[tostring(key)]
			if
				field ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
			then
				newValue[tostring(key)] = transformInputValue(
					field.type,
					value[tostring(key)],
					inputLeafValueTransformer,
					inputObjectValueTransformer
				)
			end
		end
		return if inputObjectValueTransformer ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
			then inputObjectValueTransformer(nullableType, newValue)
			else newValue
	end -- unreachable, no other possible return value

	-- ROBLOX deviation START: add explicit return
	return nil
	-- ROBLOX deviation END
end
exports.transformInputValue = transformInputValue
local function serializeInputValue(type_, value: any)
	return transformInputValue(type_, value, function(t, v)
		-- ROBLOX deviation START: simplify
		-- do --[[ ROBLOX COMMENT: try-catch block conversion ]]
		-- 	local ok, result, hasReturned = xpcall(function()
		-- 		return t:serialize(v), true
		-- 	end, function()
		-- 		return v, true
		-- 	end)
		-- 	if hasReturned then
		-- 		return result
		-- 	end
		-- end
		local ok, result = pcall(t.serialize, t, v)
		if not ok then
			return v
		end
		return result
		-- ROBLOX deviation END
	end)
end
exports.serializeInputValue = serializeInputValue
local function parseInputValue(type_, value: any)
	return transformInputValue(type_, value, function(t, v)
		-- ROBLOX deviation START: simplify to fix analyze
		-- 		do --[[ ROBLOX COMMENT: try-catch block conversion ]]
		-- 			local ok, result, hasReturned = xpcall(function()
		-- 				return t:parseValue(v), true
		-- 			end, function()
		-- 				return v, true
		-- 			end)
		-- 			if hasReturned then
		-- 				return result
		-- 			end
		-- 		end
		local ok, result = pcall(t.parseValue, t, v)
		if not ok then
			return v
		end
		return result
		-- ROBLOX deviation END
	end)
end
exports.parseInputValue = parseInputValue
local function parseInputValueLiteral(type_, value: any)
	return transformInputValue(type_, value, function(t, v)
		-- ROBLOX deviation START: cast to fix analyze
		-- return t:parseLiteral(v, {})
		return (t :: FIX_ANALYZE):parseLiteral(v, {})
		-- ROBLOX deviation END
	end)
end
exports.parseInputValueLiteral = parseInputValueLiteral
return exports
