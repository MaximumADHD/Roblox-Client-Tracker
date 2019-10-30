local Plugin = script.Parent.Parent.Parent.Parent

local SetAssetConfigManageableGroups = require(Plugin.Core.Actions.SetAssetConfigManageableGroups)
local NetworkError = require(Plugin.Core.Actions.NetworkError)

return function(networkInterface, DEPRECATED_userId)
	return function(store)
		if game:GetFastFlag("FixAssetConfigManageableGroups") then
			return networkInterface:getManageableGroups():andThen(function(result)
				local groups = result.responseBody.data
				store:dispatch(SetAssetConfigManageableGroups(groups))
			end, function(result)
				store:dispatch(NetworkError(result))
			end)
		else
			return networkInterface:getMyGroups(DEPRECATED_userId):andThen(function(result)
				local response = result.responseBody

				store:dispatch(SetAssetConfigManageableGroups(response.data))
			end, function(result)
				store:dispatch(NetworkError(result))
			end)
		end
	end
end
