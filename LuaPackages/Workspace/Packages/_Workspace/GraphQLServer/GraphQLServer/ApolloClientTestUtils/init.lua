local HttpService = game:GetService("HttpService")
local Packages = script:FindFirstAncestor("GraphQLServer").Parent

local ApolloClientModule = require(Packages.ApolloClient)
local ApolloClient = ApolloClientModule.ApolloClient
local HttpLink = ApolloClientModule.HttpLink
local InMemoryCache = ApolloClientModule.InMemoryCache

local ApolloLocalState = require(Packages.ApolloLocalState)
local typePolicies = ApolloLocalState.typePolicies

local GraphQLServer = require(script.Parent.Server)
local buildFetch = require(Packages.Fetch).buildFetch

local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object
type Object = LuauPolyfill.Object

export type Response = {
	Body: Object,
	Success: boolean?,
	StatusCode: number?,
	StatusMessage: string?,
	Headers: Object?,
}

export type MockOptions = {
	-- map from a url to a particular response
	responseMap: { [string]: Response }?,
	-- default if no responseMap is passed
	defaultResponse: Response?,
	-- responseSpy is called after a response runs
	responseSpy: ((any) -> ())?,
}

local function mockHttpService(mockOptions: MockOptions): HttpService
	local HttpServiceMock = {
		RequestInternal = function(_self, options): HttpRequest
			return {
				Start = function(_startSelf, callback)
					local response
					if mockOptions.responseMap and mockOptions.responseMap[options.Url] then
						response = mockOptions.responseMap[options.Url] :: Response
					else
						response = (mockOptions.defaultResponse or {}) :: Response
					end

					callback(true, {
						Body = HttpService:JSONEncode(response.Body),
						Success = if response.Success ~= nil then response.Success else true,
						StatusCode = if response.StatusCode then response.StatusCode else 200,
						StatusMessage = if response.StatusMessage then response.StatusMessage else "OK",
						Headers = if response.Headers then response.Headers else {},
					})
					if mockOptions.responseSpy then
						mockOptions.responseSpy(options)
					end
				end,
			} :: any
		end,
	}

	return HttpServiceMock :: any
end

local function mockApolloClient(mockOptions: MockOptions)
	local httpService = mockHttpService(mockOptions)
	local server = GraphQLServer.new({
		fetchImpl = buildFetch(httpService),
	})
	local client = ApolloClient.new({
		cache = InMemoryCache.new({
			typePolicies = typePolicies,
		}),
		link = HttpLink.new({
			uri = "/api",
			fetch = function(_uri, requestOptions)
				return server:fetchLocal(requestOptions)
			end,
		}),
	})

	return client
end

local function appendApolloClientToReducer(reducer: any, client)
	return function(state, action)
		state = reducer(state or {}, action)
		local newState: any = Object.assign(table.clone(state), {
			ApolloClient = {
				apolloClient = client,
			},
		})
		return newState
	end
end

return {
	mockApolloClient = mockApolloClient,
	mockHttpService = mockHttpService,
	appendApolloClientToReducer = appendApolloClientToReducer,
}
