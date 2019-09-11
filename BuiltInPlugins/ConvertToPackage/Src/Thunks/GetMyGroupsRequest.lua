local Plugin = script.Parent.Parent.Parent

local SetMyGroups = require(Plugin.Src.Actions.SetMyGroups)
local NetworkError = require(Plugin.Src.Actions.NetworkError)

return function(networkInterface)
	return function(store)
		return networkInterface:getMyGroups():andThen(function(result)
			local response = result.responseBody
			store:dispatch(SetMyGroups(response.data))
		end, function(result)
			store:dispatch(NetworkError(result))
		end)
	end
end