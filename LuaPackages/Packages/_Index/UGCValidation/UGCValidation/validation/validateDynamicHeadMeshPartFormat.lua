--!strict

local root = script.Parent.Parent

local validateBodyPartMeshBounds = require(root.validation.validateBodyPartMeshBounds)
local validateBodyPartChildAttachmentBounds = require(root.validation.validateBodyPartChildAttachmentBounds)
local validateSingleInstance = require(root.validation.validateSingleInstance)

local validateWithSchema = require(root.util.validateWithSchema)
local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)

local createDynamicHeadMeshPartSchema = require(root.util.createDynamicHeadMeshPartSchema)

local function validateDynamicHeadMeshPartFormat(
	allSelectedInstances: { Instance },
	isServer: boolean,
	allowUnreviewedAssets: boolean
): (boolean, { string }?)
	local result, failureReasons = validateSingleInstance(allSelectedInstances)
	if not result then
		return result, failureReasons
	end

	local inst = allSelectedInstances[1]
	local headBodyPartSchema = createDynamicHeadMeshPartSchema()
	local validationResult = validateWithSchema(headBodyPartSchema, inst)
	if not validationResult.success then
		return false, { validationResult.message }
	end

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	if not reasonsAccumulator:updateReasons(validateBodyPartMeshBounds(inst, Enum.AssetType.DynamicHead)) then
		return reasonsAccumulator:getFinalResults()
	end

	if
		not reasonsAccumulator:updateReasons(validateBodyPartChildAttachmentBounds(inst, Enum.AssetType.DynamicHead))
	then
		return reasonsAccumulator:getFinalResults()
	end
	return reasonsAccumulator:getFinalResults()
end

return validateDynamicHeadMeshPartFormat
