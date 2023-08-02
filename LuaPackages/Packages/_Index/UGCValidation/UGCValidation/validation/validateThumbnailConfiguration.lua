--!strict

-- validates that if ThumbnailConfiguration exists, ThumbnailConfiguration.ThumbnailCameraTarget.Value is set to the handle

local function validateThumbnailConfiguration(accessory: Instance, handle: BasePart): (boolean, { string }?)
	local thumbnailConfiguration = accessory:FindFirstChild("ThumbnailConfiguration")

	if thumbnailConfiguration then
		-- if ThumbnailConfiguration is present, validateInstanceTree verifies ThumbnailCameraTarget also exists
		local thumbnailCameraTarget = thumbnailConfiguration:FindFirstChild("ThumbnailCameraTarget") :: ObjectValue
		if thumbnailCameraTarget.Value ~= handle then
			return false, { string.format("ThumbnailCameraTarget.Value must be %s", handle:GetFullName()) }
		end
	end

	return true
end

return validateThumbnailConfiguration
