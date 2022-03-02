--[[
	do a web request for info about the prebuilt assets were using, then send that info to the rodox store

	Params:
		table robloxApi: the ContextServices.API
		table assetIds: a table of assetIds
]]
local AssetService = game:GetService("AssetService")

local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)

local SetPrebuiltAssetsInfo = require(Plugin.Src.Actions.SetPrebuiltAssetsInfo)

local isProductionEnvironment = require(Plugin.Src.Util.isProductionEnvironment)

local function convertArrayToIdIndexedTable(table)
	local result = {}
	for _, subTable in pairs(table) do
		result[subTable.id] = subTable
	end
	return result
end

local function getBundleInfo(assetService, bundleIds)
	local bundleInfo = {}
	for _, bundleId in ipairs(bundleIds) do
		bundleInfo[bundleId] = assetService:GetBundleDetailsAsync(bundleId)
	end
	return bundleInfo
end

return function(robloxApi, assetService, assetIds, bundleIds)
	return function(store)
		if not isProductionEnvironment() then
			return
		end

		local responseFunc = function(response)
			local responseBody = response.responseBody
			local assetsInfo = convertArrayToIdIndexedTable(responseBody.data)
			local bundleInfo = getBundleInfo(assetService, bundleIds)
			local combinedInfo = Cryo.Dictionary.join(assetsInfo, bundleInfo)
			store:dispatch(SetPrebuiltAssetsInfo(combinedInfo))
		end

		local errFunc = function(err)
			local errorsTable = err and err.responseBody and err.responseBody.errors
			if not errorsTable then
				warn("Could not fetch information for assets")
				return
			end

			for _,errorSubTable in ipairs(errorsTable) do
				warn("Could not fetch information for assets: " .. tostring(errorSubTable.message))
			end
		end

		local fetchPromise = robloxApi.api.Develop.V1.Assets.assets(assetIds):makeRequest()
		fetchPromise:andThen(responseFunc, errFunc)
	end
end