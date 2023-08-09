-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/inspect.ts
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Object = LuauPolyfill.Object
local instanceof = LuauPolyfill.instanceof
type Array<T> = LuauPolyfill.Array<T>
type Error = LuauPolyfill.Error
type Object = LuauPolyfill.Object
-- ROBLOX deviation START: not needed
-- local RegExp = require(Packages.RegExp)
-- ROBLOX deviation END
-- ROBLOX deviation START: add additional imports
local Error = LuauPolyfill.Error
-- ROBLOX deviation END
-- ROBLOX deviation START: add additional types
type ReadonlyArray<T> = Array<T>
-- ROBLOX deviation END
local exports = {}
-- ROBLOX deviation START: add predefined variables
local formatValue
local formatObjectValue
local formatArray
local isJSONable
local formatObject
local getObjectTag
-- ROBLOX deviation END
-- Taken from graphql-js
-- https://github.com/graphql/graphql-js/blob/main/src/jsutils/inspect.ts
local GraphQLError = require(Packages.GraphQL).GraphQLError
-- ROBLOX deviation START: fix import
-- local isAggregateError = require(script.Parent["AggregateError.js"]).isAggregateError
local isAggregateError = require(script.Parent.AggregateError).isAggregateError
-- ROBLOX deviation END
local MAX_RECURSIVE_DEPTH = 3
--[[*
 * Used to print values in error messages.
 ]]
local function inspect(value: unknown): string
	return formatValue(value, {})
end
exports.inspect = inspect
-- ROBLOX deviation START: predefine function
-- local function formatValue(value: unknown, seenValues: ReadonlyArray<unknown>): string
function formatValue(value: unknown, seenValues: ReadonlyArray<unknown>): string
	-- ROBLOX deviation END
	local condition_ = typeof(value)
	if condition_ == "string" then
		-- ROBLOX deviation START: no need for JSON.stringify of a string
		-- return JSON.stringify(value)
		return '"' .. (value :: string) .. '"'
		-- ROBLOX deviation END
	elseif condition_ == "function" then
		-- ROBLOX deviation START: different handling of function name
		-- return if Boolean.toJSBoolean(value.name) then ("[function %s]"):format(tostring(value.name)) else "[function]"
		local functionName = debug.info(value :: any, "n") :: string
		return if Boolean.toJSBoolean(functionName) then ("[function %s]"):format(functionName) else "[function]"
		-- ROBLOX deviation END
		-- ROBLOX deviation START: fix condition
		-- elseif condition_ == "object" then
	elseif condition_ == "table" then
		-- ROBLOX deviation END
		-- ROBLOX deviation START: needs cast
		-- return formatObjectValue(value, seenValues)
		return formatObjectValue(value :: Object, seenValues)
		-- ROBLOX deviation END
	else
		-- ROBLOX deviation START: use tostring instead of String - js-to-lua issue https://github.com/Roblox/js-to-lua/issues/835
		-- return String(value)
		return tostring(value)
		-- ROBLOX deviation END
	end
end
local function formatError(value: Error): string
	if instanceof(value, GraphQLError) then
		return tostring(value)
	end
	return ("%s: %s;\n %s"):format(tostring(value.name), tostring(value.message), tostring(value.stack))
