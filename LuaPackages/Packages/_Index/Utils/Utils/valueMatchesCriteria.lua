-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/valueMatchesCriteria.ts
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Object = LuauPolyfill.Object
local instanceof = LuauPolyfill.instanceof
-- ROBLOX deviation START: additional imports
local RegExp = require(Packages.LuauRegExp)
-- ROBLOX deviation END
local exports = {}
-- ROBLOX deviation START: not needed - js-to-lua issue: https://github.com/Roblox/js-to-lua/issues/919
-- local JestGlobals = require(Packages.Dev.JestGlobals)
-- local test = JestGlobals.test
-- ROBLOX deviation END
local function valueMatchesCriteria(value: any, criteria: any): boolean
	if
		value == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
	then
		return value == criteria
		-- ROBLOX deviation START: simplify
		-- elseif Boolean.toJSBoolean(Array.isArray(value)) then
		-- 	local ref = Array.isArray(criteria)
		-- 	return if Boolean.toJSBoolean(ref)
		-- 		then Array.every(value, function(val, index)
		-- 			return valueMatchesCriteria(val, criteria[tostring(index)])
		-- 		end) --[[ ROBLOX CHECK: check if 'value' is an Array ]]
		-- 		else ref
	elseif Array.isArray(value) then
		return Array.isArray(criteria)
			and Array.every(value, function(val, index)
				return valueMatchesCriteria(val, criteria[index])
			end)
		-- ROBLOX deviation END
	elseif typeof(value) == "table" then
		-- ROBLOX deviation START: simplify
		-- local ref = typeof(criteria) == "table" and criteria
		-- return if Boolean.toJSBoolean(ref)
		-- 	then Array.every(Object.keys(criteria), function(propertyName)
		-- 		return valueMatchesCriteria(value[tostring(propertyName)], criteria[tostring(propertyName)])
		-- 	end) --[[ ROBLOX CHECK: check if 'Object.keys(criteria)' is an Array ]]
		-- 	else ref
		return typeof(criteria) == "table"
			and Boolean.toJSBoolean(criteria)
			and Array.every(Object.keys(criteria), function(propertyName)
				return valueMatchesCriteria(value[propertyName], criteria[propertyName])
			end)
		-- ROBLOX deviation END
	elseif instanceof(criteria, RegExp) then
		return criteria:test(value)
	end
	return value == criteria
end
exports.valueMatchesCriteria = valueMatchesCriteria
return exports
