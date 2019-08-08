local Plugin = script.Parent.Parent.Parent.Parent

local HttpService = game:GetService("HttpService")

local Actions = Plugin.Core.Actions
local SetAssetConfigData = require(Actions.SetAssetConfigData)
local firstToUpper = require(Plugin.Core.Util.firstToUpper)

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

				store:dispatch(SetAssetConfigData(newAssetConfigData))
			end,
			function(result)
				-- TODO DEVTOOLS-2831
				-- Implement the error function.
			end)
	end
end
