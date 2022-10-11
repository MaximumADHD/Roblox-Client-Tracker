-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/3161e31538c33f3aafb18f955fbee0e6e7a0b0c0/src/utilities/observables/asyncMap.ts

local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Boolean = LuauPolyfill.Boolean
type Promise<T> = LuauPolyfill.Promise<T>
type PromiseLike<T> = LuauPolyfill.PromiseLike<T>

local Promise = require(rootWorkspace.Promise)

type Function = (...any) -> any

local exports = {}

local ObservableModule = require(script.Parent.Observable)
local Observable = ObservableModule.Observable
type Observable<T> = ObservableModule.Observable<T>
type Observer<T> = ObservableModule.Observer<T>

--[[
	ROBLOX deviation: no generic params for functions are supported.
	V_, R_ are placeholders for generic V, R param
]]
type V_ = any
type R_ = any

-- Like Observable.prototype.map, except that the mapping function can
-- optionally return a Promise (or be async).
local function asyncMap(
	observable: Observable<V_>,
	mapFn: (value: V_) -> R_ | PromiseLike<R_>,
	catchFn: ((error: any) -> R_ | PromiseLike<R_>)?
): Observable<R_>
	return Observable.new(function(observer)
		-- ROBLOX deviation: predeclare function
		local handler: Observer<V_>

		local next, error_, complete = observer.next, observer.error, observer.complete
		local activeCallbackCount = 0
		local completed = false
		local promiseQueue = (
			{
				-- Normally we would initialize promiseQueue to Promise.resolve(), but
				-- in this case, for backwards compatibility, we need to be careful to
				-- invoke the first callback synchronously.
				andThen = function(self, callback: () -> any)
					return Promise.new(function(resolve)
						return resolve(callback())
					end)
				end,
			} :: any
		) :: Promise<nil>

		local function makeCallback(
			examiner: typeof(mapFn) | typeof(catchFn),
			delegate: typeof(next) | typeof(error_)
		): ((_self: any, arg: any) -> ())
			if Boolean.toJSBoolean(examiner) then
				return function(_self: any, arg): ()
					activeCallbackCount += 1
					local function both()
						return (examiner :: Function)(arg)
					end
					promiseQueue = promiseQueue
						:andThen(
							-- ROBLOX deviation: delaying promise resolution to mimic JS behavior
							function()
								return Promise.delay(0)
							end
						)
						:andThen(both, both)
						:andThen(function(result)
							activeCallbackCount -= 1
							if Boolean.toJSBoolean(next) then
								next(observer, result)
							end
							if Boolean.toJSBoolean(completed) then
								(handler.complete :: Function)()
							end
						end, function(error_)
							activeCallbackCount -= 1
							error(error_)
						end)
						:catch(function(caught)
							if Boolean.toJSBoolean(error_) then
								return error_(observer, caught)
							end
							return
						end)
				end
			else
				return function(_self, arg)
					if Boolean.toJSBoolean(delegate) then
						(delegate :: Function)(observer, arg)
					end
				end
			end
		end

		handler = {
			next = makeCallback(mapFn, next),
			error = makeCallback(catchFn, error_),
			complete = function()
				completed = true
				if not Boolean.toJSBoolean(activeCallbackCount) then
					if Boolean.toJSBoolean(complete) then
						complete(observer)
					end
				end
			end,
		}

		local sub = observable:subscribe(handler)
		return function()
			return sub:unsubscribe()
		end
	end)
end

exports.asyncMap = asyncMap

return exports
