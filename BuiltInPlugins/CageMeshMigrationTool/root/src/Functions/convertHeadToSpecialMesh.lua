local Workspace = game:GetService("Workspace")
local CollectionService = game:GetService("CollectionService")

local function convertHeadToSpecialMesh(meshPartHeadFolder)
	local meshPartHead = meshPartHeadFolder:FindFirstChild("Head")
	if not meshPartHead then
		warn("Unable to find MeshPart Head to convert to SpecialMesh Head")
		return
	end

	local specialMeshHeadFolder = Instance.new("Folder", Workspace)
	specialMeshHeadFolder.Name = "Head_SpecialMesh"

	local specialMeshHead = Instance.new("SpecialMesh", specialMeshHeadFolder)
	specialMeshHead.Name = "Head"

	specialMeshHead.MeshId = meshPartHead.MeshId
	specialMeshHead.TextureId = meshPartHead.TextureID

	local hasFace = meshPartHead:FindFirstChild("face") ~= nil or meshPartHead:FindFirstChild("Face") ~= nil
	if not hasFace then
		CollectionService:AddTag(specialMeshHead, "NoFace")
	end
end

return convertHeadToSpecialMesh
