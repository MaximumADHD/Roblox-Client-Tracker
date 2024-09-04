local root = script.Parent
local makeActionCreator = require(root.makeActionCreator)
local RequestBuilder = require(root.RequestBuilder)
local NetworkStatus = require(root.NetworkStatus)
local Promise = require(root.Promise)
local Types = require(root.Types)

type RequestBuilder = RequestBuilder.RequestBuilder
type BuilderFunc <T> =((string, unknown) -> (RequestBuilder), T, ... any) -> (RequestBuilder)
type RoduxStore = {dispatch: (any, any) -> (), getState: (any) -> (any)}

return function(options: Types.ConfigOptions, methodType)
	local keyPath = options.keyPath
	local killRequestWithFilteredIds = options.killRequestWithFilteredIds

	local myNetworkStatus = NetworkStatus({
		keyPath = keyPath,
		killRequestWithFilteredIds = killRequestWithFilteredIds,
	})

	return function<T>(moduleScript: ModuleScript | string, constructBuilderFunction: BuilderFunc<T>)
		local actionCreators = makeActionCreator(moduleScript)
		local mockNetworkImpl: any = nil

		local mockResolver = function(mockResponse: any, options: {
			defaultResolveMethod : "resolve"|"reject",
			argumentName : "mockResponse" | "mockError",
			defaultType : "table" | "string",
			mockNetworkImpl : (any) -> (any) | nil,
		})
			if options.mockNetworkImpl then
				error("Request already mocked - you may need to call `Mock.clear` between tests/uses")
			end

			if type(mockResponse) ~= "function" and type(mockResponse) ~= options.defaultType then
				error(options.argumentName .. " must be a " .. options.defaultType .. " or function")
			end

			mockNetworkImpl = function(...)
				local response = type(mockResponse) == "function" and mockResponse(...) or mockResponse

				return Promise[options.defaultResolveMethod](response)
			end
		end

		local API = function(T: T, ...)
			local userRequestBuilder = constructBuilderFunction(function(baseUrl: string, additionalData: any?)
				return RequestBuilder.new(baseUrl, additionalData)
			end, T :: any, ...)

			return function(store: RoduxStore)
				return myNetworkStatus.setStatus(store, userRequestBuilder:getIds(), userRequestBuilder:makeKeyMapper(), function(store, filteredIds)
					local networkImpl = mockNetworkImpl or options.networkImpl
					local requestOptions = userRequestBuilder:makeOptions()
					local namedIds = userRequestBuilder:getNamedIds()

					return networkImpl(userRequestBuilder:makeUrl(filteredIds), methodType, requestOptions):andThen(
						function(payload)
							store:dispatch(actionCreators.Succeeded(filteredIds, payload.responseBody, namedIds, requestOptions, userRequestBuilder:getAdditionalData()))
							return payload
						end,
						function(errorString)
							store:dispatch(actionCreators.Failed(filteredIds, errorString, namedIds, requestOptions, userRequestBuilder:getAdditionalData()))
							-- Throw again so we can catch it outside of library
							return Promise.reject(errorString)
						end
					)
				end)
			end
		end

		local getStatus = function(state, key:any)
			local userRequestBuilder = constructBuilderFunction(function(baseUrl: string, additionalData: any?)
				return RequestBuilder.new(baseUrl, additionalData)
			end, key)

			local keymapper = userRequestBuilder:makeKeyMapper()
			local mappedKey = keymapper(key)

			return myNetworkStatus.getStatus(state, mappedKey)
		end

		local Mock = {
			reply = function(mockResponse)
				return mockResolver(mockResponse, {
					defaultResolveMethod = "resolve",
					argumentName = "mockResponse",
					defaultType = "table",
					mockNetworkImpl = mockNetworkImpl,
				})
			end,

			replyWithError = function(mockError)
				return mockResolver(mockError, {
					defaultResolveMethod = "reject",
					argumentName = "mockError",
					defaultType = "string",
					mockNetworkImpl = mockNetworkImpl,
				})
			end,

			clear = function()
				mockNetworkImpl = nil
			end,
		}

		return {
			Mock = Mock,
			getStatus = getStatus,
			API = API,
			Succeeded = actionCreators.Succeeded,
			Failed = actionCreators.Failed,
		}
	end
end
