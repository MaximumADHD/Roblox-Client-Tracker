-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/memoize.ts
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Boolean = LuauPolyfill.Boolean
local WeakMap = LuauPolyfill.WeakMap
type WeakMap<T, U> = LuauPolyfill.WeakMap<T, U>
type Record<K, T> = { [K]: T } --[[ ROBLOX TODO: TS 'Record' built-in type is not available in Luau ]]
local exports = {}
-- ROBLOX deviation START: add helper type to fix being unable to extend type with generics
type ExtendsFn = any
-- ROBLOX deviation END

local function memoize1<F>(fn: F): F
	local memoize1cache: WeakMap<Record<string, any>, WeakMap<Record<string, any>, any>> = WeakMap.new()
	-- ROBLOX deviation START: wrap function to cast to generic type
	-- return function(a1: any): any
	return (
		function(a1: any): any
			-- ROBLOX deviation END
			local cachedValue = memoize1cache:get(a1)
			if cachedValue == nil then
				-- ROBLOX deviation START: cast to helper type
				-- local newValue = fn(a1)
				local newValue = (fn :: ExtendsFn)(a1)
				-- ROBLOX deviation END
				memoize1cache:set(a1, newValue)
				return newValue
			end
			return cachedValue
			-- ROBLOX deviation START: use helper type and cast wrapped function to generic type
			-- end :: F
		end :: ExtendsFn
	) :: F
	-- ROBLOX deviation END
end
exports.memoize1 = memoize1
local function memoize2<F>(fn: F): F
	local memoize2cache: WeakMap<Record<string, any>, WeakMap<Record<string, any>, any>> = WeakMap.new()
	-- ROBLOX deviation START: wrap function to cast to generic type
	-- return function(a1: any, a2: any): any
	return (
		function(a1: any, a2: any): any
			-- ROBLOX deviation END
			local cache2 = memoize2cache:get(a1)
			if not Boolean.toJSBoolean(cache2) then
				cache2 = WeakMap.new()
				memoize2cache:set(a1, cache2)
				-- ROBLOX deviation START: cast to helper type
				-- local newValue = fn(a1, a2)
				local newValue = (fn :: ExtendsFn)(a1, a2)
				-- ROBLOX deviation END
				cache2:set(a2, newValue)
				return newValue
			end
			local cachedValue = cache2:get(a2)
			if cachedValue == nil then
				-- ROBLOX deviation START: cast to helper type
				-- local newValue = fn(a1, a2)
				local newValue = (fn :: ExtendsFn)(a1, a2)
				-- ROBLOX deviation END
				cache2:set(a2, newValue)
				return newValue
			end
			return cachedValue
			-- ROBLOX deviation START: use helper type and cast wrapped function to generic type
			-- end :: F
		end :: ExtendsFn
	) :: F
	-- ROBLOX deviation END
end
exports.memoize2 = memoize2
local function memoize3<F>(fn: F): F
	local memoize3Cache: WeakMap<Record<string, any>, WeakMap<Record<string, any>, any>> = WeakMap.new()
	-- ROBLOX deviation START: wrap function to cast to generic type
	-- return function(a1: any, a2: any, a3: any)
	return (
		function(a1: any, a2: any, a3: any)
			-- ROBLOX deviation END
			local cache2 = memoize3Cache:get(a1)
			if not Boolean.toJSBoolean(cache2) then
				cache2 = WeakMap.new()
				memoize3Cache:set(a1, cache2)
				local cache3 = WeakMap.new()
				cache2:set(a2, cache3)
				-- ROBLOX deviation START: cast to helper type
				-- local newValue = fn(a1, a2, a3)
				local newValue = (fn :: ExtendsFn)(a1, a2, a3)
				-- ROBLOX deviation END
				cache3:set(a3, newValue)
				return newValue
			end
			local cache3 = cache2:get(a2)
			if not Boolean.toJSBoolean(cache3) then
				cache3 = WeakMap.new()
				cache2:set(a2, cache3)
				-- ROBLOX deviation START: cast to helper type
				-- local newValue = fn(a1, a2, a3)
				local newValue = (fn :: ExtendsFn)(a1, a2, a3)
				-- ROBLOX deviation END
				cache3:set(a3, newValue)
				return newValue
			end
			local cachedValue = cache3:get(a3)
			if cachedValue == nil then
				-- ROBLOX deviation START: cast to helper type
				-- local newValue = fn(a1, a2, a3)
				local newValue = (fn :: ExtendsFn)(a1, a2, a3)
				-- ROBLOX deviation END
				cache3:set(a3, newValue)
				return newValue
			end
			return cachedValue
			-- ROBLOX deviation START: use helper type and cast wrapped function to generic type
			-- end :: F
		end :: ExtendsFn
	) :: F
	-- ROBLOX deviation END
