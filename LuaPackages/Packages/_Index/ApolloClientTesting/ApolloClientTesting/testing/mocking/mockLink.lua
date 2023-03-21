-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/utilities/testing/mocking/mockLink.ts
local exports = {}
local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Array, Boolean, clearTimeout, Error, setTimeout =
	LuauPolyfill.Array, LuauPolyfill.Boolean, LuauPolyfill.clearTimeout, LuauPolyfill.Error, LuauPolyfill.setTimeout

type Array<T> = LuauPolyfill.Array<T>
type Error = LuauPolyfill.Error
type Record<T, U> = { [T]: U }

local isCallable = require(srcWorkspace.luaUtils.isCallable)

local HttpService = game:GetService("HttpService")

local print_ = require(rootWorkspace.GraphQL).print
local equal = require(srcWorkspace.jsutils.equal)
local invariant = require(srcWorkspace.jsutils.invariant).invariant
local linkCoreModule = require(rootWorkspace.ApolloClient)

local ApolloLink = linkCoreModule.ApolloLink
type ApolloLink = linkCoreModule.ApolloLink
type Operation = linkCoreModule.Operation
type GraphQLRequest = linkCoreModule.GraphQLRequest
type FetchResult<TData, C, E> = linkCoreModule.FetchResult<TData, C, E>

local utilitiesModule = require(srcWorkspace.utilities)
local Observable = utilitiesModule.Observable
type Observable<T> = utilitiesModule.Observable<T>
local addTypenameToDocument = utilitiesModule.addTypenameToDocument
local removeClientSetsFromDocument = utilitiesModule.removeClientSetsFromDocument
local removeConnectionDirectiveFromDocument = utilitiesModule.removeConnectionDirectiveFromDocument
local cloneDeep = utilitiesModule.cloneDeep
local stringifyForDisplay = utilitiesModule.stringifyForDisplay

export type ResultFunction<T> = () -> T
export type MockedResponse_ = MockedResponse<Record<string, any>>

export type MockedResponse<TData> = {
	request: GraphQLRequest,
	result: (FetchResult<TData, any, any> | ResultFunction<FetchResult<TData, any, any>>)?,
	error: Error?,
	delay: number?,
	newData: ResultFunction<FetchResult<TData, any, any>>?,
}

local function requestToKey(request: GraphQLRequest, addTypename: boolean): string
	local queryString
	if Boolean.toJSBoolean(request.query) then
		if addTypename then
			queryString = print_(addTypenameToDocument(request.query))
		else
			queryString = print_(request.query)
		end
	else
		queryString = request.query :: any
	end

	local requestKey = { query = queryString }

	return HttpService:JSONEncode(requestKey)
end

export type MockLink = ApolloLink & {
	addTypename: boolean,
	operation: Operation,
	addMockedResponse: ((self: MockLink, mockedResponse: MockedResponse<any>) -> ()),
	request: ((self: MockLink, operation: Operation) -> Observable<FetchResult<any, any, any>> | nil),
}

local MockLink = setmetatable({}, { __index = ApolloLink })
MockLink.__index = MockLink

function MockLink.new(mockedResponses: Array<MockedResponse<any>>, addTypename: boolean?): MockLink
	if addTypename == nil then
		addTypename = true
	end

	local self = (setmetatable(ApolloLink.new(), MockLink) :: any) :: MockLink
	self.addTypename = addTypename :: boolean;
	(self :: any).mockedResponsesByKey = {} :: { [string]: Array<MockedResponse<any>> }
	if Boolean.toJSBoolean(mockedResponses) then
		Array.forEach(mockedResponses, function(mockedResponse)
			self:addMockedResponse(mockedResponse)
		end)
	end

	return self
end

function MockLink:addMockedResponse(mockedResponse: MockedResponse<Record<string, any>>)
	local normalizedMockedResponse = self:normalizeMockedResponse(mockedResponse)
	local key = requestToKey(normalizedMockedResponse.request, self.addTypename)
	local mockedResponses = self.mockedResponsesByKey[key]
	if not Boolean.toJSBoolean(mockedResponses) then
		mockedResponses = {}
		self.mockedResponsesByKey[key] = mockedResponses
	end
	table.insert(mockedResponses, normalizedMockedResponse)
end

