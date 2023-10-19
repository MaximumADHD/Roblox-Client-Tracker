-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/helpers.ts
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Error = LuauPolyfill.Error
local Object = LuauPolyfill.Object
type Array<T> = LuauPolyfill.Array<T>
local exports = {}
-- ROBLOX deviation START: not used - js-to-lua issue https://github.com/Roblox/js-to-lua/issues/919
-- local JestGlobals = require(Packages.Dev.JestGlobals)
-- local test = JestGlobals.test
-- ROBLOX deviation END
local graphqlModule = require(Packages.GraphQL)
local parse = graphqlModule.parse
-- ROBLOX deviation START: import as type instead of local
-- local ASTNode = graphqlModule.ASTNode
type ASTNode = graphqlModule.ASTNode
-- ROBLOX deviation END
-- ROBLOX deviation START: add additional imports
local RegExp = require(Packages.LuauRegExp)
-- ROBLOX deviation END
local function asArray<T>(fns: T | Array<T>)
	return if Boolean.toJSBoolean(Array.isArray(fns)) then fns else if Boolean.toJSBoolean(fns) then { fns } else {}
end
exports.asArray = asArray
-- ROBLOX deviation START: adding A-Z (instead of 'i' flag)
-- local invalidDocRegex = error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /\.[a-z0-9]+$/i ]]
local invalidDocRegex = RegExp("\\.[a-zA-Z0-9]+$")
-- ROBLOX deviation END
local function isDocumentString(str: any): boolean
	if typeof(str) ~= "string" then
		return false
	end -- XXX: is-valid-path or is-glob treat SDL as a valid path
	-- (`scalar Date` for example)
	-- this why checking the extension is fast enough
	-- and prevent from parsing the string in order to find out
	-- if the string is a SDL
	if Boolean.toJSBoolean(invalidDocRegex:test(str)) then
		return false
	end
	-- ROBLOX deviation START: simplify try-catch block and use pcall
	-- 	do --[[ ROBLOX COMMENT: try-catch block conversion ]]
	-- 		local ok, result, hasReturned = xpcall(function()
	-- 			parse(str)
	-- 			return true, true
	-- 		end, function(e: any) end)
	-- 		if hasReturned then
	-- 			return result
	-- 		end
	-- 	end
	-- 	return false
	local ok, result = pcall(function()
		parse(str)
		return true
	end)
	if not ok then
		return false
	end
	return result
	-- ROBLOX deviation END
end
exports.isDocumentString = isDocumentString
-- ROBLOX deviation START: implement regex
-- local invalidPathRegex = error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /[‘“!%^<=>`]/ ]]
local invalidPathRegex = RegExp("[‘“!%^<=>`]")
-- ROBLOX deviation END
local function isValidPath(str: any): boolean
	return typeof(str) == "string" and not Boolean.toJSBoolean(invalidPathRegex:test(str))
end
exports.isValidPath = isValidPath
local function compareStrings<A, B>(a: A, b: B)
	if
		-- ROBLOX deviation START: use tostring instead of String - js-to-lua issue https://github.com/Roblox/js-to-lua/issues/835
		-- 		String(a)
		-- 		< String(b) --[[ ROBLOX CHECK: operator '<' works only if either both arguments are strings or both are a number ]]
		tostring(a) < tostring(b)
		-- ROBLOX deviation END
	then
		return -1
	end
	if
		-- ROBLOX deviation START: use tostring instead of String - js-to-lua issue https://github.com/Roblox/js-to-lua/issues/835
		-- 		String(a)
		-- 		> String(b) --[[ ROBLOX CHECK: operator '>' works only if either both arguments are strings or both are a number ]]
		tostring(a) > tostring(b)
		-- ROBLOX deviation END
	then
		return 1
	end
	return 0
end
exports.compareStrings = compareStrings
-- ROBLOX deviation START: make return optional
-- local function nodeToString(a: ASTNode): string
local function nodeToString(a: ASTNode): string?
	-- ROBLOX deviation END
	local name: string | nil
	if Array.indexOf(Object.keys(a), "alias") ~= -1 then
		-- ROBLOX deviation START: cast to any
		-- name = if typeof(a.alias) == "table" then a.alias.value else nil
		name = if typeof((a :: any).alias) == "table" then (a :: any).alias.value else nil
		-- ROBLOX deviation END
	end
	if
		name == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
		and Array.indexOf(Object.keys(a), "name") ~= -1
	then
		-- ROBLOX deviation START: cast to any
		-- name = if typeof(a.name) == "table" then a.name.value else nil
		name = if typeof((a :: any).name) == "table" then (a :: any).name.value else nil
		-- ROBLOX deviation END
	end
	if
		name == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
	then
		name = a.kind
	end
	return name
end
exports.nodeToString = nodeToString
local function compareNodes(a: ASTNode, b: ASTNode, customFn: ((a: any, b: any) -> number)?)
	local aStr = nodeToString(a)
	local bStr = nodeToString(b)
	if typeof(customFn) == "function" then
		return customFn(aStr, bStr)
	end
	return compareStrings(aStr, bStr)
end
exports.compareNodes = compareNodes
local function isSome<T>(
	input: T
): boolean --[[ ROBLOX FIXME: change to TSTypePredicate equivalent if supported ]] --[[ input is Exclude<T, null | undefined> ]]
	-- ROBLOX deviation START: consider Object.None as a nillish value
	-- return input ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
	return input ~= nil and input ~= Object.None
	-- ROBLOX deviation END
end
exports.isSome = isSome
local function assertSome<T>(
	input: T,
	message_: string?
): boolean --[[ ROBLOX FIXME: change to TSTypePredicate equivalent if supported ]] --[[ asserts input is Exclude<T, null | undefined> ]]
	local message: string = if message_ ~= nil then message_ else "Value should be something"
	if
		input == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
	then
		error(Error.new(message))
	end
	-- ROBLOX deviation START: explicit return
	return true
	-- ROBLOX deviation END
end
exports.assertSome = assertSome
return exports
