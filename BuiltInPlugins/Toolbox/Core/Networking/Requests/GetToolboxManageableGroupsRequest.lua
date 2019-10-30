local Plugin = script.Parent.Parent.Parent.Parent

local SetToolboxManageableGroups = require(Plugin.Core.Actions.SetToolboxManageableGroups)
local NetworkError = require(Plugin.Core.Actions.NetworkError)

local EnableDeveloperGetManageGroupUrl = game:GetFastFlag("EnableDeveloperGetManageGroupUrl")

return function(networkInterface)
	return function(store)
		return networkInterface:getManageableGroups():andThen(function(result)
			local groups
			if EnableDeveloperGetManageGroupUrl then
				groups = result.responseBody.data
			else
				groups = result.responseBody
			end
			store:dispatch(SetToolboxManageableGroups(groups))
		end, function(err)
			store:dispatch(NetworkError(err))
		end)
	end
end
