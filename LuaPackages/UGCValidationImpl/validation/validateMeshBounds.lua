local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local Constants = require(root.Constants)

local DEFAULT_OFFSET = Vector3.new(0, 0, 0)

local function pointInBounds(worldPos, boundsCF, boundsSize)
	local objectPos = boundsCF:pointToObjectSpace(worldPos)
	return  objectPos.X >= -boundsSize.X/2
		and objectPos.X <=  boundsSize.X/2
		and objectPos.Y >= -boundsSize.Y/2
		and objectPos.Y <=  boundsSize.Y/2
		and objectPos.Z >= -boundsSize.Z/2
		and objectPos.Z <=  boundsSize.Z/2
end

local function getAttachment(parent, names)
	for _, name in pairs(names) do
		local result = parent:FindFirstChild(name)
		if result then
			return result
		end
	end
	return nil
end

local function validateMeshBounds(isAsync, instance, assetTypeEnum)
	local assetInfo = Constants.ASSET_TYPE_INFO[assetTypeEnum]

	-- these are guaranteed to exist thanks to validateInstanceTree being called beforehand
	local handle = instance.Handle
	local mesh = handle:FindFirstChildOfClass("SpecialMesh")
	local attachment = getAttachment(handle, assetInfo.attachmentNames)

	if mesh.MeshId == "" then
		return false, { "Mesh must contain valid MeshId" }
	end

	local success, verts = pcall(function()
		if isAsync then
			return UGCValidationService:GetMeshVerts(mesh.MeshId)
		else
			return UGCValidationService:GetMeshVertsSync(mesh.MeshId)
		end
	end)

	if not success then
		return false, { "Failed to read mesh" }
	end

	local boundsInfo = assert(assetInfo.bounds[attachment.Name], "Could not find bounds for " .. attachment.Name)
	local boundsSize = boundsInfo.size
	local boundsOffset = boundsInfo.offset or DEFAULT_OFFSET
	local boundsCF = handle.CFrame * attachment.CFrame * CFrame.new(boundsOffset)

	for _, vertPos in pairs(verts) do
		local worldPos = handle.CFrame:pointToWorldSpace(vertPos * mesh.Scale)
		if not pointInBounds(worldPos, boundsCF, boundsSize) then
			return false, {
				"Mesh is too large!",
				string.format("Max size for type %s is ( %s )", assetTypeEnum.Name, tostring(boundsSize)),
				"Use SpecialMesh.Scale if needed"
			}
		end
	end

	return true
end

return validateMeshBounds
