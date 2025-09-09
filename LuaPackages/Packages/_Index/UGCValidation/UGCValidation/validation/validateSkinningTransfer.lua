--!strict

local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local Analytics = require(root.Analytics)
local ConstantsInterface = require(root.ConstantsInterface)

local Types = require(root.util.Types)
local pcallDeferred = require(root.util.pcallDeferred)
local getEditableMeshFromContext = require(root.util.getEditableMeshFromContext)
local getMeshIdForSkinningValidation = require(root.util.getMeshIdForSkinningValidation)

local getEngineFeatureEngineEditableMeshAvatarPublish =
	require(root.flags.getEngineFeatureEngineEditableMeshAvatarPublish)

local function validateSkinningTransfer(
	meshPart: MeshPart,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local allowEditableInstances = validationContext.allowEditableInstances
	local assetTypeEnum = validationContext.assetTypeEnum :: Enum.AssetType

	local success, jointsInfo
	if getEngineFeatureEngineEditableMeshAvatarPublish() then
		success, jointsInfo = pcallDeferred(function()
			local getEditableMeshSuccess, editableMesh =
				getEditableMeshFromContext(meshPart, "MeshId", validationContext)
			if not getEditableMeshSuccess then
				error("Failed to retrieve MeshContent")
			end
			return UGCValidationService:GetEditableMeshSkinningTransferJointsInfo(editableMesh :: EditableMesh)
		end, validationContext)
	else
		success, jointsInfo = pcallDeferred(function()
			return UGCValidationService:GetSkinningTransferJointsInfo(
				getMeshIdForSkinningValidation(meshPart, allowEditableInstances)
			)
		end, validationContext)
	end

	if not success then
		Analytics.reportFailure(Analytics.ErrorType.validateSkinningTransfer_FailedToExecute, nil, validationContext)
		return false,
			{
				string.format(
					"Failed to execute skinning transfer check for '%s'. Make sure the mesh exists and try again.",
					meshPart:GetFullName()
				),
			}
	end

	if next(jointsInfo) ~= nil then
		local jointNames = {}
		for name in jointsInfo do
			table.insert(jointNames, name)
		end
		local jointNamesStr = table.concat(jointNames, ", ")

		if ConstantsInterface.isBodyPart(assetTypeEnum) then
			Analytics.reportFailure(
				Analytics.ErrorType.validateSkinningTransfer_BodyPartsWithSpecialJoints,
				nil,
				validationContext
			)
			return false,
				{
					string.format(
						"Invalid joints [%s] found in body mesh '%s'. Please remove the joints and try again.",
						jointNamesStr,
						meshPart:GetFullName()
					),
				}
		end

		local wrap = meshPart:FindFirstChildOfClass("WrapLayer")
		assert(wrap, "MeshPart isn't a body part, so it must be an accessory with a WrapLayer")
		if wrap.AutoSkin ~= Enum.WrapLayerAutoSkin.EnabledOverride then
			Analytics.reportFailure(
				Analytics.ErrorType.validateSkinningTransfer_SkinningTransferOverride,
				nil,
				validationContext
			)
			return false,
				{
					string.format(
						"Skinning Transfer joints [%s] found in '%s'. WrapLayer.AutoSkin must be set to EnabledOverride when joints are present.",
						jointNamesStr,
						meshPart:GetFullName()
					),
				}
		end
	end

	for jointName, isFullyWeighted in jointsInfo do
		if not isFullyWeighted then
			Analytics.reportFailure(Analytics.ErrorType.validateSkinningTransfer_Weights, nil, validationContext)
			return false,
				{
					string.format(
						"Vert(s) in mesh '%s' are only partially weighted to joint %s. Vert(s) must be fully weighted to this joint.",
						meshPart:GetFullName(),
						jointName
					),
				}
		end
	end

	return true
end

return validateSkinningTransfer
