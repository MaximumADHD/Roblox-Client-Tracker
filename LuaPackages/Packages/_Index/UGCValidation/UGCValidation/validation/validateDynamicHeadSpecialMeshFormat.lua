--!strict

local CollectionService = game:GetService("CollectionService")

local root = script.Parent.Parent

local validateSingleInstance = require(root.validation.validateSingleInstance)
local validateTags = require(root.validation.validateTags)
local validateProperties = require(root.validation.validateProperties)
local validateAttributes = require(root.validation.validateAttributes)

local validateWithSchema = require(root.util.validateWithSchema)
local createDynamicHeadSpecialMeshSchema = require(root.util.createDynamicHeadSpecialMeshSchema)
local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)

local function hasNoFaceTag(specialMeshHead: SpecialMesh): (boolean, { string }?)
	if #CollectionService:GetTags(specialMeshHead) == 1 and CollectionService:HasTag(specialMeshHead, "NoFace") then
		return true
	end
	return false, { "SpecialMesh " .. specialMeshHead.Name .. " must have a single tag named 'NoFace'" }
end

local function validateDescendantTags(inst: Instance): (boolean, { string }?)
	local reasonsAccumulator = FailureReasonsAccumulator.new()

	if not reasonsAccumulator:updateReasons(hasNoFaceTag(inst :: SpecialMesh)) then
		return reasonsAccumulator:getFinalResults()
	end

	for _, obj in inst:GetChildren() do
		if not reasonsAccumulator:updateReasons(validateTags(obj)) then
			return reasonsAccumulator:getFinalResults()
		end
	end

	return reasonsAccumulator:getFinalResults()
end

local function validateDynamicHeadSpecialMeshFormat(
	allSelectedInstances: { Instance },
	assetTypeEnum: Enum.AssetType,
	isServer: boolean,
	allowUnreviewedAssets: boolean
): (boolean, { string }?)
	local result, failureReasons = validateSingleInstance(allSelectedInstances)
	if not result then
		return result, failureReasons
	end

	local inst = allSelectedInstances[1]
	local headBodyPartSchema = createDynamicHeadSpecialMeshSchema()
	local validationResult = validateWithSchema(headBodyPartSchema, inst)
	if not validationResult.success then
		return false, { validationResult.message }
	end

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	if not reasonsAccumulator:updateReasons(validateProperties(inst)) then
		return reasonsAccumulator:getFinalResults()
	end

	if not reasonsAccumulator:updateReasons(validateDescendantTags(inst)) then
		return reasonsAccumulator:getFinalResults()
	end

	if not reasonsAccumulator:updateReasons(validateAttributes(inst)) then
		return reasonsAccumulator:getFinalResults()
	end

	return reasonsAccumulator:getFinalResults()
end

return validateDynamicHeadSpecialMeshFormat