end
exports.memoize3 = memoize3
local function memoize4<F>(fn: F): F
	local memoize4Cache: WeakMap<Record<string, any>, WeakMap<Record<string, any>, any>> = WeakMap.new()
	-- ROBLOX deviation START: wrap function to cast to generic type
	-- return function(a1: any, a2: any, a3: any, a4: any)
	return (
		function(a1: any, a2: any, a3: any, a4: any)
			-- ROBLOX deviation END
			local cache2 = memoize4Cache:get(a1)
			if not Boolean.toJSBoolean(cache2) then
				cache2 = WeakMap.new()
				memoize4Cache:set(a1, cache2)
				local cache3 = WeakMap.new()
				cache2:set(a2, cache3)
				local cache4 = WeakMap.new()
				cache3:set(a3, cache4)
				-- ROBLOX deviation START: cast to helper type
				-- local newValue = fn(a1, a2, a3, a4)
				local newValue = (fn :: ExtendsFn)(a1, a2, a3, a4)
				-- ROBLOX deviation END
				cache4:set(a4, newValue)
				return newValue
			end
			local cache3 = cache2:get(a2)
			if not Boolean.toJSBoolean(cache3) then
				cache3 = WeakMap.new()
				cache2:set(a2, cache3)
				local cache4 = WeakMap.new()
				cache3:set(a3, cache4)
				-- ROBLOX deviation START: cast to helper type
				-- local newValue = fn(a1, a2, a3, a4)
				local newValue = (fn :: ExtendsFn)(a1, a2, a3, a4)
				-- ROBLOX deviation END
				cache4:set(a4, newValue)
				return newValue
			end
			local cache4 = cache3:get(a3)
			if not Boolean.toJSBoolean(cache4) then
				-- ROBLOX deviation START: reuse declared variable (shadows variable)
				-- local cache4 = WeakMap.new()
				cache4 = WeakMap.new()
				-- ROBLOX deviation END
				cache3:set(a3, cache4)
				-- ROBLOX deviation START: cast to helper type
				-- local newValue = fn(a1, a2, a3, a4)
				local newValue = (fn :: ExtendsFn)(a1, a2, a3, a4)
				-- ROBLOX deviation END
				cache4:set(a4, newValue)
				return newValue
			end
			local cachedValue = cache4:get(a4)
			if cachedValue == nil then
				-- ROBLOX deviation START: cast to helper type
				-- local newValue = fn(a1, a2, a3, a4)
				local newValue = (fn :: ExtendsFn)(a1, a2, a3, a4)
				-- ROBLOX deviation END
				cache4:set(a4, newValue)
				return newValue
			end
			return cachedValue
			-- ROBLOX deviation START: use helper type and cast wrapped function to generic type
			-- end :: F
		end :: ExtendsFn
	) :: F
	-- ROBLOX deviation END
