local UGCValidationService = game:GetService("UGCValidationService")
local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local ValidationRulesUtil = require(root.util.ValidationRulesUtil)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local getEngineFeatureEngineUGCValidationExpandReturnSchema =
	require(root.flags.getEngineFeatureEngineUGCValidationExpandReturnSchema)
local Vector3Utils = require(root.util.Vector3Utils)
local valueToString = require(root.util.valueToString)
local LCDeformationWithinBounds = {}

local FIntLCPostDeformSizeMultiplierEyebrowEyelash = game:DefineFastInt(
	"LCPostDeformSizeMultiplierEyebrowEyelashHundredths",
	100
) / 100

local FIntLCPostDeformSizeMultiplier = {
	[Enum.AssetType.EyebrowAccessory] = FIntLCPostDeformSizeMultiplierEyebrowEyelash,
	[Enum.AssetType.EyelashAccessory] = FIntLCPostDeformSizeMultiplierEyebrowEyelash,
}

local FIntLCPostDeformSizeMultiplierGeneral = game:DefineFastInt("LCPostDeformSizeMultiplierGeneralHundredths", 100)
	/ 100

LCDeformationWithinBounds.fflag = require(root.flags.getEngineFeatureEngineUGCValidationExactLCDeformationSize)
LCDeformationWithinBounds.categories = { ValidationEnums.UploadCategory.LAYERED_CLOTHING }
LCDeformationWithinBounds.requiredData = { ValidationEnums.SharedDataMember.renderMeshesData }

LCDeformationWithinBounds.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local handleInst = data.rootInstance:FindFirstChild("Handle")
	local handleEditableData = data.renderMeshesData["Handle"]
	local assetType = data.uploadEnum.assetType

	if handleInst == nil or handleEditableData == nil then
		error("Schema should have ensured data exists for handle")
	end

	local success, sizeLimit = ValidationRulesUtil:getLCSizeLimit(assetType, handleInst :: MeshPart)
	if not success or sizeLimit == nil then
		error("Could not find matching attachment on Handle for " .. assetType.Name)
	end

	local multiplier = FIntLCPostDeformSizeMultiplier[assetType] or FIntLCPostDeformSizeMultiplierGeneral
	local maxSize = sizeLimit * multiplier
	local postDeformSize = (UGCValidationService :: any):GetLayeredClothingPostDeformationSize(
		data.rootInstance,
		handleEditableData.editable,
		handleEditableData.scale
	) :: Vector3

	if not Vector3Utils.isFirstLessOrEqual(postDeformSize, maxSize) then
		reporter:fail(
			ErrorSourceStrings.Keys.LCDeformTooLarge,
			{ maxSize = valueToString(maxSize) },
			if getEngineFeatureEngineUGCValidationExpandReturnSchema() then handleInst else nil
		)
	end
end

return LCDeformationWithinBounds :: Types.ValidationModule
