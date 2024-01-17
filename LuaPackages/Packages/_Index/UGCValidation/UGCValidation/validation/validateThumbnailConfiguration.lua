--!nonstrict

local UGCValidationService = game:GetService("UGCValidationService")
local FFlagUGCValidationAddThumbnailFrustumCheckingv2 =
	game:DefineFastFlag("UGCValidationAddThumbnailFrustumCheckingv2", false)
-- validates that if ThumbnailConfiguration exists, ThumbnailConfiguration.ThumbnailCameraTarget.Value is set to the handle

local root = script.Parent.Parent

local getFFlagUseUGCValidationContext = require(root.flags.getFFlagUseUGCValidationContext)

local Analytics = require(root.Analytics)

local function validateThumbnailConfiguration(
	accessory: Instance,
	handle: BasePart,
	editableMesh: EditableMesh,
	meshScale: Vector3
): (boolean, { string }?)
	local thumbnailConfiguration = accessory:FindFirstChild("ThumbnailConfiguration")

	if thumbnailConfiguration then
		-- if ThumbnailConfiguration is present, validateInstanceTree verifies ThumbnailCameraTarget also exists
		local thumbnailCameraTarget = thumbnailConfiguration:FindFirstChild("ThumbnailCameraTarget") :: ObjectValue
		if thumbnailCameraTarget.Value ~= handle then
			Analytics.reportFailure(Analytics.ErrorType.validateThumbnailConfiguration_InvalidTarget)
			return false, { string.format("ThumbnailCameraTarget.Value must be %s", handle:GetFullName()) }
		end
		-- check the frustum of the camera when taking snapshots now
		if
			game:GetEngineFeature("EngineUGCValidateThumbnailerMeshInFrustum")
			and FFlagUGCValidationAddThumbnailFrustumCheckingv2
		then
			local target = thumbnailCameraTarget.Value :: BasePart
			local handleCF = target.CFrame
			local thumbnailCameraValue = thumbnailConfiguration:FindFirstChild("ThumbnailCameraValue") :: CFrameValue
			local cameraCF = handleCF * thumbnailCameraValue.Value
			if UGCValidationService:CheckMeshInCameraFrustum(editableMesh, meshScale, handleCF, cameraCF) == false then
				Analytics.reportFailure(Analytics.ErrorType.validateThumbnailConfiguration_OutsideView)
				return false, { "Item must be fully within view of thumbnail camera" }
			end
		end
	end

	return true
end

local function DEPRECATED_validateThumbnailConfiguration(
	accessory: Instance,
	handle: BasePart,
	meshId: string,
	meshScale: Vector3
): (boolean, { string }?)
	local thumbnailConfiguration = accessory:FindFirstChild("ThumbnailConfiguration")

	if thumbnailConfiguration then
		-- if ThumbnailConfiguration is present, validateInstanceTree verifies ThumbnailCameraTarget also exists
		local thumbnailCameraTarget = thumbnailConfiguration:FindFirstChild("ThumbnailCameraTarget") :: ObjectValue
		if thumbnailCameraTarget.Value ~= handle then
			Analytics.reportFailure(Analytics.ErrorType.validateThumbnailConfiguration_InvalidTarget)
			return false, { string.format("ThumbnailCameraTarget.Value must be %s", handle:GetFullName()) }
		end
		-- check the frustum of the camera when taking snapshots now
		if
			game:GetEngineFeature("EngineUGCValidateThumbnailerMeshInFrustum")
			and FFlagUGCValidationAddThumbnailFrustumCheckingv2
		then
			local target = thumbnailCameraTarget.Value :: BasePart
			local handleCF = target.CFrame
			local thumbnailCameraValue = thumbnailConfiguration:FindFirstChild("ThumbnailCameraValue") :: CFrameValue
			local cameraCF = handleCF * thumbnailCameraValue.Value
			if UGCValidationService:CheckMeshInCameraFrustum(meshId, meshScale, handleCF, cameraCF) == false then
				Analytics.reportFailure(Analytics.ErrorType.validateThumbnailConfiguration_OutsideView)
				return false, { "Item must be fully within view of thumbnail camera" }
			end
		end
	end

	return true
end

if getFFlagUseUGCValidationContext() then
	return validateThumbnailConfiguration :: any
else
	return DEPRECATED_validateThumbnailConfiguration :: any
end
