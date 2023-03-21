-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/utilities/testing/mocking/mockSubscriptionLink.ts

local exports = {}
local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Error = LuauPolyfill.Error
local setTimeout = LuauPolyfill.setTimeout

type Array<T> = LuauPolyfill.Array<T>
type Error = LuauPolyfill.Error
type Record<T, U> = { [T]: U }

local utilitiesModule = require(srcWorkspace.utilities)
local Observable = utilitiesModule.Observable
type Observable<T> = utilitiesModule.Observable<T>
local coreModule = require(rootWorkspace.ApolloClient)
local ApolloLink = coreModule.ApolloLink
type ApolloLink = coreModule.ApolloLink
type FetchResult<TData, C, E> = coreModule.FetchResult<TData, C, E>
type Operation = coreModule.Operation

export type MockedSubscription = {
	request: Operation,
}

export type MockedSubscriptionResult = {
	result: FetchResult<{ [string]: any }, Record<string, any>, Record<string, any>>?,
	error: Error?,
	delay: number?,
}

export type MockSubscriptionLink = ApolloLink & {
	unsubscribers: Array<any>,
	setups: Array<any>,
	operation: Operation,
	request: (
		self: MockSubscriptionLink,
		operation: Operation
	) -> Observable<FetchResult<{ [string]: any }, Record<string, any>, Record<string, any>>>,
	simulateResult: (self: MockSubscriptionLink, result: MockedSubscriptionResult, complete: boolean?) -> (),
	simulateComplete: (self: MockSubscriptionLink) -> (),
	onSetup: (self: MockSubscriptionLink, listener: any) -> (),
	onUnsubscribe: (self: MockSubscriptionLink, listener: any) -> (),
}

local MockSubscriptionLink = setmetatable({}, { __index = ApolloLink })
MockSubscriptionLink.__index = MockSubscriptionLink

function MockSubscriptionLink.new(): MockSubscriptionLink
	local self = setmetatable(ApolloLink.new(), MockSubscriptionLink) :: any

	self.unsubscribers = {}
	self.setups = {}
	self.observers = {}

	return (self :: any) :: MockSubscriptionLink
end

function MockSubscriptionLink:request(operation: Operation): Observable<
	FetchResult<{ [string]: any }, Record<string, any>, Record<string, any>>
>
	self.operation = operation
	return Observable.new(function(observer)
		Array.forEach(self.setups, function(x)
			x()
		end)
		table.insert(self.observers, observer)
		return function()
			Array.forEach(self.unsubscribers, function(x)
				x()
			end)
		end
	end)
end

function MockSubscriptionLink:simulateResult(result: MockedSubscriptionResult, complete: boolean?): ()
	if complete == nil then
		complete = false
	end

	setTimeout(function()
		local observers = self.observers
		if not Boolean.toJSBoolean(#observers) then
			error(Error.new("subscription torn down"))
		end
		Array.forEach(observers, function(observer)
			if Boolean.toJSBoolean(result.result) and Boolean.toJSBoolean(observer.next) then
				observer:next(result.result)
			end
			if Boolean.toJSBoolean(result.error) and Boolean.toJSBoolean(observer.error) then
				observer:error(result.error)
			end
			if complete and Boolean.toJSBoolean(observer.complete) then
				observer:complete()
			end
		end)
	end, Boolean.toJSBoolean(result.delay) and result.delay or 0)
end

function MockSubscriptionLink:simulateComplete(): ()
	local observers = self.observers
	if not Boolean.toJSBoolean(#observers) then
		error(Error.new("subscription torn down"))
	end
	Array.forEach(observers, function(observer)
		if Boolean.toJSBoolean(observer.complete) then
			observer:complete()
		end
	end)
end

function MockSubscriptionLink:onSetup(listener: any): ()
	self.setups = Array.concat(self.setups, { listener })
end

function MockSubscriptionLink:onUnsubscribe(listener: any): ()
	self.unsubscribers = Array.concat(self.unsubscribers, { listener })
end

exports.MockSubscriptionLink = MockSubscriptionLink

local function mockObservableLink(): MockSubscriptionLink
	return MockSubscriptionLink.new()
end
exports.mockObservableLink = mockObservableLink

return exports
