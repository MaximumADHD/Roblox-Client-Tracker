--!nocheck
-- remove !nocheck with FFlagUGCValidateLayeredClothing

game:DefineFastFlag("UGCValidateHandleSize", false)
game:DefineFastFlag("UGCExtraBannedNames", false)
game:DefineFastFlag("UGCValidateMeshVertColors", false)
game:DefineFastString("UGCLCAllowedAssetTypeIds", "")
game:DefineFastFlag("UGCValidateHSR", false)
game:DefineFastFlag("UGCFixModerationCheck", false)

local root = script

local validateMeshPartAccessory = require(root.validation.validateMeshPartAccessory)

local isLayeredClothing = require(root.util.isLayeredClothing)
local validateLayeredClothingAccessory = require(root.validation.validateLayeredClothingAccessory)
local validateLegacyAccessory = require(root.validation.validateLegacyAccessory)

local function validateInternal(isAsync, instances, assetTypeEnum, isServer): (boolean, {string}?)
	if isLayeredClothing(instances[1]) then
		return validateLayeredClothingAccessory(instances, assetTypeEnum, isServer)
	else
		return validateLegacyAccessory(instances, assetTypeEnum, isServer)
	end
end

local UGCValidation = {}

function UGCValidation.validate(instances, assetTypeEnum, isServer)
	local success, reasons = validateInternal(--[[ isAsync = ]] false, instances, assetTypeEnum, isServer)
	return success, reasons
end

function UGCValidation.validateAsync(instances, assetTypeEnum, callback, isServer)
	coroutine.wrap(function()
		callback(validateInternal(--[[ isAsync = ]] true, instances, assetTypeEnum, isServer))
	end)()
end

-- assumes specialMeshAccessory has already passed through UGCValidation.validate()
function UGCValidation.validateMeshPartAssetFormat(specialMeshAccessory, meshPartAccessory, assetTypeEnum, isServer)
	-- layered clothing assets should be the same binary for source and avatar_meshpart_accesory
	if specialMeshAccessory and isLayeredClothing(specialMeshAccessory) then
		return UGCValidation.validate({ specialMeshAccessory }, assetTypeEnum, isServer)
	end

	local success, reasons

	success, reasons = validateMeshPartAccessory(specialMeshAccessory, meshPartAccessory)
	if not success then
		return false, reasons
	end

	return true
end

return UGCValidation
