local HttpService = game:GetService("HttpService")
local Packages = script:FindFirstAncestor("GraphQLServer").Parent

return function()
	local ApolloClientTestUtils = require(script.Parent)
	local mockHttpService = ApolloClientTestUtils.mockHttpService
	local mockApolloClient = ApolloClientTestUtils.mockApolloClient
	local appendApolloClientToReducer = ApolloClientTestUtils.appendApolloClientToReducer
	type MockOptions = ApolloClientTestUtils.MockOptions
	type Response = ApolloClientTestUtils.Response

	local ApolloClientModule = require(Packages.ApolloClient)
	local gql = ApolloClientModule.gql
	local LuauPolyfill = require(Packages.LuauPolyfill)
	local Object = LuauPolyfill.Object

	local Rodux = require(Packages.Dev.Rodux)
	local JestGlobals = require(Packages.Dev.JestGlobals)
	local jestExpect = JestGlobals.expect
	local jest = JestGlobals.jest

	it("should mock HttpService requestInternal", function()
		local spy = jest.fn()
		local mockOptions = {
			responseMap = {
				["discovery/omni-recommendations"] = {
					Body = {
						contentMetadata = {
							Game = {
								name = "test",
							},
						},
					},
					Success = false,
					StatusCode = 400,
				} :: Response,
			},
			defaultResponse = {
				Body = {
					responseBody = "defaultResponse",
				},
			} :: Response,
			responseSpy = spy,
		} :: MockOptions

		local httpService: HttpService = mockHttpService(mockOptions)

		local request = httpService:RequestInternal({
			Url = "discovery/omni-recommendations",
		}) :: HttpRequest

		local response
		request:Start(function(_success, res)
			response = res
		end)

		jestExpect(response).toEqual({
			Body = HttpService:JSONEncode({
				contentMetadata = {
					Game = {
						name = "test",
					},
				},
			}),
			Success = false,
			StatusCode = 400,
			Headers = {},
			StatusMessage = "OK",
		})

		local defaultRequest = httpService:RequestInternal({
			Url = "any",
		}) :: HttpRequest

		local defaultResponse
		defaultRequest:Start(function(_success, res)
			defaultResponse = res
		end)

		jestExpect(defaultResponse).toEqual({
			Body = HttpService:JSONEncode({
				responseBody = "defaultResponse",
			}),
			Success = true,
			StatusCode = 200,
			Headers = {},
			StatusMessage = "OK",
		})

		jestExpect(spy).toHaveBeenCalledTimes(2)
	end)

	it("should mock an apollo client", function()
		local client = mockApolloClient({
			defaultResponse = {
				Body = {
					pageType = "Home",
					requestId = "12345",
				},
			} :: Response,
		} :: MockOptions)

		local GET_FEED = gql([[
			query Feed($sessionId: String!, $pageType: String!, $nextPageToken: String) {
				omniFeed(sessionId: $sessionId, pageType: $pageType, nextPageToken: $nextPageToken) {
					omniSessionId
					pageType
					recommendationsId
				}
			}
		]])

		local result = client
			:query({
				query = GET_FEED,
				variables = {
					pageType = "Home",
					sessionId = "1",
					nextPageToken = "",
				},
			})
			:expect()

		jestExpect(result.data).toEqual({
			omniFeed = {
				__typename = "OmniFeed",
				pageType = "Home",
				recommendationsId = "12345",
				omniSessionId = "1",
			},
		})
	end)

	it("should append an apollo client to a reducer", function()
		local reducer = function(state, action)
			local newState = Object.assign({
				Data = action.data,
			}, state)
			return newState
		end

		jestExpect(reducer({}, { data = 3 })).toEqual({ Data = 3 })

		local newReducer = appendApolloClientToReducer(reducer, "client")

		jestExpect(newReducer({}, { data = 3 })).toEqual({
			Data = 3,
			ApolloClient = {
				apolloClient = "client",
			},
		})
	end)

	it("should pass a mock apollo client via Rodux store", function()
		local reducer = function(state, action)
			state = state or {}
			local newState = Object.assign({
				Data = action.data,
			}, state)
			return newState
		end
		local store = Rodux.Store.new(appendApolloClientToReducer(reducer, "client"))

		jestExpect(store:getState()).toEqual({
			ApolloClient = {
				apolloClient = "client",
			},
		})
	end)
end
