local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local UGCValidationService = game:GetService("UGCValidationService")
local minSizeThreshold = game:DefineFastInt("UGCValidationMinimumHeadSizePercentAcrossFacs", 95)
local maxSizeThreshold = game:DefineFastInt("UGCValidationMaximumHeadSizePercentAcrossFacs", 120)

local FacsHeadConsistency = {}

FacsHeadConsistency.fflag = require(root.flags.getEngineFeatureEngineUGCValidateMinMaxMeshSizeAcrossAllFacs)
FacsHeadConsistency.categories = { ValidationEnums.UploadCategory.DYNAMIC_HEAD }
FacsHeadConsistency.requiredData = { ValidationEnums.SharedDataMember.renderMeshesData }
FacsHeadConsistency.expectedFailures = { "Asset_EF_HeadWithExpandingFacs", "Asset_EF_HeadWithShrinkingFacs" }

FacsHeadConsistency.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local headMeshData = data.renderMeshesData["Head"]
	local minSizeVector, maxSizeVector =
		unpack((UGCValidationService :: any):GetMinAndMaxMeshSizeAcrossAllFacs(headMeshData.editable))

	local minPercentVector = 100 * minSizeVector / headMeshData.originalSize
	local minPercent = math.floor(math.min(minPercentVector.X, minPercentVector.Y, minPercentVector.Z))
	if minPercent < minSizeThreshold then
		reporter:fail(ErrorSourceStrings.Keys.FacsShrinksHead, {
			modPercent = minPercent,
		})
	end

	local maxPercentVector = 100 * maxSizeVector / headMeshData.originalSize
	local maxPercent = math.ceil(math.max(maxPercentVector.X, maxPercentVector.Y, maxPercentVector.Z))
	if maxPercent > maxSizeThreshold then
		reporter:fail(ErrorSourceStrings.Keys.FacsExpandsHead, {
			modPercent = maxPercent,
		})
	end
end

return FacsHeadConsistency :: Types.ValidationModule