function MockLink:request(
	operation: Operation
): Observable<FetchResult<{ [string]: any }, Record<string, any>, Record<string, any>>> | nil
	self.operation = operation
	local key = requestToKey((operation :: any) :: GraphQLRequest, self.addTypename)
	local unmatchedVars: Array<Record<string, any>> = {}
	local requestVariables = Boolean.toJSBoolean(operation.variables) and operation.variables or {}
	local mockedResponses = self.mockedResponsesByKey[key]
	local responseIndex
	if Boolean.toJSBoolean(mockedResponses) then
		responseIndex = Array.findIndex(mockedResponses, function(res, _index)
			local mockedResponseVars = Boolean.toJSBoolean(res.request.variables) and res.request.variables or {}
			if equal(requestVariables, mockedResponseVars) then
				return true
			end
			table.insert(unmatchedVars, mockedResponseVars)
			return false
		end)
	else
		responseIndex = -1
	end

	local response
	if responseIndex >= 0 then
		response = mockedResponses[responseIndex]
	else
		response = nil
	end

	local configError: Error

	if not Boolean.toJSBoolean(response) then
		configError = Error.new(([[No more mocked responses for the query: %s
Expected variables: %s
%s]]):format(
			print_(operation.query),
			stringifyForDisplay(operation.variables),
			(function()
				if #unmatchedVars > 0 then
					return ([[

Failed to match %s mock%s for this query, which had the following variables:
	%s
]]):format(
						tostring(#unmatchedVars),
						#unmatchedVars == 1 and "" or "s",
						Array.join(
							Array.map(unmatchedVars, function(d)
								return ("  %s"):format(stringifyForDisplay(d))
							end, nil),
							"\n"
						)
					)
				else
					return ""
				end
			end)()
		))
	else
		Array.splice(mockedResponses, responseIndex, 1)
		local newData = response.newData
		if Boolean.toJSBoolean(newData) then
			response.result = newData()
			table.insert(mockedResponses, response)
		end
		if not Boolean.toJSBoolean(response.result) and not Boolean.toJSBoolean(response.error) then
			configError = Error.new(("Mocked response should contain either result or error: %s"):format(key))
		end
	end

	return Observable.new(function(observer)
		local timer = setTimeout(function()
			if Boolean.toJSBoolean(configError) then
				xpcall(function()
					-- The onError function can return false to indicate that
					-- configError need not be passed to observer.error. For
					-- example, the default implementation of onError calls
					-- observer.error(configError) and then returns false to
					-- prevent this extra (harmless) observer.error call.
					if self:onError(configError, observer) ~= false then
						error(configError)
					end
				end, function(error_)
					observer:error(error_)
				end)
			elseif Boolean.toJSBoolean(response) then
				if Boolean.toJSBoolean(response.error) then
					observer:error(response.error)
				else
					if Boolean.toJSBoolean(response.result) then
						observer:next((function()
							-- ROBLOX deviation: need to check type function and callable tables
							if isCallable(response.result) then
								return (response.result :: ResultFunction<FetchResult<any, any, any>>)()
							else
								return response.result
							end
						end)())
					end
					observer:complete()
				end
			end
		end, Boolean.toJSBoolean(response) and Boolean.toJSBoolean(response.delay) and response.delay or 0)
		return function()
			clearTimeout(timer)
		end
	end)
end

function MockLink:normalizeMockedResponse(mockedResponse: MockedResponse<any>): MockedResponse<any>
	local newMockedResponse = cloneDeep(mockedResponse)
	local queryWithoutConnection = removeConnectionDirectiveFromDocument(newMockedResponse.request.query)
	invariant(queryWithoutConnection, "query is required")
	newMockedResponse.request.query = queryWithoutConnection
	local query = removeClientSetsFromDocument(newMockedResponse.request.query)
	if Boolean.toJSBoolean(query) then
		newMockedResponse.request.query = query
	end
	return newMockedResponse
end

exports.MockLink = MockLink

export type MockApolloLink = ApolloLink & { operation: Operation? }

-- Pass in multiple mocked responses, so that you can test flows that end up
-- making multiple queries to the server.
-- NOTE: The last arg can optionally be an `addTypename` arg.
local function mockSingleLink(...: any)
	local mockedResponses = { ... }

	-- To pull off the potential typename. If this isn't a boolean, we'll just
	-- set it true later.
	local maybeTypename = mockedResponses[#mockedResponses]
	local mocks = Array.slice(mockedResponses, 1, #mockedResponses)
	if typeof(maybeTypename) ~= "boolean" then
		mocks = mockedResponses
		maybeTypename = true
	end
	return MockLink.new(mocks, maybeTypename)
end
exports.mockSingleLink = mockSingleLink

return exports
