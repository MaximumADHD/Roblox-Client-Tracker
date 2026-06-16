local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local AssetCalculator = require(root.util.AssetCalculator)

local getFFlagUGCValidateMigrateCageGeometry = require(root.flags.getFFlagUGCValidateMigrateCageGeometry)
local GetFStringUGCValidationMaxCageDistance = require(root.flags.GetFStringUGCValidationMaxCageDistance)

local BodyPartCageDistanceValid = {}

BodyPartCageDistanceValid.fflag = getFFlagUGCValidateMigrateCageGeometry
BodyPartCageDistanceValid.categories = { ValidationEnums.UploadCategory.FULL_BODY }
BodyPartCageDistanceValid.requiredData = {
	ValidationEnums.SharedDataMember.renderMeshesData,
	ValidationEnums.SharedDataMember.outerCagesData,
}
BodyPartCageDistanceValid.expectedFailures = {}

BodyPartCageDistanceValid.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	-- Build the AllBodyParts table from rootInstance children (FULL_BODY rootInstance is a Folder)
	local allBodyParts: Types.AllBodyParts = {}
	for _, child in data.rootInstance:GetChildren() do
		allBodyParts[child.Name] = child
	end

	if next(allBodyParts) == nil then
		return
	end

	local partsCFrames = AssetCalculator.calculateAllTransformsForFullBody(allBodyParts)

	-- Assemble input for CalculateBodyMaxCageDistance
	local testInputInfo = {}
	for partName, meshPart in allBodyParts do
		local meshData = data.renderMeshesData[partName]
		local cageData = data.outerCagesData[partName]

		if meshData == nil or cageData == nil then
			continue
		end

		-- Scale: Size / MeshSize (originalSize from the fetch module)
		local scale = (meshPart :: MeshPart).Size / meshData.originalSize

		table.insert(testInputInfo, {
			renderMesh = meshData.editable,
			outerCage = cageData.editable,
			renderMeshTransform = partsCFrames[partName],
			outerCageLocalTransform = cageData.origin,
			scale = scale,
			name = partName,
		})
	end

	if #testInputInfo == 0 then
		return
	end

	local maxCageDistance, partCageWithMaxCageDistance = (UGCValidationService :: any):CalculateBodyMaxCageDistance(
		testInputInfo
	)

	local maxAllowed = GetFStringUGCValidationMaxCageDistance.asNumber()
	if maxCageDistance > maxAllowed then
		reporter:fail(ErrorSourceStrings.Keys.BodyPartCageDistanceValid_TooFar, {
			partName = partCageWithMaxCageDistance,
			distance = string.format("%.2f", maxCageDistance),
			maxDistance = GetFStringUGCValidationMaxCageDistance.asString(),
		})
	end
end

return BodyPartCageDistanceValid :: Types.ValidationModule
