local root = script.Parent
local makeActionCreator = require(root.makeActionCreator)
local RequestBuilder = require(root.RequestBuilder)
local NetworkStatus = require(root.NetworkStatus)

return function(options, methodType)
	local keyPath = options.keyPath

	local myNetworkStatus = NetworkStatus({
		keyPath = keyPath,
	})

	return function(moduleScript, constructBuilderFunction)
		local self = makeActionCreator(moduleScript)
		self.API = function(...)
			local userRequestBuilder = constructBuilderFunction(function(...)
				return RequestBuilder:new(...)
			end, ...)

			return function(store)
				return myNetworkStatus.setStatus(store, userRequestBuilder:getIds(), userRequestBuilder:makeKeyMapper(), function(store, filteredIds)
					local networkImpl = options.networkImpl
					return networkImpl(userRequestBuilder:makeUrl(filteredIds), methodType, userRequestBuilder:makeOptions()):andThen(
						function(payload)
							store:dispatch(self.Succeeded(filteredIds, payload.responseBody, userRequestBuilder:getNamedIds()))
							return payload
						end,
						function(errorString)
							store:dispatch(self.Failed(filteredIds, error, userRequestBuilder:getNamedIds()))
							-- Throw again so we can catch it outside of library
							error(errorString)
						end
					)
				end)
			end
		end

		self.getStatus = (methodType == "GET") and function(state, key)
			local userRequestBuilder = constructBuilderFunction(function(...)
				return RequestBuilder:new(...)
			end, key)

			local keymapper = userRequestBuilder:makeKeyMapper()
			local mappedKey = keymapper(key)

			return myNetworkStatus.getStatus(state, mappedKey)
		end

		return self
	end
end
