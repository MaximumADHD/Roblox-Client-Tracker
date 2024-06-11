local root = script.Parent.Parent

local Types = require(root.util.Types)

local validateLayeredClothingAccessory = require(root.validation.validateLayeredClothingAccessory)
local validateLayeredClothingAccessoryMeshPartAssetFormatMatch =
	require(root.validation.validateLayeredClothingAccessoryMeshPartAssetFormatMatch)

local function validateLayeredClothingAccessoryMeshPartAssetFormat(
	specialMeshAssetFormatAccessory: Instance,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local instances = validationContext.instances

	local success: boolean, reasons: { string }?

	success, reasons = validateLayeredClothingAccessory(validationContext)
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
