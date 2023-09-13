--!nonstrict

local UGCValidationService = game:GetService("UGCValidationService")
local FFlagUGCValidationAddThumbnailFrustumChecking =
	game:DefineFastFlag("UGCValidationAddThumbnailFrustumChecking", false)
-- validates that if ThumbnailConfiguration exists, ThumbnailConfiguration.ThumbnailCameraTarget.Value is set to the handle

local function validateThumbnailConfiguration(
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
			return false, { string.format("ThumbnailCameraTarget.Value must be %s", handle:GetFullName()) }
		end
		-- check the frustum of the camera when taking snapshots now
		if FFlagUGCValidationAddThumbnailFrustumChecking then
			local target = thumbnailCameraTarget.Value :: BasePart
			local handleCF = target.CFrame
			local thumbnailCameraValue = thumbnailConfiguration:FindFirstChild("ThumbnailCameraValue") :: CFrameValue
			local cameraCF = handleCF * thumbnailCameraValue.Value
			if UGCValidationService:CheckMeshInCameraFrustum(meshId, meshScale, handleCF, cameraCF) == false then
				return false, { "Item must be fully within view of thumbnail camera" }
			end
		end
	end

	return true
end

return validateThumbnailConfiguration
