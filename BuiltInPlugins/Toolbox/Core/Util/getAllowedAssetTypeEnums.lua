local Plugin = script.Parent.Parent.Parent

local AssetConfigConstants = require(Plugin.Core.Util.AssetConfigConstants)

local function getAllowedAssetTypeEnums(allowedAssetTypesForRelease)
	local result = {}
	if allowedAssetTypesForRelease then
		for _, info in ipairs(AssetConfigConstants.ASSET_TYPE_INFO) do
			if info.isCatalog and info.isUploadable then
				if allowedAssetTypesForRelease[info.type.Name] ~= nil then
					result[#result + 1] = info.type
				end
			end
		end
	end
	return result
end

return getAllowedAssetTypeEnums
