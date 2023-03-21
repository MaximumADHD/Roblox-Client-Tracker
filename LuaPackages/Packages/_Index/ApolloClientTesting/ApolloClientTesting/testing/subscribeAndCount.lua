-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/utilities/testing/subscribeAndCount.ts

local exports = {}

local srcWorkspace = script.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local Promise = require(rootWorkspace.Promise)

--[[
  ROBLOX deviation: no generic params for functions are supported.
  TData_, TVariables_
  are a placeholders for generic TData, TVariables params
]]
type TData_ = any
type TVariables_ = any

local observableQueryModule = require(rootWorkspace.ApolloClient)
type ObservableQuery<TData, TVariables> = observableQueryModule.ObservableQuery<TData, TVariables>
local typesModule = require(rootWorkspace.ApolloClient)
type ApolloQueryResult<T> = typesModule.ApolloQueryResult<T>
type OperationVariables = typesModule.OperationVariables
local observableModule = require(srcWorkspace.utilities.observables.Observable)
type ObservableSubscription = observableModule.ObservableSubscription
local asyncMap = require(srcWorkspace.utilities.observables.asyncMap).asyncMap

local function subscribeAndCount(
	reject: (reason: any) -> ...any,
	observable: ObservableQuery<TData_, TVariables_>,
	cb: (handleCount: number, result: ApolloQueryResult<TData_>) -> ...any
): ObservableSubscription
	-- ROBLOX deviation: predefine function
	local error_

	-- Use a Promise queue to prevent callbacks from being run out of order.
	local queue = Promise.delay(0)
	local handleCount = 0

	local subscription = asyncMap(observable, function(result: ApolloQueryResult<TData_>)
		-- All previous asynchronous callbacks must complete before cb can
		-- be invoked with this result.
		queue = queue
			:andThen(
				-- ROBLOX deviation: delaying promise resolution to mimic JS behavior
				function()
					return Promise.delay(0)
				end
			)
			:andThen(function()
				handleCount += 1
				return cb(handleCount, result)
			end)
			:catch(error_)
		return queue
	end):subscribe({
		error = function(_self, ...)
			error_(...)
		end,
	})

	function error_(e: any)
		subscription:unsubscribe()
		reject(e)
	end

	return subscription
end
exports.default = subscribeAndCount

return exports
