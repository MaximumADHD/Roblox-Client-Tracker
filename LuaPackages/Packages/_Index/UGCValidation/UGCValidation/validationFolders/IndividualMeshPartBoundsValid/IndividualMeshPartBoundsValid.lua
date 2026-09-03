local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local ValidationRulesUtil = require(root.util.ValidationRulesUtil)

local getFFlagUGCValidateIndividualMeshPartBounds = require(root.flags.getFFlagUGCValidateIndividualMeshPartBounds)
local getEngineFeatureEngineUGCValidateMeshPartBoundsFromRules =
	require(root.flags.getEngineFeatureEngineUGCValidateMeshPartBoundsFromRules)

local IndividualMeshPartBoundsValid = {}

IndividualMeshPartBoundsValid.categories = {
	ValidationEnums.UploadCategory.TORSO_AND_LIMBS,
	ValidationEnums.UploadCategory.DYNAMIC_HEAD,
}
IndividualMeshPartBoundsValid.requiredData = {
	ValidationEnums.SharedDataMember.rootInstance,
	ValidationEnums.SharedDataMember.uploadEnum,
	ValidationEnums.SharedDataMember.renderMeshesData,
}
IndividualMeshPartBoundsValid.conditionalData = {}
IndividualMeshPartBoundsValid.fflag = getFFlagUGCValidateIndividualMeshPartBounds
IndividualMeshPartBoundsValid.expectedFailures = {}
IndividualMeshPartBoundsValid.prereqTests = {}

IndividualMeshPartBoundsValid.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local instance = data.rootInstance
	local renderMeshesData = data.renderMeshesData

	local minThreshold, maxThreshold
	if getEngineFeatureEngineUGCValidateMeshPartBoundsFromRules() then
		local meshRules = ValidationRulesUtil:getRules().MeshRules
		minThreshold = meshRules.MeshPartBoundsMin
		maxThreshold = meshRules.MeshPartBoundsMax
	else
		minThreshold = 0.05
		maxThreshold = 4.00
	end

	for partName: string, meshData in renderMeshesData :: { [string]: any } do
		local meshSize = meshData.originalSize * meshData.scale

		local function checkAxis(axis: string, size: number)
			if size < minThreshold then
				reporter:fail(ErrorSourceStrings.Keys.MeshPartBounds_TooSmall, {
					partName = partName,
					axis = axis,
					currentSize = string.format("%.2f", size),
					minSize = string.format("%.2f", minThreshold),
				}, instance)
			elseif size > maxThreshold then
				reporter:fail(ErrorSourceStrings.Keys.MeshPartBounds_TooLarge, {
					partName = partName,
					axis = axis,
					currentSize = string.format("%.2f", size),
					maxSize = string.format("%.2f", maxThreshold),
				}, instance)
			end
		end

		checkAxis("X", meshSize.X)
		checkAxis("Y", meshSize.Y)
		checkAxis("Z", meshSize.Z)
	end
end

return IndividualMeshPartBoundsValid :: Types.ValidationModule
