local CorePackages = game:GetService("CorePackages")
local MarketplaceService = game:GetService("MarketplaceService")

local Promise = require(CorePackages.Promise)

local FFlagMakeGetAssetsDifferenceFaster = require(script.Parent.Flags.FFlagMakeGetAssetsDifferenceFaster)

local function GetAssetInfo(assetId)
	return Promise.new(function(resolve, reject)
		local success, result = pcall(function()
			return MarketplaceService:GetProductInfo(assetId, Enum.InfoType.Asset)
		end)

		if success then
			resolve({
				name = result.Name,
				id = assetId,
			})
		else
			reject()
		end
	end)
end

return function(assetIdList)
	local promises = {}
	for _, assetId in ipairs(assetIdList) do
		table.insert(promises, GetAssetInfo(assetId))
	end

	if FFlagMakeGetAssetsDifferenceFaster then
		return Promise.all(promises):andThen(function(results)
			local nameList = {}
			for _, data in ipairs(results) do
				table.insert(nameList, data.name)
			end
			return nameList
		end)
	else
		return Promise.all(promises):andThen(function(results)
			local idNameMap = {}
			for _, data in ipairs(results) do
				idNameMap[data.id] = data.name
			end
			return idNameMap
		end)
	end
end