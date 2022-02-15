local Plugin = script.Parent.Parent.Parent.Parent

local Actions = Plugin.Core.Actions
local NetworkError = require(Actions.NetworkError)
local ConfigTypes = require(Plugin.Core.Types.ConfigTypes)
local UpdateAssetConfigData = require(Actions.UpdateAssetConfigData)

return function(networkInterface, assetId)
	return function(store)
		return networkInterface:getAssetItemTags(assetId):andThen(function(result)
			local responseBody = result.responseBody

			local newAssetConfigData = {}
			if responseBody.data and #responseBody.data > 0 then
				newAssetConfigData.ItemTags = responseBody.data[1].itemTags
			end

			store:dispatch(UpdateAssetConfigData(newAssetConfigData))
		end, function(err)
			store:dispatch(NetworkError(err, ConfigTypes.GET_ASSET_DETAIL_FAILURE_ACTION))
		end)
	end
end
