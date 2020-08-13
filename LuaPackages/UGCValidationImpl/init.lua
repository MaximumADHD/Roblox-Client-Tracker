game:DefineFastFlag("UGCValidateMeshBounds", false)
game:DefineFastFlag("UGCValidateHandleSize", false)
game:DefineFastFlag("UGCExtraBannedNames", false)

local root = script

local validateInstanceTree = require(root.validation.validateInstanceTree)
local validateMeshTriangles = require(root.validation.validateMeshTriangles)
local validateModeration = require(root.validation.validateModeration)
local validateMaterials = require(root.validation.validateMaterials)
local validateTags = require(root.validation.validateTags)
local validateMeshBounds = require(root.validation.validateMeshBounds)
local validateTextureSize = require(root.validation.validateTextureSize)
local validateHandleSize = require(root.validation.validateHandleSize)
local validateProperties = require(root.validation.validateProperties)

local function validateInternal(isAsync, instances, assetTypeEnum, noModeration)
	-- validate that only one instance was selected
	if #instances == 0 then
		return false, { "No instances selected" }
	elseif #instances > 1 then
		return false, { "More than one instance selected" }
	end

	local instance = instances[1]

	local success, reasons

	success, reasons = validateInstanceTree(instance, assetTypeEnum)
	if not success then
		return false, reasons
	end

	success, reasons = validateMaterials(instance)
	if not success then
		return false, reasons
	end

	success, reasons = validateProperties(instance)
	if not success then
		return false, reasons
	end

	success, reasons = validateTags(instance)
	if not success then
		return false, reasons
	end

	if game:GetFastFlag("UGCValidateMeshBounds") then
		success, reasons = validateMeshBounds(isAsync, instance, assetTypeEnum)
		if not success then
			return false, reasons
		end
	end

	success, reasons = validateTextureSize(isAsync, instance)
	if not success then
		return false, reasons
	end

	if game:GetFastFlag("UGCValidateHandleSize") then
		success, reasons = validateHandleSize(isAsync, instance)
		if not success then
			return false, reasons
		end
	end

	success, reasons = validateMeshTriangles(isAsync, instance)
	if not success then
		return false, reasons
	end

	if not noModeration then
		success, reasons = validateModeration(isAsync, instance)
		if not success then
			return false, reasons
		end
	end

	return true
end

local UGCValidation = {}

function UGCValidation.validate(instances, assetTypeEnum, noModeration)
	local success, reasons = validateInternal(--[[ isAsync = ]] false, instances, assetTypeEnum, noModeration)
	return success, reasons
end

function UGCValidation.validateAsync(instances, assetTypeEnum, callback, noModeration)
	coroutine.wrap(function()
		callback(validateInternal(--[[ isAsync = ]] true, instances, assetTypeEnum, noModeration))
	end)()
end

return UGCValidation
