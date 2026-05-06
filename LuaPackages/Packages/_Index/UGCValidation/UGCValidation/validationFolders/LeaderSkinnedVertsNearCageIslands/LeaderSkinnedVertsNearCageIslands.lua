local UGCValidationService = game:GetService("UGCValidationService")
local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local EyelashCageUVReferenceValues = require(root.EyelashCageUVReferenceValues)
local getFIntUGCValidationLeaderVertsNearCageIslandsDistance =
	require(root.flags.getFIntUGCValidationLeaderVertsNearCageIslandsDistance)
local LeaderSkinnedVertsNearCageIslands = {}

LeaderSkinnedVertsNearCageIslands.fflag =
	require(root.flags.getEngineFeatureEngineUGCValidateLeaderVertsNearCageIslands)
LeaderSkinnedVertsNearCageIslands.categories = { ValidationEnums.UploadCategory.LAYERED_CLOTHING }
LeaderSkinnedVertsNearCageIslands.requiredData = {
	ValidationEnums.SharedDataMember.renderMeshesData,
	ValidationEnums.SharedDataMember.innerCagesData,
}

local distanceThreshold = getFIntUGCValidationLeaderVertsNearCageIslandsDistance() / 10000

LeaderSkinnedVertsNearCageIslands.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	if data.uploadEnum.assetType ~= Enum.AssetType.EyelashAccessory then
		return
	end

	local handleEditableData = data.renderMeshesData["Handle"]
	local innerCageData = data.innerCagesData["Handle"]

	if handleEditableData == nil or innerCageData == nil then
		error("Schema should have ensured data exists for handle")
	end

	local success = UGCValidationService:ValidateLeaderSkinnedVertsNearCageIslands(
		handleEditableData.editable,
		innerCageData.editable,
		EyelashCageUVReferenceValues,
		innerCageData.origin,
		distanceThreshold
	)

	if not success then
		reporter:fail(ErrorSourceStrings.Keys.LeaderVertsNearCageIslands)
	end
end

return LeaderSkinnedVertsNearCageIslands :: Types.ValidationModule
