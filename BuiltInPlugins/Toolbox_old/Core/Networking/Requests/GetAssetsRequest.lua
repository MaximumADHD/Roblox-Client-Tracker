local Plugin = script.Parent.Parent.Parent.Parent

local GetAssets = require(Plugin.Core.Actions.GetAssets)
local NetworkError = require(Plugin.Core.Actions.NetworkError)
local SetLoading = require(Plugin.Core.Actions.SetLoading)

local EnableToolboxGetAssetsFailedCaseFix = settings():GetFFlag("EnableToolboxGetAssetsFailedCaseFix")

return function(networkInterface, pageInfo)
	return function(store)
		if store:getState().assets.isLoading or store:getState().assets.hasReachedBottom then
			return
		end

		store:dispatch(SetLoading(true))

		if EnableToolboxGetAssetsFailedCaseFix then
			return networkInterface:getAssets(pageInfo):andThen(function(result)
					local data = result.responseBody
					if data then
						store:dispatch(GetAssets(data.Results or {}, data.TotalResults))
					end
					store:dispatch(SetLoading(false))
				end, function(result)
					store:dispatch(NetworkError(result))
					store:dispatch(SetLoading(false))
				end)
		else
			return networkInterface:getAssets(pageInfo):andThen(function(result)
					local data = result.responseBody
					if data then
						store:dispatch(GetAssets(data.Results, data.TotalResults))
					else
						store:dispatch(NetworkError(result))
					end
					store:dispatch(SetLoading(false))
				end)
		end
	end
end
