local root = script.Parent
local makeActionCreator = require(root.makeActionCreator)
local RequestBuilder = require(root.RequestBuilder)
local NetworkStatus = require(root.NetworkStatus)

return function(options)
	local methodType = options.methodType
	local keyPath = options.keyPath
	local networkImpl = options.networkImpl

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
					return networkImpl(userRequestBuilder:makeUrl(filteredIds), methodType, userRequestBuilder:makeOptions()):andThen(
						function(payload)
							store:dispatch(self.Succeeded(filteredIds, payload.responseBody, userRequestBuilder:getNamedIds()))
							return payload
						end,
						function(error)
							store:dispatch(self.Failed(filteredIds, error, userRequestBuilder:getNamedIds()))
							return error
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
