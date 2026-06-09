local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local ParseContentIds = require(root.util.ParseContentIds)
local pcallDeferred = require(root.util.pcallDeferred)

local getFFlagUGCValidateMigrateSchemaProperties = require(root.flags.getFFlagUGCValidateMigrateSchemaProperties)
local getFFlagUGCValidateHSRMeshIds = require(root.flags.getFFlagUGCValidateHSRMeshIds)

local HSRMeshIdsMatch = {}

HSRMeshIdsMatch.categories = {
	ValidationEnums.UploadCategory.TORSO_AND_LIMBS,
	ValidationEnums.UploadCategory.DYNAMIC_HEAD,
	ValidationEnums.UploadCategory.LAYERED_CLOTHING,
}
HSRMeshIdsMatch.requiredData = {
	ValidationEnums.SharedDataMember.rootInstance,
	ValidationEnums.SharedDataMember.consumerConfig,
	ValidationEnums.SharedDataMember.hsrAssets,
}
HSRMeshIdsMatch.fflag = getFFlagUGCValidateMigrateSchemaProperties
HSRMeshIdsMatch.expectedFailures = {}

local function validateHSRStructure(
	hsrCandidates: { Instance },
	wrapLayer: WrapLayer,
	reporter: Types.ValidationReporter
): Instance?
	if #hsrCandidates ~= 1 then
		reporter:fail(ErrorSourceStrings.Keys.HSRAssetInvalidRoot, {
			InstancePath = wrapLayer:GetFullName(),
		})
		return nil
	end

	local hsrAsset = hsrCandidates[1]
	if not hsrAsset:IsA("HiddenSurfaceRemovalAsset") then
		reporter:fail(ErrorSourceStrings.Keys.HSRAssetInvalidRoot, {
			InstancePath = wrapLayer:GetFullName(),
		})
		return nil
	end

	if #hsrAsset:GetDescendants() > 0 then
		reporter:fail(ErrorSourceStrings.Keys.HSRAssetHasChildren, {
			InstancePath = wrapLayer:GetFullName(),
		})
		return nil
	end

	return hsrAsset
end

HSRMeshIdsMatch.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	-- IEC may create HSR post-publish via editable instances; skip end-to-end.
	if data.consumerConfig.consumerEnv == ValidationEnums.ConsumerEnv.IEC then
		return
	end

	local isServer = data.consumerConfig.consumerEnv == ValidationEnums.ConsumerEnv.Backend
	local meshIdMatchEnabled = getFFlagUGCValidateHSRMeshIds()

	local objects = data.rootInstance:GetDescendants()
	table.insert(objects, data.rootInstance)

	for _, obj in objects do
		if not obj:IsA("WrapLayer") then
			continue
		end
		local wrapLayer = obj :: WrapLayer
		local HSRAssetId = (wrapLayer :: any).HSRAssetId

		if (not HSRAssetId) or HSRAssetId == "" then
			if isServer then
				reporter:fail(ErrorSourceStrings.Keys.HSRAssetIdRequired, {
					InstancePath = wrapLayer:GetFullName(),
				})
			end
			continue
		end

		local parsedId = ParseContentIds.tryGetAssetIdFromContentId(HSRAssetId)
		if not parsedId then
			reporter:fail(ErrorSourceStrings.Keys.HSRAssetIdInvalidUrl, {
				InstancePath = wrapLayer:GetFullName(),
			})
			continue
		end

		local hsrCandidates = data.hsrAssets[parsedId]
		if not hsrCandidates then
			continue
		end

		local hsrAsset = validateHSRStructure(hsrCandidates, wrapLayer, reporter)
		if not hsrAsset then
			continue
		end

		if not meshIdMatchEnabled then
			continue
		end

		local meshIdSuccess, meshIdResult = pcallDeferred(function()
			return (UGCValidationService :: any):ValidateHSRMeshIds(wrapLayer, hsrAsset)
		end, {} :: any)

		if not meshIdSuccess then
			reporter:fail(ErrorSourceStrings.Keys.HSRMeshIdValidationError, {
				InstancePath = wrapLayer:GetFullName(),
			})
		elseif not meshIdResult then
			reporter:fail(ErrorSourceStrings.Keys.HSRMeshIdsMismatch, {
				InstancePath = wrapLayer:GetFullName(),
			})
		end
	end
end

return HSRMeshIdsMatch :: Types.ValidationModule
