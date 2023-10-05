local root = script.Parent.Parent

local validateLayeredClothingAccessory = require(root.validation.validateLayeredClothingAccessory)
local validateLayeredClothingAccessoryMeshPartAssetFormatMatch =
	require(root.validation.validateLayeredClothingAccessoryMeshPartAssetFormatMatch)

local function validateLayeredClothingAccessoryMeshPartAssetFormat(
	instances: { Instance },
	specialMeshAssetFormatAccessory: Instance,
	assetTypeEnum: Enum.AssetType,
	isServer: boolean?,
	allowUnreviewedAssets: boolean?
): (boolean, { string }?)
	local success: boolean, reasons: { string }?

	success, reasons = validateLayeredClothingAccessory(instances, assetTypeEnum, isServer, allowUnreviewedAssets)
	if not success then
		return false, reasons
	end

	local meshPartAssetFormatAccessory = instances[1]

	success, reasons = validateLayeredClothingAccessoryMeshPartAssetFormatMatch(
		meshPartAssetFormatAccessory,
		specialMeshAssetFormatAccessory
	)
	if not success then
		return false, reasons
	end

	return true
end

return validateLayeredClothingAccessoryMeshPartAssetFormat
