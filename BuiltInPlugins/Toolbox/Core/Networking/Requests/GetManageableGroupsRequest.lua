local Plugin = script.Parent.Parent.Parent.Parent

local GetManageableGroups = require(Plugin.Core.Actions.GetManageableGroups)
local NetworkError = require(Plugin.Core.Actions.NetworkError)

return function(networkInterface)
	return function(store)
		return networkInterface:getManageableGroups():andThen(function(result)
			local groups = result.responseBody
			store:dispatch(GetManageableGroups(groups))
		end, function(result)
			store:dispatch(NetworkError(result))
		end)
	end
end
