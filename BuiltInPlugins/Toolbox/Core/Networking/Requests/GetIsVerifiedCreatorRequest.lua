local Plugin = script.Parent.Parent.Parent.Parent

local SetIsVerifiedCreator = require(Plugin.Core.Actions.SetIsVerifiedCreator)
local NetworkError = require(Plugin.Core.Actions.NetworkError)

return function(networkInterface)
	return function(store)
		return networkInterface:getIsVerifiedCreator():andThen(function(result)
			local response = result.responseBody
			store:dispatch(SetIsVerifiedCreator(response.isVerifiedCreator))
		end, function(result)
			store:dispatch(NetworkError(result))
		end)
	end
end
