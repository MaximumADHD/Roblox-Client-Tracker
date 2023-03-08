local UGCValidationService = game:GetService("UGCValidationService")

local function validateCageNonManifoldAndHoles(meshId: string, meshType: string): (boolean, {string}?)
	if not game:GetFastFlag("UGCReturnAllValidations") then
		-- we have checked meshId in validateLayeredClothingAccessory, this should be removed when UGCReturnAllValidations is on
		if meshId == "" then
			return false, { "Cage must contain valid MeshId for CageNonManifoldAndHoles checks." }
		end
	end

	local success, checkNonManifold, checkCageHoles = pcall(function()
		return UGCValidationService:ValidateCageNonManifoldAndHoles(meshId)
	end)

	if not success then
		return false, { "Failed to execute validateCageNonManifoldAndHoles check" }
	end

	if game:GetFastFlag("UGCReturnAllValidations") then
		local reasons = {}
		local result = true
		if not checkNonManifold then
			result = false
			table.insert(reasons, string.format("%s has non-manifold geometry, which can cause deformation issues.", meshType))
		end

		if not checkCageHoles then
			result = false
			table.insert(reasons, string.format("%s is not watertight, meaning there are holes in it.", meshType))
		end

		return result, reasons
	else
		if not checkNonManifold then
			return false, { "This cage has non-manifold geometry, which can cause deformation issues." }
		end
	
		if not checkCageHoles then
			return false, { "The clothing mesh is not watertight, meaning there are holes in it. This could lead to issues with Hidden Surface Removal." }
		end
	
		return true
	end
end

return validateCageNonManifoldAndHoles
