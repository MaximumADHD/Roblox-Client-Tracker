-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/utilities/testing/observableToPromise.ts

local exports = {}

local srcWorkspace = script.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Boolean = LuauPolyfill.Boolean
local Error = LuauPolyfill.Error
local setTimeout = LuauPolyfill.setTimeout

type Array<T> = LuauPolyfill.Array<T>
type Error = LuauPolyfill.Error
type Promise<T> = LuauPolyfill.Promise<T>

local Promise = require(rootWorkspace.Promise)

local observableQueryModule = require(rootWorkspace.ApolloClient)
type OperationVariables = observableQueryModule.OperationVariables
type ObservableQuery_<TData> = observableQueryModule.ObservableQuery<TData, OperationVariables>
local coreTypesModule = require(rootWorkspace.ApolloClient)
type ApolloQueryResult<T> = coreTypesModule.ApolloQueryResult<T>
local observableModule = require(srcWorkspace.utilities.observables.Observable)
type ObservableSubscription = observableModule.ObservableSubscription

--[[*
 *
 * @param observable the observable query to subscribe to
 * @param shouldResolve should we resolve after seeing all our callbacks [default: true]
 *   (use this if you are racing the promise against another)
 * @param wait how long to wait after seeing desired callbacks before resolving
 *   [default: -1 => don't wait]
 * @param errorCallbacks an expected set of errors
]]
export type Options = {
	observable: ObservableQuery_<any>,
	shouldResolve: boolean?,
	wait: number?,
	errorCallbacks: Array<(error: Error) -> any>?,
}

export type ResultCallback = (result: ApolloQueryResult<any>) -> ...any

-- Take an observable and N callbacks, and observe the observable,
-- ensuring it is called exactly N times, resolving once it has done so.
-- Optionally takes a timeout, which it will wait X ms after the Nth callback
-- to ensure it is not called again.
local function observableToPromiseAndSubscription(
	ref: Options,
	...: ResultCallback
): {
	promise: Promise<Array<any>>,
	subscription: ObservableSubscription,
}
	local cbs = { ... }

	local observable = ref.observable
	local shouldResolve, wait_, errorCallbacks
	if ref.shouldResolve ~= nil then
		shouldResolve = ref.shouldResolve
	else
		shouldResolve = true
	end
	if ref.wait ~= nil then
		wait_ = ref.wait
	else
		wait_ = -1
	end
	if ref.errorCallbacks ~= nil then
		errorCallbacks = ref.errorCallbacks
	else
		errorCallbacks = {}
	end
	errorCallbacks = errorCallbacks :: Array<(error: Error) -> any>

	local subscription: ObservableSubscription = nil :: any
	local promise = Promise.new(function(resolve, reject)
		local errorIndex = 0
		local cbIndex = 0
		local results: Array<any> = {}

		local function tryToResolve()
			if not shouldResolve then
				return
			end

			local function done()
				subscription:unsubscribe()
				-- XXX: we could pass a few other things out here?
				resolve(results)
			end

			if cbIndex == #cbs and errorIndex == #errorCallbacks then
				if wait_ == -1 then
					done()
				else
					setTimeout(done, wait_)
				end
			end
		end

		local queue = Promise.delay(0)

		subscription = observable:subscribe({
			next = function(_self, result: ApolloQueryResult<any>)
				queue = queue
					:andThen(function()
						local ref_ = cbIndex
						cbIndex += 1
						local cb = cbs[ref_ + 1]
						if Boolean.toJSBoolean(cb) then
							return cb(result)
						end
						reject(Error.new(("Observable 'next' method called more than %d times"):format(#cbs)))
						return nil
					end)
					:andThen(function(res)
						table.insert(results, res)
						tryToResolve()
					end, reject)
			end,
			error = function(_self, error_)
				queue = queue
					:andThen(function()
						local ref_ = errorIndex
						errorIndex += 1
						local errorCb = errorCallbacks[ref_ + 1]
						if Boolean.toJSBoolean(errorCb) then
							return errorCb(error_)
						end
						reject(error_)
						return nil
					end)
					:andThen(tryToResolve, reject)
			end,
		})
	end)

	return {
		promise = promise,
		subscription = subscription,
	}
end

exports.observableToPromiseAndSubscription = observableToPromiseAndSubscription

exports.default = function(options: Options, ...: ResultCallback): Promise<Array<any>>
	return observableToPromiseAndSubscription(options, ...).promise
end
return exports
