-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/mapAsyncIterator.ts
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Boolean = LuauPolyfill.Boolean
type Promise<T> = LuauPolyfill.Promise<T>
-- ROBLOX deviation START: additional imports
local Promise = require(Packages.Promise)
type AsyncIterableIterator<T> = unknown
type AsyncIterator<T, TReturn = any, TNext = nil> = {
	next: (self: AsyncIterator<T, TReturn, TNext>, tNext: TNext?) -> Promise<IteratorResult<T, TReturn>>,
	["return"]: ((self: AsyncIterator<T, TReturn, TNext>, value: unknown?) -> Promise<IteratorResult<T, TReturn>>)?,
	throw: ((self: AsyncIterator<T, TReturn, TNext>, e: any?) -> Promise<IteratorResult<T, TReturn>>)?,
}
type IteratorResult<T, TReturn = any> = unknown
-- ROBLOX deviation END
-- ROBLOX deviation START: add predefined functions
local asyncMapValue
local iteratorResult
-- ROBLOX deviation END
local exports = {}
--[[*
 * Given an AsyncIterable and a callback function, return an AsyncIterator
 * which produces values mapped via calling the callback function.
 ]]
local function mapAsyncIterator<T, U>(
	iterator: AsyncIterator<T>,
	callback: (value: T) -> Promise<U> | U,
	rejectCallback: any?
): AsyncIterableIterator<U>
	local _return: any --[[ ROBLOX CHECK: replaced unhandled characters in identifier. Original identifier: $return: any ]]
	local abruptClose: any
	if typeof(iterator["return"]) == "function" then
		_return --[[ ROBLOX CHECK: replaced unhandled characters in identifier. Original identifier: $return ]] =
			iterator["return"]
		abruptClose = function(error_)
			local function rethrow()
				return Promise.reject(error_)
			end
			return _return --[[ ROBLOX CHECK: replaced unhandled characters in identifier. Original identifier: $return ]](
				iterator
				-- ROBLOX deviation START: use andThen
				-- ):then_(rethrow, rethrow)
			):andThen(rethrow, rethrow)
			-- ROBLOX deviation END
		end
	end
	local function mapResult(result: any)
		return if Boolean.toJSBoolean(result.done)
			then result
			-- ROBLOX deviation START: use andThen
			-- else asyncMapValue(result.value, callback):then_(iteratorResult, abruptClose)
			else asyncMapValue(result.value, callback):andThen(iteratorResult, abruptClose)
		-- ROBLOX deviation END
	end
	local mapReject: any
	-- ROBLOX deviation START: simplify to help analyze
	-- if Boolean.toJSBoolean(rejectCallback) then
	if rejectCallback then
		-- ROBLOX deviation END
		-- Capture rejectCallback to ensure it cannot be null.
		local reject = rejectCallback
		mapReject = function(error_)
			-- ROBLOX deviation START: use andThen
			-- return asyncMapValue(error_, reject):then_(iteratorResult, abruptClose)
			return asyncMapValue(error_, reject):andThen(iteratorResult, abruptClose)
			-- ROBLOX deviation END
		end
	end
	return {
		next = function(self)
			-- ROBLOX deviation START: use andThen and fix next call
			-- return iterator:next_():then_(mapResult, mapReject)
			return iterator:next():andThen(mapResult, mapReject)
			-- ROBLOX deviation END
		end,
		["return"] = function(self)
			return if Boolean.toJSBoolean(
					_return --[[ ROBLOX CHECK: replaced unhandled characters in identifier. Original identifier: $return ]]
				)
				then _return --[[ ROBLOX CHECK: replaced unhandled characters in identifier. Original identifier: $return ]](
					iterator
					-- ROBLOX deviation START: use andThen
					-- ):then_(mapResult, mapReject)
				):andThen(mapResult, mapReject)
				-- ROBLOX deviation END
				else Promise.resolve({ value = nil, done = true })
		end,
		throw = function(self, error_)
			if typeof(iterator.throw) == "function" then
				-- ROBLOX deviation START: use andThen
				-- return iterator:throw(error_):then_(mapResult, mapReject)
				-- ROBLOX FIXME Luau: had to use dot notation for analyze to not complain about iterator.throw being possibly nil
				return iterator.throw(iterator, error_):andThen(mapResult, mapReject)
				-- ROBLOX deviation END
			end
			return Promise.reject(error_):catch(abruptClose)
		end,
		-- ROBLOX deviation START: no asyncIterator implementation available yet
		-- [tostring(Symbol.asyncIterator)] = function(self)
		-- 	return self
		-- end,
		-- ROBLOX deviation END
	}
end
exports.mapAsyncIterator = mapAsyncIterator
-- ROBLOX deviation START: predefine function
-- local function asyncMapValue<T, U>(value: T, callback: (value: T) -> Promise<U> | U): Promise<U>
function asyncMapValue<T, U>(value: T, callback: (value: T) -> Promise<U> | U): Promise<U>
	-- ROBLOX deviation END
	return Promise.new(function(resolve)
		return resolve(callback(value))
	end)
end
-- ROBLOX deviation START: predefine function
-- local function iteratorResult<T>(value: T): IteratorResult<T>
function iteratorResult<T>(value: T): IteratorResult<T>
	-- ROBLOX deviation END
	return { value = value, done = false }
end
return exports
