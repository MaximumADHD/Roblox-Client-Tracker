--[[
	This request will try to use develop endpoint and item config end point to fetch data for the plugin and conbine them together.
]]
local FFlagToolboxPrivatePublicAudioAssetConfig = game:GetFastFlag("ToolboxPrivatePublicAudioAssetConfig")

local Plugin = script.Parent.Parent.Parent.Parent

local DebugFlags = require(Plugin.Core.Util.DebugFlags)

local Actions = Plugin.Core.Actions
local UpdateAssetConfigData = require(Actions.UpdateAssetConfigData)

local NetworkError = require(Actions.NetworkError)
local ConfigTypes = require(Plugin.Core.Types.ConfigTypes)


local Packages = Plugin.Packages
local Promise = require(Packages.Framework).Util.Promise

local firstToUpper = require(Plugin.Core.Util.firstToUpper)

local HttpService = game:GetService("HttpService")

return function(networkInterface, assetId)
	return function(store)
		local assetConfigData = {}

		local function onAssetConfigDataGet(result)
			local responseJson = result.responseBody
			local response = HttpService:JSONDecode(responseJson)

			-- In our case, we will always use the first asset to show
			-- the asset config information.
			for key, value in pairs(response.data[1]) do
				assetConfigData[firstToUpper(key)] = value
			end
		end

		local function onAssetConfigDataFailed(err)
			if DebugFlags.shouldDebugWarnings() then
				warn("failed with onAssetConfigDataGet in GetMarketplaceInfoRequest")
			end

			-- DEVTOOLS-3472
			store:dispatch(NetworkError(err, ConfigTypes.NetworkErrors.GET_ASSET_DETAIL_FAILURE))
		end

		local function onPriceDataGet(result)
			local creationDetailsTable = result.responseBody
			if creationDetailsTable and #creationDetailsTable > 0 and creationDetailsTable[1].assetId == assetId then
				for key, value in pairs(creationDetailsTable[1]) do
					assetConfigData[firstToUpper(key)] = value
				end
			end
		end

		local function onPriceDataFailed(err)
			if DebugFlags.shouldDebugWarnings() then
				warn("failed with onPriceDataFailed in GetMarketplaceInfoRequest")
			end
			-- DEVTOOLS-3472
			store:dispatch(NetworkError(err, ConfigTypes.NetworkErrors.GET_ASSET_DETAIL_FAILURE))
		end

		local function onAssetPermissionsGet(result)
			local data = result.responseBody
			if data then
				assetConfigData["AssetPermissions"] = data.results
			end
		end

		local function onAssetPermissionsFailed(err)
			if DebugFlags.shouldDebugWarnings() then
				warn("failed with onAssetPermissionsFailed in GetMarketplaceInfoRequest")
			end
			-- DEVTOOLS-3472
			store:dispatch(NetworkError(err, ConfigTypes.NetworkErrors.GET_ASSET_DETAIL_FAILURE))
		end

		if FFlagToolboxPrivatePublicAudioAssetConfig then
			Promise.all({
				networkInterface:getAssetConfigData(assetId):andThen(onAssetConfigDataGet, onAssetConfigDataFailed),
				networkInterface:getAssetCreationDetails({ assetId }):andThen(onPriceDataGet, onPriceDataFailed),
				networkInterface:getAssetPermissions(assetId):andThen(onAssetPermissionsGet, onAssetPermissionsFailed),
			}):andThen(function()
				store:dispatch(UpdateAssetConfigData(assetConfigData))
			end)
		else
			Promise.all({
				networkInterface:getAssetConfigData(assetId):andThen(onAssetConfigDataGet, onAssetConfigDataFailed),
				networkInterface:getAssetCreationDetails({ assetId }):andThen(onPriceDataGet, onPriceDataFailed),
			}):andThen(function()
				store:dispatch(UpdateAssetConfigData(assetConfigData))
			end)
		end
	end
end
