-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/isAsyncIterable.ts
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
-- ROBLOX deviation START: not needed
-- local Array = LuauPolyfill.Array
-- local Object = LuauPolyfill.Object
-- ROBLOX deviation END
-- ROBLOX deviation START: add deps
local Symbol = LuauPolyfill.Symbol
-- ROBLOX deviation END
local exports = {}
local function isAsyncIterable<T>(
	value: any
): boolean --[[ ROBLOX FIXME: change to TSTypePredicate equivalent if supported ]] --[[ value is AsyncIterable<T> ]]
	-- ROBLOX deviation START: add additional variable for type checking
	local symbolAsyncIterator = (Symbol :: any).asyncIterator
	-- ROBLOX deviation END
	return typeof(value) == "table"
		and value ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
		-- ROBLOX deviation START: fix implementation
		-- and Array.indexOf(Object.keys(value), tostring(Symbol.asyncIterator)) ~= -1
		-- and typeof(value[tostring(Symbol.asyncIterator)]) == "function"
		and symbolAsyncIterator
		and value[symbolAsyncIterator]
		and typeof(value[symbolAsyncIterator]) == "function"
	-- ROBLOX deviation END
end
exports.isAsyncIterable = isAsyncIterable
return exports
