local UGCValidationService = game:GetService("UGCValidationService")

local function validateCageNonManifoldAndHoles(meshId: string, meshType: string): (boolean, { string }?)
	local success, checkNonManifold, checkCageHoles = pcall(function()
		return UGCValidationService:ValidateCageNonManifoldAndHoles(meshId)
	end)

	if not success then
		return false, { "Failed to execute validateCageNonManifoldAndHoles check" }
	end

	local reasons = {}
	local result = true
	if not checkNonManifold then
		result = false
		table.insert(
			reasons,
			string.format("%s has non-manifold geometry, which can cause deformation issues.", meshType)
		)
	end

	if not checkCageHoles then
		result = false
		table.insert(reasons, string.format("%s is not watertight, meaning there are holes in it.", meshType))
	end

	return result, reasons
end

return validateCageNonManifoldAndHoles
