local root = script.Parent.Parent.Parent

local HttpService = game:GetService("HttpService")

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local APIUtil = require(root.util.APIUtil)

local getFFlagUGCValidateEmissiveMapAllowed = require(root.flags.getFFlagUGCValidateEmissiveMapAllowed)

local EmissiveMapAllowed = {}

EmissiveMapAllowed.categories = {
	ValidationEnums.UploadCategory.TORSO_AND_LIMBS,
	ValidationEnums.UploadCategory.DYNAMIC_HEAD,
	ValidationEnums.UploadCategory.LAYERED_CLOTHING,
	ValidationEnums.UploadCategory.RIGID_ACCESSORY,
	ValidationEnums.UploadCategory.MAKEUP,
}
EmissiveMapAllowed.requiredData = {
	ValidationEnums.SharedDataMember.consumerConfig,
	ValidationEnums.SharedDataMember.uploadEnum,
	ValidationEnums.SharedDataMember.meshTextures,
}
EmissiveMapAllowed.fflag = getFFlagUGCValidateEmissiveMapAllowed
EmissiveMapAllowed.expectedFailures = {}

local function hasEmissiveInMeshTextures(meshTextures: { [string]: Types.EditableImageWithPBRData }): boolean
	for _, textureData in meshTextures do
		if textureData.EmissiveMask then
			return true
		end
	end
	return false
end

local function checkEmissivePermission(uploadEnum: Types.UploadEnum): (boolean, string?)
	if not uploadEnum.assetType then
		return false, "Unable to determine asset type for emissive permission check"
	end

	local url = string.format(
		"https://itemconfiguration.%s/v1/permissions/action-allowed-for-item-type?action=1&assetType=%s",
		APIUtil.getBaseDomain(),
		tostring(uploadEnum.assetType.Value)
	)

	local success, response = APIUtil.requestAndRetryGet(url)
	if not success then
		return false, "Failed to check emissive map permission: " .. tostring(response)
	end

	local decodeSuccess, responseData = pcall(function()
		return HttpService:JSONDecode(response)
	end)
	if not decodeSuccess then
		return false, "Failed to decode emissive map permission response"
	end

	local metadataPermissions = responseData.metadataPermissions
	if not metadataPermissions then
		return false, nil
	end

	return metadataPermissions.EmissiveResult == true, nil
end

EmissiveMapAllowed.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	if not hasEmissiveInMeshTextures(data.meshTextures) then
		return
	end

	local consumerEnv = data.consumerConfig.consumerEnv

	if consumerEnv == ValidationEnums.ConsumerEnv.IEC then
		reporter:fail(ErrorSourceStrings.Keys.EmissiveMap_NotAllowed)
		return
	end

	if consumerEnv == ValidationEnums.ConsumerEnv.Backend then
		local isAllowed = data.consumerConfig.backendConfigs.isEmissiveAllowed
		if not isAllowed then
			reporter:fail(ErrorSourceStrings.Keys.EmissiveMap_NotAllowed)
		end
		return
	end

	local isAllowed, errMsg = checkEmissivePermission(data.uploadEnum)
	if errMsg then
		reporter:forceError(errMsg)
	end
	if not isAllowed then
		reporter:fail(ErrorSourceStrings.Keys.EmissiveMap_NotAllowed)
	end
end

return EmissiveMapAllowed :: Types.ValidationModule
