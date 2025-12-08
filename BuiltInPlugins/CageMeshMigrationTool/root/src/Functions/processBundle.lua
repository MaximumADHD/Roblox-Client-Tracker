local AssetService = game:GetService("AssetService")
local MarketplaceService = game:GetService("MarketplaceService")

local root = script:FindFirstAncestor("root")

local constants = require(root.src.constants)
local buildCageMeshInfoMap = require(root.src.Functions.buildCageMeshInfoMap)
local downloadAsset = require(root.src.Functions.downloadAsset)
local processAsset = require(root.src.Functions.processAsset)

return function(bundleId, rig)
	local cageMeshInfoMap = buildCageMeshInfoMap(rig)
	local bundleDetails = AssetService:GetBundleDetailsAsync(bundleId)
	for _, item in ipairs(bundleDetails.Items) do
		local productInfo = MarketplaceService:GetProductInfo(item.Id, Enum.InfoType.Asset)
		if constants.WHITELISTED_ASSET_TYPE_IDS[productInfo.AssetTypeId] then
			local folder = downloadAsset(item.Id, productInfo.AssetTypeId)
			processAsset(folder, cageMeshInfoMap)
		end
	end
end