end
-- ROBLOX deviation START: predefine function
-- local function formatObjectValue(
function formatObjectValue(
	-- ROBLOX deviation END
	value: Object | Array<unknown> | nil --[[ ROBLOX CHECK: verify if `null` wasn't used differently than `undefined` ]],
	previouslySeenValues: ReadonlyArray<unknown>
): string
	if value == nil then
		return "null"
	end
	if instanceof(value, Error) then
		-- ROBLOX deviation START: needs casts
		-- 		if Boolean.toJSBoolean(isAggregateError(value)) then
		-- 			return tostring(formatError(value)) .. "\n" .. tostring(formatArray(value.errors, previouslySeenValues))
		if isAggregateError(value :: Error) then
			return formatError(value :: Error) .. "\n" .. formatArray((value :: any).errors, previouslySeenValues)
			-- ROBLOX deviation END
		end
		-- ROBLOX deviation START: needs cast
		-- return formatError(value)
		return formatError(value :: Error)
		-- ROBLOX deviation END
	end
	if
		Boolean.toJSBoolean(
			Array.includes(previouslySeenValues, value) --[[ ROBLOX CHECK: check if 'previouslySeenValues' is an Array ]]
		)
	then
		return "[Circular]"
	end
	-- ROBLOX deviation START: remove Array.spread
	-- local seenValues = Array.concat({}, Array.spread(previouslySeenValues), { value })
	local seenValues = Array.concat({}, previouslySeenValues, { value })
	-- ROBLOX deviation END
	if Boolean.toJSBoolean(isJSONable(value)) then
		-- ROBLOX deviation START: needs cast
		-- local jsonValue = value:toJSON() -- check for infinite recursion
		local jsonValue = (value :: any):toJSON()
		-- check for infinite recursion
		-- ROBLOX deviation END
		if jsonValue ~= value then
			return if typeof(jsonValue) == "string" then jsonValue else formatValue(jsonValue, seenValues)
		end
	elseif Boolean.toJSBoolean(Array.isArray(value)) then
		-- ROBLOX deviation START: needs cast
		-- return formatArray(value, seenValues)
		return formatArray(value :: Array<any>, seenValues)
		-- ROBLOX deviation END
	end
	-- ROBLOX deviation START: needs cast
	-- return formatObject(value, seenValues)
	return formatObject(value :: Object, seenValues)
	-- ROBLOX deviation END
end
-- ROBLOX deviation START: predefine function
-- local function isJSONable(value: any): boolean --[[ ROBLOX FIXME: change to TSTypePredicate equivalent if supported ]] --[[ value is {
--   toJSON: () => unknown;
-- } ]]
function isJSONable(
	value: any
): boolean --[[ ROBLOX FIXME: change to TSTypePredicate equivalent if supported ]] --[[ value is { toJSON: () => unknown; } ]]
	-- ROBLOX deviation END
	return typeof(value.toJSON) == "function"
end
-- ROBLOX deviation START: predefine function
-- local function formatObject(object: Object | Array<unknown>, seenValues: ReadonlyArray<unknown>): string
function formatObject(object: Object | Array<unknown>, seenValues: ReadonlyArray<unknown>): string
	-- ROBLOX deviation END
	local entries = Object.entries(object)
	-- ROBLOX deviation START: fix .length conversion
	-- if entries.length == 0 then
	if #entries == 0 then
		-- ROBLOX deviation END
		return "{}"
	end
	-- ROBLOX deviation START: fix .length conversion
	-- 	if
	-- 		seenValues.length
	-- 		> MAX_RECURSIVE_DEPTH --[[ ROBLOX CHECK: operator '>' works only if either both arguments are strings or both are a number ]]
	-- 	then
	if #seenValues > MAX_RECURSIVE_DEPTH then
		-- ROBLOX deviation END
		return "[" .. tostring(getObjectTag(object)) .. "]"
	end
	local properties = Array.map(entries, function(ref0)
		local key, value = table.unpack(ref0, 1, 2)
		return tostring(key) .. ": " .. tostring(formatValue(value, seenValues))
	end) --[[ ROBLOX CHECK: check if 'entries' is an Array ]]
	return "{ "
		.. tostring(Array.join(properties, ", ") --[[ ROBLOX CHECK: check if 'properties' is an Array ]])
		.. " }"
end
-- ROBLOX deviation START: predefine function
-- local function formatArray(array: ReadonlyArray<unknown>, seenValues: ReadonlyArray<unknown>): string
function formatArray(array: ReadonlyArray<unknown>, seenValues: ReadonlyArray<unknown>): string
	-- ROBLOX deviation END
	-- ROBLOX deviation START: fix .length conversion
	-- if array.length == 0 then
	if #array == 0 then
		-- ROBLOX deviation END
		return "[]"
	end
	-- ROBLOX deviation START: fix .legth conversion
	-- 	if
	-- 		seenValues.length
	-- 		> MAX_RECURSIVE_DEPTH --[[ ROBLOX CHECK: operator '>' works only if either both arguments are strings or both are a number ]]
	-- 	then
	if #seenValues > MAX_RECURSIVE_DEPTH then
		-- ROBLOX deviation END
		return "[Array]"
	end
	-- ROBLOX deviation START: fix .length conversion
	-- 	local len = array.length
	-- 	local remaining = array.length
	local len = #array
	local remaining = #array
	-- ROBLOX deviation END
	local items = {}
	do
		-- ROBLOX deviation START: index starts at 1
		-- local i = 0
		-- while
		-- 	i
		-- 	< len --[[ ROBLOX CHECK: operator '<' works only if either both arguments are strings or both are a number ]]
		-- do
		local i = 1
		while i <= len do
			-- ROBLOX deviation END
			-- ROBLOX deviation START: don't tostring number index
			-- table.insert(items, formatValue(array[tostring(i)], seenValues)) --[[ ROBLOX CHECK: check if 'items' is an Array ]]
			table.insert(items, formatValue(array[i], seenValues))
			-- ROBLOX deviation END
			i += 1
		end
	end
	if remaining == 1 then
		table.insert(items, "... 1 more item") --[[ ROBLOX CHECK: check if 'items' is an Array ]]
	elseif
		remaining
		> 1 --[[ ROBLOX CHECK: operator '>' works only if either both arguments are strings or both are a number ]]
	then
		table.insert(items, ("... %s more items"):format(tostring(remaining))) --[[ ROBLOX CHECK: check if 'items' is an Array ]]
	end
	return "["
		.. tostring(Array.join(items, ", ") --[[ ROBLOX CHECK: check if 'items' is an Array ]])
		.. "]"
end
-- ROBLOX deviation START: predefine function
-- local function getObjectTag(object: Object | Array<unknown>): string
function getObjectTag(object: Object | Array<unknown>): string
	-- ROBLOX deviation END
	-- ROBLOX deviation START: not available, using same approach as GraphQL
	-- local tag = Object.prototype.toString(object):replace(RegExp("^\\[object "), ""):replace(RegExp("]$"), "")
	-- if tag == "Object" and typeof(object.constructor) == "function" then
	-- 	local name = object.constructor.name
	-- 	if typeof(name) == "string" and name ~= "" then
	-- 		return name
	-- 	end
	-- end
	-- return tag
	return "Object"
	-- ROBLOX deviation END
end
return exports
