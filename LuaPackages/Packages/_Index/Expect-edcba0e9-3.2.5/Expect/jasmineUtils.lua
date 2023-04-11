-- ROBLOX upstream: https://github.com/facebook/jest/blob/v27.4.7/packages/expect/src/jasmineUtils.ts
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

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent

local RobloxShared = require(Packages.RobloxShared)

local LuauPolyfill = require(Packages.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>
-- ROBLOX deviation: Tester type defined in file since type imports are not yet
-- supported
-- making Tester return type 'any' due to error with type narrowing (CLI-37948)

-- Extracted out of jasmine 2.5.2

type Tester = (any, any) -> any

local equals = RobloxShared.expect.equals

-- ROBLOX deviation: omitted functionToString since we don't use it

-- ROBLOX deviation: moved to RobloxShared to avoid reaching into internals with rotriever workspaces
-- local isAsymmetric = RobloxShared.expect.isAsymmetric
-- local asymmetricMatch = RobloxShared.expect.asymmetricMatch
-- local eq = RobloxShared.expect.eq
-- local keys = RobloxShared.expect.keys

-- ROBLOX deviation: we have no concept of undefined so hasDefinedKey is the same as hasKey
-- local hasDefinedKey = RobloxShared.expect.hasDefinedKey
-- local hasKey = RobloxShared.expect.hasKey
local isA = RobloxShared.expect.isA

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

-- ROBLOX deviation: Function annotation for func omitted
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

	local ok, result = pcall(function()
		return obj[property]
	end)

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
	hasProperty = hasProperty,
}
