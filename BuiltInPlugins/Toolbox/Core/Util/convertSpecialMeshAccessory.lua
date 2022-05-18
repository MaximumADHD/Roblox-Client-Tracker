local UGCValidationService = game:GetService("UGCValidationService")

local THUMBNAIL_CONFIGURATION = "ThumbnailConfiguration"
local THUMBNAIL_CAMERA_TARGET = "ThumbnailCameraTarget"
local THUMBNAIL_CAMERA_VALUE = "ThumbnailCameraValue"

local function isLayeredClothing(instance: any): boolean
	if instance and typeof(instance) == "Instance" and instance:IsA("Accessory") then
		local handle = instance:FindFirstChild("Handle")
		if handle and handle:IsA("MeshPart") then
			local wrapLayer = handle:FindFirstChildOfClass("WrapLayer")
			if wrapLayer then
				return true
			end
		end
	end
	return false
end

-- creates a new accessory with a MeshPart handle
local function convertSpecialMeshAccessory(accessory)
	if isLayeredClothing(accessory) then
		return accessory
	end

	local newAccessory = Instance.new("Accessory")
	newAccessory.Name = accessory.Name
	newAccessory.Parent = accessory.Parent

	local handle = accessory.Handle
	local specialMesh = handle:FindFirstChildOfClass("SpecialMesh")

	local meshPart = Instance.new("MeshPart")
	meshPart.Name = "Handle"
	meshPart.TextureID = specialMesh.TextureId
	-- Parent must be set BEFORE calling UGCValidationService:SetMeshIdBlocking()
	meshPart.Parent = newAccessory
	UGCValidationService:SetMeshIdBlocking(meshPart, specialMesh.MeshId)
	meshPart.Size = meshPart.Size * specialMesh.Scale

	-- copy handle children to new handle
	for _, child in pairs(handle:GetChildren()) do
		-- do not copy the SpecialMesh, no longer needed
		if not child:IsA("SpecialMesh") then
			child:Clone().Parent = meshPart
		end
	end

	-- copy ThumbnailConfiguration
	local thumbnailConfiguration = accessory:FindFirstChild(THUMBNAIL_CONFIGURATION)
	if thumbnailConfiguration and thumbnailConfiguration:IsA("Configuration") then
		local thumbnailCameraTarget = thumbnailConfiguration:FindFirstChild(THUMBNAIL_CAMERA_TARGET)
		local thumbnailCameraValue = thumbnailConfiguration:FindFirstChild(THUMBNAIL_CAMERA_VALUE)
		if
			thumbnailCameraTarget
			and thumbnailCameraTarget:IsA("ObjectValue")
			and thumbnailCameraValue
			and thumbnailCameraValue:IsA("CFrameValue")
		then
			local copy = thumbnailConfiguration:Clone()
			copy[THUMBNAIL_CAMERA_TARGET].Value = meshPart
			copy.Parent = newAccessory
		end
	end

	return newAccessory
end

return convertSpecialMeshAccessory
