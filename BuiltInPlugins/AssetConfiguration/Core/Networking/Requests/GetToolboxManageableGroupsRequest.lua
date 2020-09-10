local Plugin = script.Parent.Parent.Parent.Parent

local UpdatePageInfoAndSendRequest = require(Plugin.Core.Networking.Requests.UpdatePageInfoAndSendRequest)
local SetToolboxManageableGroups = require(Plugin.Core.Actions.SetToolboxManageableGroups)
local NetworkError = require(Plugin.Core.Actions.NetworkError)
local FFlagUseCategoryNameInToolbox = game:GetFastFlag("UseCategoryNameInToolbox")

return function(networkInterface, settings, newPageInfo)
	return function(store)
		return networkInterface:getManageableGroups():andThen(function(result)
			local groups = result.responseBody.data
			store:dispatch(SetToolboxManageableGroups(groups))
			if FFlagUseCategoryNameInToolbox and newPageInfo then
				-- If we are initially loading groups then load the assets again as we previously
				-- wouldn't have been able to resolve the groupId for groupIndex.
				store:dispatch(UpdatePageInfoAndSendRequest(networkInterface, settings, newPageInfo))
			end
		end, function(err)
			store:dispatch(NetworkError(err))
		end)
	end
end
