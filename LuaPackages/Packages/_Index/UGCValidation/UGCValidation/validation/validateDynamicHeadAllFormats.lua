--!strict

local root = script.Parent.Parent

local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)

local validateDynamicHeadSpecialMeshFormat = require(root.validation.validateDynamicHeadSpecialMeshFormat)
local validateDynamicHeadMeshPartFormat = require(root.validation.validateDynamicHeadMeshPartFormat)
local validateDynamicHeadsFormatsMatch = require(root.validation.validateDynamicHeadsFormatsMatch)

local function validateDynamicHeadAllFormats(
	meshPartInstances: { Instance },
	specialMeshInstances: { Instance },
	assetTypeEnum: Enum.AssetType,
	isServer: boolean,
	allowUnreviewedAssets: boolean
): (boolean, { string }?)
	assert(Enum.AssetType.DynamicHead == assetTypeEnum)

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	if
		not reasonsAccumulator:updateReasons(
			validateDynamicHeadSpecialMeshFormat(specialMeshInstances, assetTypeEnum, isServer, allowUnreviewedAssets)
		)
	then
		return reasonsAccumulator:getFinalResults()
	end

	if
		not reasonsAccumulator:updateReasons(
			validateDynamicHeadMeshPartFormat(meshPartInstances, isServer, allowUnreviewedAssets)
		)
	then
		return reasonsAccumulator:getFinalResults()
	end

	if not reasonsAccumulator:getFinalResults() then
		return reasonsAccumulator:getFinalResults()
	end

	if
		not reasonsAccumulator:updateReasons(
			validateDynamicHeadsFormatsMatch(meshPartInstances[1] :: MeshPart, specialMeshInstances[1] :: SpecialMesh)
		)
	then
		return reasonsAccumulator:getFinalResults()
	end
	return reasonsAccumulator:getFinalResults()
end

return validateDynamicHeadAllFormats
