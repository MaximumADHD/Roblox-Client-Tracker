local Plugin = script.Parent.Parent.Parent.Parent

local SetToolboxManageableGroups = require(Plugin.Core.Actions.SetToolboxManageableGroups)
local NetworkError = require(Plugin.Core.Actions.NetworkError)

return function(networkInterface)
	return function(store)
		return networkInterface:getManageableGroups():andThen(function(result)
			local groups = result.responseBody.data
			store:dispatch(SetToolboxManageableGroups(groups))
		end, function(err)
			store:dispatch(NetworkError(err))
		end)
	end
end
