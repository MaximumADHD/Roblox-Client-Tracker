local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules

local marketplaceService = game:GetService('MarketplaceService')

local assetTypeNames = require(Modules.LuaApp.Legacy.AvatarEditor.AssetTypeNames)

local this = {}
local cachedAssetInfo = {}
function this.getAssetInfo(assetId)
	if assetId then
		local assetInfo = cachedAssetInfo['id'..assetId]
		if assetInfo then
			return assetInfo
		end

		local success, assetData = pcall(function()
			return marketplaceService:GetProductInfo(assetId)
		end)
		if success and assetData then
			assetInfo = assetData
			cachedAssetInfo['id'..assetId] = assetInfo
			return assetInfo
		end
	end
end

function this.setCachedAssetInfo(assetId, info)
	cachedAssetInfo['id'..assetId] = info
end

function this.getAssetType(assetId)
	local assetInfo = this.getAssetInfo(assetId)

	if assetInfo == nil then
		return 'UNKNOWN_ASSET_TYPE'
	end

	return assetTypeNames[assetInfo.AssetTypeId] or 'UNKNOWN_ASSET_TYPE'
end

return this

