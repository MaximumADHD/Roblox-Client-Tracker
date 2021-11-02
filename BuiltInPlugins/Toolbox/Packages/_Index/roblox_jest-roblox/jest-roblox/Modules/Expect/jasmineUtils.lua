-- upstream: https://github.com/facebook/jest/blob/v26.5.3/packages/expect/src/jasmineUtils.ts
-- /*
-- Copyright (c) 2008-2016 Pivotal Labs
-- Permission is hereby granted, free of charge, to any person obtaining
-- a copy of this software and associated documentation files (the
-- "Software"), to deal in the Software without restriction, including
-- without limitation the rights to use, copy, modify, merge, publish,
-- distribute, sublicense, and/or sell copies of the Software, and to
-- permit persons to whom the Software is furnished to do so, subject to
-- the following conditions:
-- The above copyright notice and this permission notice shall be
-- included in all copies or substantial portions of the Software.
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
-- EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
-- MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
-- NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
-- LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
-- OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
-- WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
-- */

local Workspace = script.Parent
local Modules = Workspace.Parent
local Packages = Modules.Parent.Parent

local Polyfills = require(Packages.LuauPolyfill)
local Object = Polyfills.Object
local Array = Polyfills.Array
local toJSBoolean = Polyfills.Boolean.toJSBoolean

local getType = require(Workspace.Parent.JestGetType).getType

type Array<T> = { T };
type Table = { any: any };
-- deviation: Tester type defined in file since type imports are not yet
-- supported
-- making Tester return type 'any' due to error with type narrowing (CLI-37948)

-- // Extracted out of jasmine 2.5.2

type Tester = (any, any) -> any;

local isAsymmetric, asymmetricMatch, eq, keys, hasDefinedKey, hasKey, isA

local function equals(
	a: any,
	b: any,
	customTesters: Array<Tester>?,
	strictCheck: boolean?
): boolean
	customTesters = customTesters or {}
	strictCheck = strictCheck or false
	return eq(a, b, {}, {}, customTesters, strictCheck and hasKey or hasDefinedKey)
end

-- deviation: omitted functionToString since we don't use it

function isAsymmetric(obj: any)
	if toJSBoolean(obj) and typeof(obj) == "table" then
		local ok, val = pcall(function() return obj.asymmetricMatch end)
		if ok and isA('function', val) then
			return true
		end
	end
	return false
end

function asymmetricMatch(a: any, b: any)
	local asymmetricA = isAsymmetric(a)
	local asymmetricB = isAsymmetric(b)

	if asymmetricA and asymmetricB then
		return nil
	end

	if asymmetricA then
		return a:asymmetricMatch(b)
	end

	if asymmetricB then
		return b:asymmetricMatch(a)
	end
end

