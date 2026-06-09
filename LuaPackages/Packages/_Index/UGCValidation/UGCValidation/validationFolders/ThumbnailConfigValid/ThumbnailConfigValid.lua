local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getFFlagUGCValidateMigrateSchemaProperties = require(root.flags.getFFlagUGCValidateMigrateSchemaProperties)
local getFFlagUGCValidateEyebrowEyelashThumbnailSchema =
	require(root.flags.getFFlagUGCValidateEyebrowEyelashThumbnailSchema)

local FFlagUGCValidationAddThumbnailFrustumCheckingv2 =
	game:DefineFastFlag("UGCValidationAddThumbnailFrustumCheckingv2", false)

local ThumbnailConfigValid = {}

ThumbnailConfigValid.categories = {
	ValidationEnums.UploadCategory.LAYERED_CLOTHING,
	ValidationEnums.UploadCategory.RIGID_ACCESSORY,
}
ThumbnailConfigValid.requiredData = {
	ValidationEnums.SharedDataMember.rootInstance,
	ValidationEnums.SharedDataMember.renderMeshesData,
	ValidationEnums.SharedDataMember.uploadEnum,
}
ThumbnailConfigValid.fflag = getFFlagUGCValidateMigrateSchemaProperties
ThumbnailConfigValid.expectedFailures = {}

ThumbnailConfigValid.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local instance = data.rootInstance :: Instance

	-- Mirror legacy validateLayeredClothingAccessory.lua:295: eyebrow/eyelash
	-- accessories use a different thumbnail schema and skipped this check.
	if getFFlagUGCValidateEyebrowEyelashThumbnailSchema() then
		local assetTypeEnum = data.uploadEnum and data.uploadEnum.assetType
		if assetTypeEnum == Enum.AssetType.EyebrowAccessory or assetTypeEnum == Enum.AssetType.EyelashAccessory then
			return
		end
	end

	local thumbnailConfiguration = instance:FindFirstChild("ThumbnailConfiguration")
	if not thumbnailConfiguration then
		return
	end

	local handle = instance:FindFirstChild("Handle")
	if not handle or not handle:IsA("BasePart") then
		return
	end

	local thumbnailCameraTarget = thumbnailConfiguration:FindFirstChild("ThumbnailCameraTarget") :: ObjectValue
	if not thumbnailCameraTarget then
		return
	end

	if thumbnailCameraTarget.Value ~= handle then
		reporter:fail(ErrorSourceStrings.Keys.ThumbnailInvalidTarget, {
			ExpectedTarget = handle:GetFullName(),
		})
		-- Skip the frustum check on a wrong target; would emit a duplicate failure on the same root cause.
		return
	end

	if
		game:GetEngineFeature("EngineUGCValidateThumbnailerMeshInFrustum")
		and FFlagUGCValidationAddThumbnailFrustumCheckingv2
	then
		local renderMeshesData = data.renderMeshesData
		if not renderMeshesData then
			return
		end

		local handleMeshData = renderMeshesData[handle.Name]
		if not handleMeshData then
			return
		end

		local target = thumbnailCameraTarget.Value :: BasePart
		local handleCF = target.CFrame
		local thumbnailCameraValue = thumbnailConfiguration:FindFirstChild("ThumbnailCameraValue") :: CFrameValue
		if not thumbnailCameraValue then
			return
		end

		local cameraCF = handleCF * thumbnailCameraValue.Value
		local meshScale = handleMeshData.scale

		if
			(UGCValidationService :: any):CheckEditableMeshInCameraFrustum(
				handleMeshData.editable,
				meshScale,
				handleCF,
				cameraCF
			) == false
		then
			reporter:fail(ErrorSourceStrings.Keys.ThumbnailOutsideView, {
				InstancePath = handle:GetFullName(),
			})
		end
	end
end

return ThumbnailConfigValid :: Types.ValidationModule
