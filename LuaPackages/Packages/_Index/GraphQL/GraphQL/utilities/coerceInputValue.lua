--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/utilities/coerceInputValue.js

local srcWorkspace = script.Parent.Parent
local rootWorkspace = srcWorkspace.Parent
local jsutilsWorkspace = srcWorkspace.jsutils
local luaUtilsWorkspace = srcWorkspace.luaUtils

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Array = LuauPolyfill.Array
type Array<T> = LuauPolyfill.Array<T>
local Object = LuauPolyfill.Object

local inspect = require(jsutilsWorkspace.inspect).inspect
local invariant = require(jsutilsWorkspace.invariant).invariant
local didYouMean = require(jsutilsWorkspace.didYouMean).didYouMean
local isObjectLike = require(jsutilsWorkspace.isObjectLike).isObjectLike
local suggestionList = require(jsutilsWorkspace.suggestionList).suggestionList
local printPathArray = require(jsutilsWorkspace.printPathArray).printPathArray
local pathImport = require(jsutilsWorkspace.Path)
local addPath = pathImport.addPath
type Path = pathImport.Path
local instanceOf = require(jsutilsWorkspace.instanceOf)
local NULL = require(luaUtilsWorkspace.null)
local isNillishModule = require(luaUtilsWorkspace.isNillish)
local isNillish = isNillishModule.isNillish
local isNotNillish = isNillishModule.isNotNillish

local pathToArray = require(jsutilsWorkspace.Path).pathToArray
local isIteratableObject = require(jsutilsWorkspace.isIteratableObject).isIteratableObject
local graphQLErrorImport = require(srcWorkspace.error.GraphQLError)
local GraphQLError = graphQLErrorImport.GraphQLError
type GraphQLError = graphQLErrorImport.GraphQLError
local definition = require(srcWorkspace.type.definition)
type GraphQLInputType = definition.GraphQLInputType

local isLeafType = definition.isLeafType
local isInputObjectType = definition.isInputObjectType
local isListType = definition.isListType
local isNonNullType = definition.isNonNullType

local coerceInputValueImpl
local defaultOnError

type OnErrorCB = (path: Array<string | number>, invalidValue: any, error: GraphQLError) -> ()

--[[**
	* Coerces a JavaScript value given a GraphQL Input Type_.
	*]]
local function coerceInputValue(inputValue: any, type_: GraphQLInputType, onError_: OnErrorCB?): any
	local onError = if onError_ then onError_ else defaultOnError
	return coerceInputValueImpl(inputValue, type_, onError)
end

function defaultOnError(path: Array<string | number>, invalidValue: any, error_: GraphQLError): ()
	local errorPrefix = "Invalid value " .. inspect(invalidValue)
	if #path > 0 then
		errorPrefix = errorPrefix .. ' at "value' .. printPathArray(path) .. '"'
	end
	error_.message = errorPrefix .. ": " .. error_.message
	error(error_)
end

function coerceInputValueImpl(
	inputValue: any,
	type_: GraphQLInputType,
	onError: OnErrorCB,
	path: Path | nil
): any
	if isNonNullType(type_) then
		if isNotNillish(inputValue) then
			return coerceInputValueImpl(inputValue, type_.ofType, onError, path)
		end
		onError(
			pathToArray(path),
			inputValue,
			GraphQLError.new(
				'Expected non-nullable type "' .. inspect(type_) .. '" not to be null.'
			)
		)
		return
	end

	if isNillish(inputValue) then
		-- Explicitly return the value null.
		return NULL
	end

	if isListType(type_) then
		local itemType = type_.ofType
		if isIteratableObject(inputValue) then
			return Array.from(inputValue, function(itemValue, index)
				local itemPath = addPath(path, index, nil)
				return coerceInputValueImpl(itemValue, itemType, onError, itemPath)
			end)
		end

		-- Lists accept a non-list value as a list of one.
		return { coerceInputValueImpl(inputValue, itemType, onError, path) }
	end

	if isInputObjectType(type_) then
		if not isObjectLike(inputValue) then
			onError(
				pathToArray(path),
				inputValue,
				GraphQLError.new('Expected type "' .. type_.name .. '" to be an object.')
			)
			return
		end

		local coercedValue = {}
		-- ROBLOX deviation: use Map
		local fieldDefs = type_:getFields()

		for _, field in ipairs(fieldDefs:values()) do
			local fieldValue = inputValue[field.name]
			if fieldValue == nil then
				if field.defaultValue ~= nil then
					coercedValue[field.name] = field.defaultValue
				elseif isNonNullType(field.type) then
					local typeStr = inspect(field.type)
					onError(
						pathToArray(path),
						inputValue,
						GraphQLError.new(
							'Field "'
								.. field.name
								.. '" of required type "'
								.. typeStr
								.. '" was not provided.'
						)
					)
				end
				continue
			end

			coercedValue[field.name] = coerceInputValueImpl(
				fieldValue,
				field.type,
				onError,
				addPath(path, field.name, type_.name)
			)
		end

		-- Ensure every provided field is defined
		for _, fieldName in ipairs(Object.keys(inputValue)) do
			if not fieldDefs:get(fieldName) then
				-- ROBLOX deviation: use Map
				local suggestions = suggestionList(fieldName, type_:getFields():keys())
				onError(
					pathToArray(path),
					inputValue,
					GraphQLError.new(
						('Field "%s" is not defined by type "%s".%s'):format(
							fieldName,
							type_.name,
							didYouMean(suggestions)
						)
					)
				)
			end
		end
		return coercedValue
	end

	-- istanbul ignore else (See: 'https://github.com/graphql/graphql-js/issues/2618')
	if isLeafType(type_) then
		local parseResult

		-- Scalars and Enums determine if a input value is valid via parseValue(),
		-- which can throw to indicate failure. If it throws, maintain a reference
		-- to the original error.
		local ok, result = pcall(type_.parseValue, type_, inputValue)

		if not ok then
			local thrownError = result
			if instanceOf(thrownError, GraphQLError) then
				onError(pathToArray(path), inputValue, thrownError)
			else
				onError(
					pathToArray(path),
					inputValue,
					GraphQLError.new(
						'Expected type "' .. type_.name .. '". ' .. thrownError.message,
						nil,
						nil,
						nil,
						nil,
						thrownError
					)
				)
			end
			return
		else
			parseResult = result
		end

		if parseResult == nil then
			onError(
				pathToArray(path),
				inputValue,
				GraphQLError.new(('Expected type "%s".'):format(type_.name))
			)
		end
		return parseResult
	end

	-- istanbul ignore next (Not reachable. All possible input types have been considered)
	invariant(false, "Unexpected input type: " .. inspect(type_))
	return
end

return {
	coerceInputValue = coerceInputValue,
}