-- // Equality function lovingly adapted from isEqual in
-- //   [Underscore](http://underscorejs.org)
function eq(
	a: any,
	b: any,
	aStack: Array<any>,
	bStack: Array<any>,
	customTesters: Array<Tester>,
	_hasKey: any
): boolean
	local result = true

	local asymmetricResult = asymmetricMatch(a, b)
	if asymmetricResult ~= nil then
		return asymmetricResult
	end

	for index, value in ipairs(customTesters) do
		local customTesterResult = value(a, b)
		if customTesterResult ~= nil then
			return customTesterResult
		end
	end

	-- deviation: code omitted because there are no error objects in Lua

	if Object.is(a, b) then
		return true
	end

	-- deviation: code omitted that does strict comparison because we don't
	-- have similar concerns in Lua where there are no distinct 'null' and
	-- 'undefined' types


	-- deviation: as part of the upstream className check, a type difference of
	-- array/non-array would be detected so we add this in manually
	local className = getType(a)
	if className ~= getType(b) then
		return false
	elseif Array.isArray(a) ~= Array.isArray(b) then
		return false
	end

	-- deviation: code omitted for elseif case with regular expressions since
	-- Lua doesn't have a built in regular expression type

	if className == "boolean" or
		className == "string" or
		className == "number" or
		className == "userdata"
	then
		return Object.is(a,b)
	elseif className == "DateTime" then
		return a == b
	elseif className == "regexp" then
		return tostring(a) == tostring(b)
	end

	if typeof(a) ~= "table" or typeof(b) ~= "table" then
		return false
	end

	-- DOM code omitted for now but translated here
	--[[
		if isDomNode(a) and isDomNode(b) then
		return a.isEqualNode(b)
		end
	--]]

	-- Used to detect circular references.
	local length = #aStack
	while length > 0 do
		-- // Linear search. Performance is inversely proportional to the number of
	 	-- // unique nested structures.
	 	-- // circular references at same depth are equal
	 	-- // circular reference is not equal to non-circular one
		if aStack[length] == a then
			return bStack[length] == b
		elseif bStack[length] == b then
			return false
		end

		length -= 1
	end

	-- // Add the first object to the stack of traversed objects.
	table.insert(aStack, a)
	table.insert(bStack, b)

	local size = 0

	-- Recursively compare objects and arrays.
	-- Compare array lengths to determine if a deep comparison is necessary.

	if Array.isArray(a) then
		size = #a
		if size ~= #b then
			return false
		end

		while size > 0 do
			result = eq(a[size], b[size], aStack, bStack, customTesters, _hasKey)

			if not result then
				return false
			end
			size -= 1
		end
	end

	-- // Deep compare objects
	local aKeys = keys(a, Array.isArray(a), _hasKey)
	size = #aKeys

	-- Ensure that both objects contain the same number of properties before comparing deep equality.
	if #keys(b, Array.isArray(b), _hasKey) ~= size then
		return false
	end

	while size > 0 do
		local key = aKeys[size]

		-- // Deep compare each member
		result = hasKey(b, key) and
				eq(a[key], b[key], aStack, bStack, customTesters, _hasKey)

		if not result then
			return false
		end

		size -= 1
	end

	-- Remove the first object from the stack of traversed objects.
	table.remove(aStack)
	table.remove(bStack)

	return result
end

function keys(
	obj: Table,
	isArray: boolean,
	hasKey: (Table, string) -> boolean
)
	local function getAllKeys(o)
		local allKeys = {}
		for key, value in pairs(o) do
			if o[key] ~= nil then
				table.insert(allKeys, key)
			end
		end

		return allKeys
	end

	local allKeys = getAllKeys(obj)

	if not isArray then
		return allKeys
	end

	-- deviation: code omitted for adding 'extraKeys' since we don't have
 	-- similar concerns of overlooking symbols and non-numeric properties for
 	-- arrays

 	-- Thus, in the array case we should always just be returning an empty array

	return {}
end

-- deviation: we have no concept of undefined so hasDefinedKey is the same as hasKey
function hasDefinedKey(obj: any, key: string)
	return hasKey(obj, key)
end

function hasKey(obj: any, key: string)
	return rawget(obj, key) ~= nil
end

function isA(typeName: string, value: any)
	return getType(value) == typeName
end

-- DOM code omitted for now but translated below:
--[[
	function isDomNode(obj: any): boolean
	return obj ~= nil and
		typeof(obj) == "table" and
		typeof(obj.nodeType) == "number" and
		typeof(obj.nodeName) == "string" and
		typeof(obj.isEqualNode) == "function"
	end
--]]

-- deviation: Function annotation for func omitted
local function fnNameFor(func)
	-- Upstream code omitted for now but translated below:
	--[[
		if func.name then
			return func.name
		end
	]]

	-- ROBLOX TODO: (ADO-1258) Return more advanced function information, if
	-- possible, by using traceback
	return "[Function]"
end

local function isUndefined(obj: any)
	return obj == nil
end

local function getPrototype(obj)
	if getmetatable(obj) ~= nil then
		return getmetatable(obj).__index
	end

	return nil
end

local function hasProperty(obj: any, property: string): boolean
	if not obj then
		return false
	end

	local ok, result = pcall(function() return obj[property] end)

	if ok then
		return result ~= nil
	else
		error(result)
	end
end

return {
	equals = equals,
	isA = isA,
	fnNameFor = fnNameFor,
	isUndefined = isUndefined,
	getPrototype = getPrototype,
	hasProperty = hasProperty
}