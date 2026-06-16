local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getFFlagUGCValidateMigrateCageGeometry = require(root.flags.getFFlagUGCValidateMigrateCageGeometry)
local getFIntUGCValidateCageMeshDistanceThreshold = require(root.flags.getFIntUGCValidateCageMeshDistanceThreshold)
local getFFlagUGCValidationEyebrowEyelashSupport = require(root.flags.getFFlagUGCValidationEyebrowEyelashSupport)

local CageMeshDistanceBounded = {}

CageMeshDistanceBounded.fflag = getFFlagUGCValidateMigrateCageGeometry
CageMeshDistanceBounded.categories = { ValidationEnums.UploadCategory.LAYERED_CLOTHING }
CageMeshDistanceBounded.requiredData = {
	ValidationEnums.SharedDataMember.renderMeshesData,
	ValidationEnums.SharedDataMember.innerCagesData,
	ValidationEnums.SharedDataMember.outerCagesData,
}
CageMeshDistanceBounded.expectedFailures = {}

CageMeshDistanceBounded.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	-- Legacy skips this check for Eyebrow/Eyelash asset types when the flag is on
	if getFFlagUGCValidationEyebrowEyelashSupport() then
		local assetType = data.uploadEnum.assetType
		if assetType == Enum.AssetType.EyebrowAccessory or assetType == Enum.AssetType.EyelashAccessory then
			return
		end
	end

	local handleMeshData = data.renderMeshesData["Handle"]
	if handleMeshData == nil then
		-- No render mesh data for Handle — nothing to validate
		return
	end

	local innerCageData = data.innerCagesData["Handle"]
	local outerCageData = data.outerCagesData["Handle"]
	if innerCageData == nil or outerCageData == nil then
		-- No cage data available — nothing to validate
		return
	end

	local averageOuterCageToMeshDistance = (UGCValidationService :: any):CalculateAverageEditableCageMeshDistance(
		innerCageData.editable,
		outerCageData.editable,
		handleMeshData.editable,
		innerCageData.origin,
		outerCageData.origin
	)

	local threshold = getFIntUGCValidateCageMeshDistanceThreshold()
	if averageOuterCageToMeshDistance * 100 > threshold or averageOuterCageToMeshDistance < 0 then
		if averageOuterCageToMeshDistance < 0 then
			reporter:fail(ErrorSourceStrings.Keys.CageMeshDistanceBounded_MeshOutsideCage, {})
		else
			reporter:fail(ErrorSourceStrings.Keys.CageMeshDistanceBounded_DistanceTooHigh, {
				distance = string.format("%.2f", averageOuterCageToMeshDistance),
			})
		end
	end
end

return CageMeshDistanceBounded :: Types.ValidationModule
