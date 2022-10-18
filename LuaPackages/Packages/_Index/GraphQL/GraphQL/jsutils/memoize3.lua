--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/1951bce42092123e844763b6a8e985a8a3327511/src/jsutils/memoize3.js
local jsutils = script.Parent
local srcWorkspace = jsutils.Parent
local Packages = srcWorkspace.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>
type Function = (...any) -> ...any
type Object = LuauPolyfill.Object
-- deviation: we need to replace 'nil' with a symbol
-- in the table to support it
local NULL = {}

local function replaceNil<T>(value: T): T | typeof(NULL)
	if value == nil then
		return NULL
	end
	return value
end

local function newWeakMap()
	return setmetatable({}, { __mode = "kv" })
end

--[[
 * Memoizes the provided three-argument function.
 ]]
local function memoize3<A1, A2, A3, R>(fn: (A1, A2, A3) -> R): (A1, A2, A3) -> R
	local cache0

	return function(a1, a2, a3)
		-- deviation: we replace 'nil' with a table to support
		-- caching with null values
		local key1 = replaceNil(a1)
		local key2 = replaceNil(a2)
		local key3 = replaceNil(a3)

		if not cache0 then
			cache0 = newWeakMap()
		end
		local cache1 = cache0[key1]
		local cache2

		if cache1 then
			cache2 = cache1[key2]

			if cache2 then
				local cachedValue = cache2[key3]

				if cachedValue ~= nil then
					-- deviation: since we store nil as NULL
					-- we need to check for it
					if cachedValue == NULL then
						-- ROBLOX FIXME Luau: Type 'nil' could not be converted into 'R', upstream GQL 16 has potential fix
						return nil :: any
					end
					return cachedValue
				end
			end
		else
			cache1 = newWeakMap()
			cache0[key1] = cache1
		end
		if not cache2 then
			cache2 = newWeakMap()
			cache1[key2] = cache2
		end

		local newValue = fn(a1, a2, a3)

		cache2[key3] = replaceNil(newValue)

		return newValue
	end
end

return {
	memoize3 = memoize3,
}
