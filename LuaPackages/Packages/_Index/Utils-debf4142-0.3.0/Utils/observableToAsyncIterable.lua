--!nocheck
--!nolint
-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/observableToAsyncIterable.ts
local Packages --[[ ROBLOX comment: must define Packages module ]]
local LuauPolyfill = require(Packages.LuauPolyfill)
local Boolean = LuauPolyfill.Boolean
type Array<T> = LuauPolyfill.Array<T>
type Error = LuauPolyfill.Error
local exports = {}
export type Observer<T> = { next: (value: T) -> (), error: (error_: any) -> (), complete: () -> () }
export type Observable<T> = {
	subscribe: (self: Observable, observer: Observer<T>) -> { unsubscribe: () -> () },
}
export type Callback = (value: any?) -> any
local function observableToAsyncIterable<T>(observable: Observable<T>): AsyncIterableIterator<T>
	local pullQueue: Array<Callback> = {}
	local pushQueue: Array<any> = {}
	local listening = true
	local function pushValue(value: any)
		if pullQueue.length ~= 0 then
			-- It is safe to use the ! operator here as we check the length.
			(table.remove(pullQueue, 1) --[[ ROBLOX CHECK: check if 'pullQueue' is an Array ]] :: any)({
				value = value,
				done = false,
			})
		else
			table.insert(pushQueue, { value = value, done = false }) --[[ ROBLOX CHECK: check if 'pushQueue' is an Array ]]
		end
	end
	local function pushError(error_)
		if pullQueue.length ~= 0 then
			-- It is safe to use the ! operator here as we check the length.
			(table.remove(pullQueue, 1) --[[ ROBLOX CHECK: check if 'pullQueue' is an Array ]] :: any)({
				value = { errors = { error_ } },
				done = false,
			})
		else
			table.insert(pushQueue, { value = { errors = { error_ } }, done = false }) --[[ ROBLOX CHECK: check if 'pushQueue' is an Array ]]
		end
	end
	local function pushDone()
		if pullQueue.length ~= 0 then
			-- It is safe to use the ! operator here as we check the length.
			(table.remove(pullQueue, 1) --[[ ROBLOX CHECK: check if 'pullQueue' is an Array ]] :: any)({ done = true })
		else
			table.insert(pushQueue, { done = true }) --[[ ROBLOX CHECK: check if 'pushQueue' is an Array ]]
		end
	end
	local function pullValue()
		return Promise.new(function(resolve)
			if pushQueue.length ~= 0 then
				local element = table.remove(pushQueue, 1) --[[ ROBLOX CHECK: check if 'pushQueue' is an Array ]] -- either {value: {errors: [...]}} or {value: ...}
				resolve(element)
			else
				table.insert(pullQueue, resolve) --[[ ROBLOX CHECK: check if 'pullQueue' is an Array ]]
			end
		end)
	end
	local subscription = observable:subscribe({
		next = function(self, value: any)
			pushValue(value)
		end,
		error = function(self, err: Error)
			pushError(err)
		end,
		complete = function(self)
			pushDone()
		end,
	})
	local function emptyQueue()
		if Boolean.toJSBoolean(listening) then
			listening = false
			subscription:unsubscribe()
			for _, resolve in pullQueue do
				resolve({ value = nil, done = true })
			end
			pullQueue.length = 0
			pushQueue.length = 0
		end
	end
	return {
		next = function(self)
			-- return is a defined method, so it is safe to call it.
			return if Boolean.toJSBoolean(listening) then pullValue() else (self["return"] :: any)()
		end,
		["return"] = function(self)
			emptyQueue()
			return Promise.resolve({ value = nil, done = true })
		end,
		throw = function(self, error_)
			emptyQueue()
			return Promise.reject(error_)
		end,
		[tostring(Symbol.asyncIterator)] = function(self)
			return self
		end,
	}
end
exports.observableToAsyncIterable = observableToAsyncIterable
return exports
