--[[
 * Copyright (c) 2016 Jimmy Jia
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree:
]]
-- ROBLOX upstream: https://github.com/taion/graphql-type-json/blob/v0.3.2-32-g10418fa/src/index.js
local Packages = script:FindFirstAncestor("GraphQLServer").Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local TypeError = LuauPolyfill.Error
local exports = {}
local graphqlModule = require(Packages.GraphQL)
local GraphQLScalarType = graphqlModule.GraphQLScalarType
type GraphQLScalarType = graphqlModule.GraphQLScalarType
type ValueNode = graphqlModule.ValueNode
type StringValueNode = graphqlModule.StringValueNode
type BooleanValueNode = graphqlModule.BooleanValueNode
type IntValueNode = graphqlModule.IntValueNode
type FloatValueNode = graphqlModule.FloatValueNode
type ListValueNode = graphqlModule.ListValueNode
type VariableNode = graphqlModule.VariableNode
type ObjectValueNode = graphqlModule.ObjectValueNode
local Kind = graphqlModule.Kind
local print_ = graphqlModule.print

type ObjMap<T> = { [string]: T }

local parseLiteral: (string, ValueNode, ObjMap<any>) -> any

local function parseFloat(value, base)
	return tonumber(value, base)
end

local function identity(value)
	return value
end

local function ensureObject(value)
	if Boolean.toJSBoolean(typeof(value) ~= "table" or value == nil or Array.isArray(value)) then
		error(TypeError.new(("JSONObject cannot represent non-object value: %s"):format(tostring(value))))
	end
	return value
end

local function parseObject(typeName, ast: ObjectValueNode, variables)
	local value = {}
	Array.forEach(ast.fields, function(field)
		-- eslint-disable-next-line no-use-before-define
		value[field.name.value] = parseLiteral(typeName, field.value, variables)
	end) --[[ ROBLOX CHECK: check if 'ast.fields' is an Array ]]
	return value
end

function parseLiteral(typeName, ast, variables)
	local condition_ = ast.kind
	if condition_ == Kind.STRING or condition_ == Kind.BOOLEAN then
		return (ast :: StringValueNode | BooleanValueNode).value
	elseif condition_ == Kind.INT or condition_ == Kind.FLOAT then
		return parseFloat((ast :: FloatValueNode | IntValueNode).value)
	elseif condition_ == Kind.OBJECT then
		return parseObject(typeName, ast :: ObjectValueNode, variables)
	elseif condition_ == Kind.LIST then
		return Array.map((ast :: ListValueNode).values, function(n)
			return parseLiteral(typeName, n, variables)
		end) --[[ ROBLOX CHECK: check if 'ast.values' is an Array ]]
	elseif condition_ == Kind.NULL then
		return nil
	elseif condition_ == Kind.VARIABLE then
		return if Boolean.toJSBoolean(variables) then variables[(ast :: VariableNode).name.value] else nil
	else
		error(TypeError.new(("%s cannot represent value: %s"):format(typeName, print_(ast))))
		return nil
	end
end

-- This named export is intended for users of CommonJS. Users of ES modules
--  should instead use the default export.
local GraphQLJSON: GraphQLScalarType = GraphQLScalarType.new({
	name = "JSON",
	description = "The `JSON` scalar type represents JSON values as specified by [ECMA-404](http://www.ecma-international.org/publications/files/ECMA-ST/ECMA-404.pdf).",
	specifiedByUrl = "http://www.ecma-international.org/publications/files/ECMA-ST/ECMA-404.pdf",
	serialize = identity,
	parseValue = identity,
	parseLiteral = function(ast: ValueNode, variables)
		return parseLiteral("JSON", ast, variables)
	end,
})
exports.GraphQLJSON = GraphQLJSON
exports.default = GraphQLJSON

local GraphQLJSONObject: GraphQLScalarType = GraphQLScalarType.new({
	name = "JSONObject",
	description = "The `JSONObject` scalar type represents JSON objects as specified by [ECMA-404](http://www.ecma-international.org/publications/files/ECMA-ST/ECMA-404.pdf).",
	specifiedByUrl = "http://www.ecma-international.org/publications/files/ECMA-ST/ECMA-404.pdf",
	serialize = ensureObject,
	parseValue = ensureObject,
	parseLiteral = function(ast: ValueNode, variables)
		if ast.kind ~= Kind.OBJECT then
			error(TypeError.new(("JSONObject cannot represent non-object value: %s"):format(print_(ast))))
		end
		return parseObject("JSONObject", ast :: ObjectValueNode, variables)
	end,
})
exports.GraphQLJSONObject = GraphQLJSONObject

return exports
