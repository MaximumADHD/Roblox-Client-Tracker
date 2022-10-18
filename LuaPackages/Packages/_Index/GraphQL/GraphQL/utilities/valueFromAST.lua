--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/utilities/valueFromAST.js
--!strict
-- ROBLOX TODO: change this to `()` once Luau supports type packs
type void = nil
local srcWorkspace = script.Parent.Parent
local objMapImport = require(srcWorkspace.jsutils.ObjMap)
type ObjMap<T> = objMapImport.ObjMap<T>
local keyMap = require(srcWorkspace.jsutils.keyMap).keyMap
local inspect = require(srcWorkspace.jsutils.inspect).inspect
local invariant = require(srcWorkspace.jsutils.invariant).invariant

local astImport = require(srcWorkspace.language.ast)
type ListValueNode = astImport.ListValueNode
type ObjectValueNode = astImport.ObjectValueNode
type ValueNode = astImport.ValueNode
type VariableNode = astImport.VariableNode
local Kind = require(srcWorkspace.language.kinds).Kind

local definitionImport = require(srcWorkspace.type.definition)
type GraphQLInputType = definitionImport.GraphQLInputType
local isLeafType = definitionImport.isLeafType
local isInputObjectType = definitionImport.isInputObjectType
local isListType = definitionImport.isListType
local isNonNullType = definitionImport.isNonNullType
-- ROBLOX deviation: no distinction between undefined and null in Lua so we need to go around this with custom NULL like constant
local NULL = require(srcWorkspace.luaUtils.null)

-- ROBLOX deviation: predeclare functions
local isMissingVariable

local function valueFromAST(
	valueNode: ValueNode?,
	type_: GraphQLInputType,
	variables: ObjMap<any>?
): any | void
	if not valueNode then
		-- When there is no node, then there is also no value.
		-- Importantly, this is different from returning the value null.
		return
	end
	-- ROBLOX FIXME Luau: should be optional, but narrowing isn't working with guard below
	if (valueNode :: ValueNode).kind == Kind.VARIABLE then
		-- ROBLOX TODO: add singleton type to Node 'kind', which should then narrow this properly
		local variableName = (valueNode :: VariableNode).name.value
		if variables == nil or variables[variableName] == nil then
			-- No valid return value.
			return
		end

		-- ROBLOX FIXME Luau: Luau doesn't understand the guard above, needs type states
		local variableValue = (variables :: ObjMap<any>)[variableName]

		if variableValue == NULL and isNonNullType(type_) then
			return -- Invalid: intentionally return no value.
		end

		-- Note: This does no further checking that this variable is correct.
		-- This assumes that this query has been validated and the variable
		-- usage here is of the correct type.
		return variableValue
	end
	if isNonNullType(type_) then
		if (valueNode :: ValueNode).kind == Kind.NULL then
			return -- Invalid: intentionally return no value.
		end
		return valueFromAST(valueNode, type_.ofType, variables)
	end

	if (valueNode :: ValueNode).kind == Kind.NULL then
		-- This is explicitly returning the value null.
		return NULL
	end

	if isListType(type_) then
		local itemType = type_.ofType
		if (valueNode :: ValueNode).kind == Kind.LIST then
			local coercedValues = {}
			-- ROBLOX TODO: add singleton type to Node 'kind', which should then narrow this properly
			for _, itemNode in ipairs((valueNode :: ListValueNode).values) do
				-- If an array contains a missing variable, it is either coerced to
				-- null or if the item type is non-null, it considered invalid.
				if isMissingVariable(itemNode, variables) then
					if isNonNullType(itemType) then
						return -- Invalid: intentionally return no value.
					end
					table.insert(coercedValues, NULL)
				else
					local itemValue = valueFromAST(itemNode, itemType, variables)
					if itemValue == nil then
						return -- Invalid: intentionally return no value.
					end
					table.insert(coercedValues, itemValue :: any)
				end
			end
			return coercedValues
		end

		local coercedValue = valueFromAST(valueNode, itemType, variables)
		if coercedValue == nil then
			return -- Invalid: intentionally return no value.
		end
		return { coercedValue }
	end

	if isInputObjectType(type_) then
		if (valueNode :: ValueNode).kind ~= Kind.OBJECT then
			return -- Invalid: intentionally return no value.
		end
		-- ROBLOX deviation: no Object.create in Lua but not needed in this use case
		local coercedObj = {}
		-- ROBLOX TODO: add singleton type to Node 'kind', which should then narrow this properly
		local fieldNodes = keyMap((valueNode :: ObjectValueNode).fields, function(field)
			return field.name.value
		end)
		-- ROBLOX deviation: use Map
		for _, field in ipairs(type_:getFields():values()) do
			local fieldNode = fieldNodes[field.name]
			if not fieldNode or isMissingVariable(fieldNode.value, variables) then
				if field.defaultValue ~= nil then
					coercedObj[field.name] = field.defaultValue
				elseif isNonNullType(field.type) then
					return -- Invalid: intentionally return no value.
				end
				continue
			end
			local fieldValue = valueFromAST(fieldNode.value, field.type, variables)
			if fieldValue == nil then
				return -- Invalid: intentionally return no value.
			end
			coercedObj[field.name] = fieldValue
		end
		return coercedObj
	end

	-- istanbul ignore else (See: 'https://github.com/graphql/graphql-js/issues/2618')
	if isLeafType(type_) then
		-- Scalars and Enums fulfill parsing a literal value via parseLiteral().
		-- Invalid values represent a failure to parse correctly, in which case
		-- no value is returned.
		local result

		local ok_ = pcall(function()
			result = type_:parseLiteral(valueNode :: ValueNode, variables)
		end)

		if not ok_ then
			return -- Invalid: intentionally return no value.
		end

		if result == nil then
			return -- Invalid: intentionally return no value.
		end

		return result
	end

	-- istanbul ignore next (Not reachable. All possible input types have been considered)
	invariant(false, "Unexpected input type: " .. inspect(type_))
	return -- ROBLOX Luau TODO: Luau should see invariant is noreturn
end

-- Returns true if the provided valueNode is a variable which is not defined
-- in the set of variables.
function isMissingVariable(valueNode: ValueNode, variables: ObjMap<any>?): boolean
	return valueNode.kind == Kind.VARIABLE
		and (variables == nil or variables[valueNode.name.value] == nil)
end

return {
	valueFromAST = valueFromAST,
}