end
exports.memoize4 = memoize4
local function memoize5<F>(fn: F): F
	local memoize5Cache: WeakMap<Record<string, any>, WeakMap<Record<string, any>, any>> = WeakMap.new()
	-- ROBLOX deviation START: wrap function to cast to generic type
	-- return function(a1: any, a2: any, a3: any, a4: any, a5: any)
	return (
		function(a1: any, a2: any, a3: any, a4: any, a5: any)
			-- ROBLOX deviation END
			local cache2 = memoize5Cache:get(a1)
			if not Boolean.toJSBoolean(cache2) then
				cache2 = WeakMap.new()
				memoize5Cache:set(a1, cache2)
				local cache3 = WeakMap.new()
				cache2:set(a2, cache3)
				local cache4 = WeakMap.new()
				cache3:set(a3, cache4)
				local cache5 = WeakMap.new()
				cache4:set(a4, cache5)
				-- ROBLOX deviation START: cast to helper type
				-- local newValue = fn(a1, a2, a3, a4, a5)
				local newValue = (fn :: ExtendsFn)(a1, a2, a3, a4, a5)
				-- ROBLOX deviation END
				cache5:set(a5, newValue)
				return newValue
			end
			local cache3 = cache2:get(a2)
			if not Boolean.toJSBoolean(cache3) then
				cache3 = WeakMap.new()
				cache2:set(a2, cache3)
				local cache4 = WeakMap.new()
				cache3:set(a3, cache4)
				local cache5 = WeakMap.new()
				cache4:set(a4, cache5)
				-- ROBLOX deviation START: cast to helper type
				-- local newValue = fn(a1, a2, a3, a4, a5)
				local newValue = (fn :: ExtendsFn)(a1, a2, a3, a4, a5)
				-- ROBLOX deviation END
				cache5:set(a5, newValue)
				return newValue
			end
			local cache4 = cache3:get(a3)
			if not Boolean.toJSBoolean(cache4) then
				cache4 = WeakMap.new()
				cache3:set(a3, cache4)
				local cache5 = WeakMap.new()
				cache4:set(a4, cache5)
				-- ROBLOX deviation START: cast to helper type
				-- local newValue = fn(a1, a2, a3, a4, a5)
				local newValue = (fn :: ExtendsFn)(a1, a2, a3, a4, a5)
				-- ROBLOX deviation END
				cache5:set(a5, newValue)
				return newValue
			end
			local cache5 = cache4:get(a4)
			if not Boolean.toJSBoolean(cache5) then
				cache5 = WeakMap.new()
				cache4:set(a4, cache5)
				-- ROBLOX deviation START: cast to helper type
				-- local newValue = fn(a1, a2, a3, a4, a5)
				local newValue = (fn :: ExtendsFn)(a1, a2, a3, a4, a5)
				-- ROBLOX deviation END
				cache5:set(a5, newValue)
				return newValue
			end
			local cachedValue = cache5:get(a5)
			if cachedValue == nil then
				-- ROBLOX deviation START: cast to helper type
				-- local newValue = fn(a1, a2, a3, a4, a5)
				local newValue = (fn :: ExtendsFn)(a1, a2, a3, a4, a5)
				-- ROBLOX deviation END
				cache5:set(a5, newValue)
				return newValue
			end
			return cachedValue
			-- ROBLOX deviation START: use helper type and cast wrapped function to generic type
			-- end :: F
		end :: ExtendsFn
	) :: F
	-- ROBLOX deviation END
end
exports.memoize5 = memoize5
local memoize2of4cache: WeakMap<Record<string, any>, WeakMap<Record<string, any>, any>> = WeakMap.new()
local function memoize2of4<F>(fn: F): F
	-- ROBLOX deviation START: wrap function to cast to generic type
	-- return function(a1: any, a2: any, a3: any, a4: any): any
	return (
		function(a1: any, a2: any, a3: any, a4: any): any
			-- ROBLOX deviation END
			local cache2 = memoize2of4cache:get(a1)
			if not Boolean.toJSBoolean(cache2) then
				cache2 = WeakMap.new()
				memoize2of4cache:set(a1, cache2)
				-- ROBLOX deviation START: cast to helper type
				-- local newValue = fn(a1, a2, a3, a4)
				local newValue = (fn :: ExtendsFn)(a1, a2, a3, a4)
				-- ROBLOX deviation END
				cache2:set(a2, newValue)
				return newValue
			end
			local cachedValue = cache2:get(a2)
			if cachedValue == nil then
				-- ROBLOX deviation START: cast to helper type
				-- local newValue = fn(a1, a2, a3, a4)
				local newValue = (fn :: ExtendsFn)(a1, a2, a3, a4)
				-- ROBLOX deviation END
				cache2:set(a2, newValue)
				return newValue
			end
			return cachedValue
			-- ROBLOX deviation START: use helper type and cast wrapped function to generic type
			-- end :: F
		end :: ExtendsFn
	) :: F
	-- ROBLOX deviation END
end
exports.memoize2of4 = memoize2of4
return exports
