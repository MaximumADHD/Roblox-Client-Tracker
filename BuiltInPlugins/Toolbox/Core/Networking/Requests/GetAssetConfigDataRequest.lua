local Plugin = script.Parent.Parent.Parent.Parent

local HttpService = game:GetService("HttpService")

local Actions = Plugin.Core.Actions
local SetAssetConfigData = require(Actions.SetAssetConfigData)
local firstToUpper = require(Plugin.Core.Util.firstToUpper)
local NetworkError = require(Actions.NetworkError)
local ConfigTypes = require(Plugin.Core.Types.ConfigTypes)
local UpdateAssetConfigData = require(Actions.UpdateAssetConfigData)

local FFlagEnablePurchasePluginFromLua2 = settings():GetFFlag("EnablePurchasePluginFromLua2")
local FFlagShowAssetConfigReasons2 = game:GetFastFlag("ShowAssetConfigReasons2")
local FFlagAssetConfigUseItemConfig = game:GetFastFlag("AssetConfigUseItemConfig")

if FFlagAssetConfigUseItemConfig then
	return nil
end

return function(networkInterface, assetId)
	return function(store)
		return networkInterface:getAssetConfigData(assetId):andThen(
			function(result)
				local responseJson = result.responseBody
				-- This will require we have HttpService
				local response = HttpService:JSONDecode(responseJson)

				-- In our case, we will always use the first asset to show
				-- the asset config information.
				local newAssetConfigData = {}
				for key, value in pairs(response.data[1]) do
					newAssetConfigData[firstToUpper(key)] = value
				end

				if FFlagEnablePurchasePluginFromLua2 then
					store:dispatch(UpdateAssetConfigData(newAssetConfigData))
				else
					store:dispatch(SetAssetConfigData(newAssetConfigData))
				end
			end,
			function(err)
				if FFlagShowAssetConfigReasons2 then
					store:dispatch(NetworkError(err, ConfigTypes.NetworkErrors.GET_ASSET_DETAIL_FAILURE))
				else
					store:dispatch(NetworkError(err, ConfigTypes.GET_ASSET_DETAIL_FAILURE_ACTION ))
				end
			end)
	end
end