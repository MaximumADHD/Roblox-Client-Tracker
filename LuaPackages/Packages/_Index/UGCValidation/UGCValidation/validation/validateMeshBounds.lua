local UGCValidationService = game:GetService("UGCValidationService")

local DEFAULT_OFFSET = Vector3.new(0, 0, 0)

local function pointInBounds(worldPos, boundsCF, boundsSize)
	local objectPos = boundsCF:PointToObjectSpace(worldPos)
	return  objectPos.X >= -boundsSize.X/2
		and objectPos.X <=  boundsSize.X/2
		and objectPos.Y >= -boundsSize.Y/2
		and objectPos.Y <=  boundsSize.Y/2
		and objectPos.Z >= -boundsSize.Z/2
		and objectPos.Z <=  boundsSize.Z/2
end

local function validateMeshBounds(handle: BasePart, attachment: Attachment, meshId: string, meshScale: Vector3, assetTypeEnum: Enum.AssetType, boundsInfo: any): (boolean, {string}?)
	if not game:GetFastFlag("UGCReturnAllValidations") then
		-- we have checked meshId in validateLayeredClothingAccessory, this should be removed when UGCReturnAllValidations is on
		if meshId == "" then
			return false, { "Mesh must contain valid MeshId" }
		end
	end

	local boundsSize = boundsInfo.size
	local boundsOffset = boundsInfo.offset or DEFAULT_OFFSET
	local boundsCF = handle.CFrame * attachment.CFrame * CFrame.new(boundsOffset)

	if game:GetFastFlag("UGCLCQualityReplaceLua") then
		local success, result = pcall(function()
			return UGCValidationService:ValidateMeshBounds(meshId, meshScale, boundsOffset, attachment.CFrame, handle.CFrame)
		end)

		if not success then
			return false, { "Failed to execute validateMeshBounds check" }
		end

		if not result then
			return false, {
				"Mesh is too large!",
				string.format("Max size for type %s is ( %s )", assetTypeEnum.Name, tostring(boundsSize)),
				"Use SpecialMesh.Scale if needed"
			}
		end
	else
		local success, verts = pcall(function()
			return UGCValidationService:GetMeshVerts(meshId)
		end)

		if not success then
			return false, { "Failed to read mesh" }
		end

		
		for _, vertPos in pairs(verts) do
			local worldPos = handle.CFrame:PointToWorldSpace(vertPos * meshScale)
			if not pointInBounds(worldPos, boundsCF, boundsSize) then
				return false, {
					"Mesh is too large!",
					string.format("Max size for type %s is ( %s )", assetTypeEnum.Name, tostring(boundsSize)),
					"Use SpecialMesh.Scale if needed"
				}
			end
		end
	end

	return true
end

return validateMeshBounds
