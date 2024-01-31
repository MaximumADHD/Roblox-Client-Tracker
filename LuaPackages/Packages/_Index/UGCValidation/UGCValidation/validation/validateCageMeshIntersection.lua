local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local Analytics = require(root.Analytics)

local Types = require(root.util.Types)

local getFFlagUseUGCValidationContext = require(root.flags.getFFlagUseUGCValidationContext)
local getEngineFeatureUGCValidateEditableMeshAndImage =
	require(root.flags.getEngineFeatureUGCValidateEditableMeshAndImage)

local function validateCageMeshIntersection(
	innerCageMeshInfo: Types.MeshInfo,
	outerCageMeshInfo: Types.MeshInfo,
	meshInfo: Types.MeshInfo
): (boolean, { string }?)
	if getEngineFeatureUGCValidateEditableMeshAndImage() then
		if not meshInfo.editableMesh then
			Analytics.reportFailure(Analytics.ErrorType.validateCageMeshIntersection_InvalidRefMeshId)
			return false, { "Mesh must contain valid MeshId for CageMeshIntersection checks." }
		end
	else
		if meshInfo.contentId == "" then
			Analytics.reportFailure(Analytics.ErrorType.validateCageMeshIntersection_InvalidRefMeshId)
			return false, { "Mesh must contain valid MeshId for CageMeshIntersection checks." }
		end
	end

	local success, checkIntersection, checkIrrelevantCageModified, checkOuterCageFarExtendedFromMesh, checkAverageOuterCageToMeshVertDistances
	if getEngineFeatureUGCValidateEditableMeshAndImage() then
		success, checkIntersection, checkIrrelevantCageModified, checkOuterCageFarExtendedFromMesh, checkAverageOuterCageToMeshVertDistances = pcall(
			function()
				return UGCValidationService:ValidateEditableMeshCageMeshIntersection(
					innerCageMeshInfo.editableMesh,
					outerCageMeshInfo.editableMesh,
					meshInfo.editableMesh
				)
			end
		)
	else
		success, checkIntersection, checkIrrelevantCageModified, checkOuterCageFarExtendedFromMesh, checkAverageOuterCageToMeshVertDistances = pcall(
			function()
				return UGCValidationService:ValidateCageMeshIntersection(
					innerCageMeshInfo.contentId,
					outerCageMeshInfo.contentId,
					meshInfo.contentId
				)
			end
		)
	end

	if not success then
		Analytics.reportFailure(Analytics.ErrorType.validateCageMeshIntersection_FailedToExecute)
		return false, { "Failed to execute validateCageMeshIntersection check" }
	end

	local reasons = {}
	local result = true
	if not checkIntersection then
		result = false
		Analytics.reportFailure(Analytics.ErrorType.validateCageMeshIntersection_Intersection)
		table.insert(
			reasons,
			"There are cage vertices intersect with the clothing mesh, which could lead to interpenetration issues."
		)
	end

	if not checkIrrelevantCageModified then
		result = false
		Analytics.reportFailure(Analytics.ErrorType.validateCageMeshIntersection_IrrelevantCageModified)
		table.insert(reasons, "Some outer cage geometry that is far away from the clothing mesh has been modified.")
	end

	if not checkOuterCageFarExtendedFromMesh then
		result = false
		Analytics.reportFailure(Analytics.ErrorType.validateCageMeshIntersection_OuterCageFarExtendedFromMesh)
		table.insert(reasons, "There are outer cage vertex(s) that are too far away from the clothing mesh.")
	end

	if not checkAverageOuterCageToMeshVertDistances then
		result = false
		Analytics.reportFailure(Analytics.ErrorType.validateCageMeshIntersection_AverageOuterCageToMeshVertDistances)
		table.insert(reasons, "The average distance between the clothing and outer cage is too large.")
	end

	return result, reasons
end

local function DEPRECATED_validateCageMeshIntersection(
	innerCageMeshId: string,
	outerCageMeshId: string,
	refMeshId: string
): (boolean, { string }?)
	if refMeshId == "" then
		Analytics.reportFailure(Analytics.ErrorType.validateCageMeshIntersection_InvalidRefMeshId)
		return false, { "Mesh must contain valid MeshId for CageMeshIntersection checks." }
	end

	local success, checkIntersection, checkIrrelevantCageModified, checkOuterCageFarExtendedFromMesh, checkAverageOuterCageToMeshVertDistances = pcall(
		function()
			return UGCValidationService:ValidateCageMeshIntersection(innerCageMeshId, outerCageMeshId, refMeshId)
		end
	)

	if not success then
		Analytics.reportFailure(Analytics.ErrorType.validateCageMeshIntersection_FailedToExecute)
		return false, { "Failed to execute validateCageMeshIntersection check" }
	end

	local reasons = {}
	local result = true
	if not checkIntersection then
		result = false
		Analytics.reportFailure(Analytics.ErrorType.validateCageMeshIntersection_Intersection)
		table.insert(
			reasons,
			"There are cage vertices intersect with the clothing mesh, which could lead to interpenetration issues."
		)
	end

	if not checkIrrelevantCageModified then
		result = false
		Analytics.reportFailure(Analytics.ErrorType.validateCageMeshIntersection_IrrelevantCageModified)
		table.insert(reasons, "Some outer cage geometry that is far away from the clothing mesh has been modified.")
	end

	if not checkOuterCageFarExtendedFromMesh then
		result = false
		Analytics.reportFailure(Analytics.ErrorType.validateCageMeshIntersection_OuterCageFarExtendedFromMesh)
		table.insert(reasons, "There are outer cage vertex(s) that are too far away from the clothing mesh.")
	end

	if not checkAverageOuterCageToMeshVertDistances then
		result = false
		Analytics.reportFailure(Analytics.ErrorType.validateCageMeshIntersection_AverageOuterCageToMeshVertDistances)
		table.insert(reasons, "The average distance between the clothing and outer cage is too large.")
	end

	return result, reasons
end

return if getFFlagUseUGCValidationContext()
	then validateCageMeshIntersection
	else DEPRECATED_validateCageMeshIntersection :: never
