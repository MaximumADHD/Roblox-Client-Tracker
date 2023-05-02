local UGCValidationService = game:GetService("UGCValidationService")

local function validateCageMeshIntersection(innerCageMeshId: string, outerCageMeshId: string, refMeshId: string): (boolean, {string}?)
	if refMeshId == "" then
		return false, { "Mesh must contain valid MeshId for CageMeshIntersection checks." }
	end

	if not game:GetFastFlag("UGCReturnAllValidations") then
		-- we have checked meshId in validateLayeredClothingAccessory, this should be removed when UGCReturnAllValidations is on
		if innerCageMeshId == "" or outerCageMeshId  == "" then
			return false, { "Cage must contain valid MeshId for CageMeshIntersection checks." }
		end
	end

	local success, checkIntersection, checkIrrelevantCageModified, checkOuterCageFarExtendedFromMesh, checkAverageOuterCageToMeshVertDistances = pcall(function()
		return UGCValidationService:ValidateCageMeshIntersection(innerCageMeshId, outerCageMeshId, refMeshId)
	end)

	if not success then
		return false, { "Failed to execute validateCageMeshIntersection check" }
	end

	if game:GetFastFlag("UGCReturnAllValidations") then
		local reasons = {}
		local result = true
		if not checkIntersection then
			result = false
			table.insert(reasons, "There are cage vertices intersect with the clothing mesh, which could lead to interpenetration issues.")
		end

		if not checkIrrelevantCageModified then
			result = false
			table.insert(reasons, "Some outer cage geometry that is far away from the clothing mesh has been modified.")
		end

		if not checkOuterCageFarExtendedFromMesh then
			result = false
			table.insert(reasons, "There are outer cage vertex(s) that are too far away from the clothing mesh.")
		end

		if not checkAverageOuterCageToMeshVertDistances then
			result = false
			table.insert(reasons, "The average distance between the clothing and outer cage is too large.")
		end

		return result, reasons
	else
		if not checkIntersection then
			return false, { "The cage intersects with the clothing mesh, which could lead to interpenetration issues." }
		end
	
		if not checkIrrelevantCageModified then
			return false, { "Some outer cage geometry that is far away from the clothing mesh has been modified. This will lead to issues when other clothing is layered on top." }
		end
	
		if not checkOuterCageFarExtendedFromMesh then
			return false, { "There are outer cage vertex(s) that are too far away from the clothing mesh. This will lead to issues when other clothing is layered on top." }
		end
	
		if not checkAverageOuterCageToMeshVertDistances then
			return false, { "The average distance between the clothing and outer cage is too large. This will lead to bloating issues when other clothing is layered on top." }
		end
	
		return true
	end
end

return validateCageMeshIntersection
