local UGCValidationService = game:GetService("UGCValidationService")
local preloadedMeshValueNames = {
	MeshId = true,
	CageMeshId = true,
	ReferenceMeshId = true,
}

local preloadedImageValueNames = {
	TextureId = true,
	MetalnessMap = true,
	NormalMap = true,
	RoughnessMap = true,
}

local function preloadEditablesFromRootInstance(rootInstance: Instance)
	local editableMeshes = {}
	local editableImages = {}
	local instances = rootInstance:GetDescendants()
	table.insert(instances, rootInstance)

	for _, desc: any in instances do
		if desc:IsA("BinaryStringValue") and preloadedMeshValueNames[desc.Name] then
			editableMeshes[desc.Parent[desc.Name]] =
				UGCValidationService:CreateEditableMeshFromBinaryStringRobloxOnly(desc)
		elseif desc:IsA("BinaryStringValue") and preloadedImageValueNames[desc.Name] then
			editableImages[desc.Parent[desc.Name]] =
				UGCValidationService:CreateEditableImageFromBinaryStringRobloxOnly(desc)
		end
	end

	return editableMeshes, editableImages
end

return preloadEditablesFromRootInstance
