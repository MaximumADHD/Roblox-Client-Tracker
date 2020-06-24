local Plugin = script.Parent.Parent.Parent.Parent

local Actions = Plugin.Core.Actions
local NetworkError = require(Actions.NetworkError)
local ConfigTypes = require(Plugin.Core.Types.ConfigTypes)
local UpdateAssetConfigData = require(Actions.UpdateAssetConfigData)

local FFlagShowAssetConfigReasons2 = game:GetFastFlag("ShowAssetConfigReasons2")

return function(networkInterface, assetId)
	return function(store)
		return networkInterface:getAssetItemTags(assetId):andThen(
			function(result)
				local responseBody = result.responseBody

				local newAssetConfigData = {}
				if responseBody.data and #responseBody.data > 0 then
					newAssetConfigData.ItemTags = responseBody.data[1].itemTags
				end

				store:dispatch(UpdateAssetConfigData(newAssetConfigData))
			end,
			function(err)
				if FFlagShowAssetConfigReasons2 then
					store:dispatch(NetworkError(err, ConfigTypes.NetworkErrors.GET_ASSET_DETAIL_FAILURE))
				else
					store:dispatch(NetworkError(err, ConfigTypes.GET_ASSET_DETAIL_FAILURE_ACTION ))
				end
			end
		)
	end
end