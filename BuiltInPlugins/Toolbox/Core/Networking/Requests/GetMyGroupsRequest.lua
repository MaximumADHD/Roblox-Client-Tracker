local Plugin = script.Parent.Parent.Parent.Parent

local SetMyGroups = require(Plugin.Core.Actions.SetMyGroups)
local NetworkError = require(Plugin.Core.Actions.NetworkError)

return function(networkInterface, userId)
	return function(store)
		return networkInterface:getMyGroups(userId):andThen(function(result)
			local response = result.responseBody

			store:dispatch(SetMyGroups(response.data))
		end, function(result)
			store:dispatch(NetworkError(result))
		end)
	end
end