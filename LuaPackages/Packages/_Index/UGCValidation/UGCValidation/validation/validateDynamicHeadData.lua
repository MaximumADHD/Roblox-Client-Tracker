--!nocheck

--nocheck is temporary as UGCValidationService:GetDynamicHeadMeshInactiveControls() is a new function

--[[
	validateDynamicHeadData.lua checks the head mesh for FACS data and controls
]]

local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local Analytics = require(root.Analytics)
local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)

local getEngineFeatureEngineUGCValidateBodyParts = require(root.flags.getEngineFeatureEngineUGCValidateBodyParts)
local getEngineFeatureUGCValidateGetInactiveControls =
	require(root.flags.getEngineFeatureUGCValidateGetInactiveControls)
local getEngineFeatureEngineEditableMeshAvatarPublish =
	require(root.flags.getEngineFeatureEngineEditableMeshAvatarPublish)
local UGCValidateFacialBoundsScale = game:DefineFastInt("UGCValidateFacialBoundsScale", 120) / 100
local UGCValidateFacialExpressivenessThreshold = game:DefineFastInt("UGCValidateFacialExpressivenessThreshold", 10)
	/ 100
local UGCValidateFacialExpressivenessMinVertDelta = game:DefineFastInt("UGCValidateFacialExpressivenessMinVertDelta", 2)
	/ 100
local getExpectedPartSize = require(root.util.getExpectedPartSize)
local Types = require(root.util.Types)
local pcallDeferred = require(root.util.pcallDeferred)
local getMeshIdForSkinningValidation = require(root.util.getMeshIdForSkinningValidation)
local getEditableMeshFromContext = require(root.util.getEditableMeshFromContext)

local requiredActiveFACSControls = {
	"LipsTogether",
	"Pucker",
	"LeftLipStretcher",
	"RightLipStretcher",
	"LeftLipCornerPuller",
	"RightLipCornerPuller",
	"LeftUpperLipRaiser",
	"RightUpperLipRaiser",
	"LeftLowerLipDepressor",
	"RightLowerLipDepressor",
	"JawDrop",
	"LeftEyeClosed",
	"RightEyeClosed",
	"EyesLookRight",
	"EyesLookLeft",
	"EyesLookUp",
	"EyesLookDown",
}

local function downloadFailure(
	isServer: boolean?,
	name: string?,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local errorMessage =
		string.format("Failed to load model for dynamic head '%s'. Make sure model exists and try again.", name)
	if isServer then
		-- ValidateDynamicHead() failed retriving mesh data, meaning the tests on the mesh couldn't proceed, therefore we throw an error here,
		-- which means that the validation of this asset will be run again, rather than returning false. This is because we can't conclusively
		-- say it failed. It's inconclusive as we couldn't even get the mesh data for unknown reason. This throwing of an error should only
		-- happen when validation is called from RCC
		error(errorMessage)
	end
	Analytics.reportFailure(
		Analytics.ErrorType.validateDynamicHeadMeshPartFormat_FailedToLoadMesh,
		nil,
		validationContext
	)
	return false, { errorMessage }
end

local MESH_DATA_LOAD_FAILED_STRING: string =
	"Failed to load mesh data for '%s'. Make sure the mesh exists and try again."
local VALIDATION_FAILED_STRING: string =
	"DynamicHead (%s) did not pass threshold (%f < %f) for percent change when emoting"

local function validateFacialBounds(
	meshPartHead: MeshPart,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local isServer = validationContext.isServer
	local allowEditableInstances = validationContext.allowEditableInstances

	local success, result = pcallDeferred(function()
		local partSize = getExpectedPartSize(meshPartHead, validationContext)

		if getEngineFeatureEngineEditableMeshAvatarPublish() then
			local getEditableMeshSuccess, editableMesh =
				getEditableMeshFromContext(meshPartHead, "MeshId", validationContext)
			if not getEditableMeshSuccess then
				error("Failed to retrieve MeshContent")
			end
			return UGCValidationService:ValidateEditableMeshFacialBounds(
				editableMesh,
				UGCValidateFacialBoundsScale,
				partSize
			)
		else
			local meshId = getMeshIdForSkinningValidation(meshPartHead, allowEditableInstances)
			return UGCValidationService:ValidateFacialBounds(meshId, UGCValidateFacialBoundsScale, partSize)
		end
	end, validationContext)

	if not success then
		local errorMessage = string.format(MESH_DATA_LOAD_FAILED_STRING, meshPartHead:GetFullName())
		if nil ~= isServer and isServer then
			error(errorMessage)
		end
		return false, { errorMessage }
	elseif not result then
		return false,
			{
				string.format(
					"DynamicHead (%s) when emoting surpasses the expected bounding box",
					meshPartHead:GetFullName()
				),
			}
	end

	return true
end

local function validateFacialExpressiveness(
	meshPartHead: MeshPart,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local isServer = validationContext.isServer
	local allowEditableInstances = validationContext.allowEditableInstances

	local success, result = pcallDeferred(function()
		local partSize = getExpectedPartSize(meshPartHead, validationContext)

		if getEngineFeatureEngineEditableMeshAvatarPublish() then
			local getEditableMeshSuccess, editableMesh =
				getEditableMeshFromContext(meshPartHead, "MeshId", validationContext)
			if not getEditableMeshSuccess then
				error("Failed to retrieve MeshContent")
			end
			return UGCValidationService:ValidateEditableMeshFacialExpressiveness(
				editableMesh,
				UGCValidateFacialExpressivenessMinVertDelta,
				partSize
			)
		else
			local meshId = getMeshIdForSkinningValidation(meshPartHead, allowEditableInstances)
			return UGCValidationService:ValidateFacialExpressiveness(
				meshId,
				UGCValidateFacialExpressivenessMinVertDelta,
				partSize
			)
		end
	end, validationContext)

	if not success then
		local errorMessage = string.format(MESH_DATA_LOAD_FAILED_STRING, meshPartHead:GetFullName())
		if nil ~= isServer and isServer then
			error(errorMessage)
		end
		return false, { errorMessage }
	elseif result < UGCValidateFacialExpressivenessThreshold then
		return false,
			{
				string.format(
					VALIDATION_FAILED_STRING,
					meshPartHead:GetFullName(),
					result,
					UGCValidateFacialExpressivenessThreshold
				),
			}
	end

	return true
end

local function validateDynamicHeadData(
	meshPartHead: MeshPart,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local startTime = tick()
	if not getEngineFeatureEngineUGCValidateBodyParts() then
		return true
	end

	local isServer = validationContext.isServer
	local allowEditableInstances = validationContext.allowEditableInstances

	do
		local retrievedMeshData, testsPassed = pcall(function()
			if getEngineFeatureEngineEditableMeshAvatarPublish() then
				local getEditableMeshSuccess, editableMesh =
					getEditableMeshFromContext(meshPartHead, "MeshId", validationContext)
				if not getEditableMeshSuccess then
					error("Failed to retrieve MeshContent")
				end
				return UGCValidationService:ValidateDynamicHeadEditableMesh(editableMesh)
			else
				return UGCValidationService:ValidateDynamicHeadMesh(
					getMeshIdForSkinningValidation(meshPartHead, allowEditableInstances)
				)
			end
		end)

		if not retrievedMeshData then
			return downloadFailure(isServer, meshPartHead.Name, validationContext)
		end

		if not testsPassed then
			Analytics.reportFailure(
				Analytics.ErrorType.validateDynamicHeadMeshPartFormat_ValidateDynamicHeadMesh,
				nil,
				validationContext
			)
			return false,
				{
					string.format(
						"Failed validation for dynamic head '%s' due to missing FACS information. You need to provide FACS controls for at least 17 poses (see documentation).",
						meshPartHead.Name
					),
				}
		end
	end

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	if getEngineFeatureUGCValidateGetInactiveControls() then
		local commandExecuted, missingControlsOrErrorMessage, inactiveControls = pcall(function()
			if getEngineFeatureEngineEditableMeshAvatarPublish() then
				local getEditableMeshSuccess, editableMesh =
					getEditableMeshFromContext(meshPartHead, "MeshId", validationContext)
				if not getEditableMeshSuccess then
					error("Failed to retrieve MeshContent")
				end
				return UGCValidationService:GetDynamicHeadEditableMeshInactiveControls(
					editableMesh,
					requiredActiveFACSControls
				)
			else
				return UGCValidationService:GetDynamicHeadMeshInactiveControls(
					getMeshIdForSkinningValidation(meshPartHead, allowEditableInstances),
					requiredActiveFACSControls
				)
			end
		end)

		if not commandExecuted then
			local errorMessage = missingControlsOrErrorMessage
			if string.find(errorMessage, "Download Error") == 1 then
				return downloadFailure(isServer, meshPartHead.Name, validationContext)
			end
			assert(false, errorMessage) --any other error to download error is a code problem
		end

		local missingControls = missingControlsOrErrorMessage

		local doAllControlsExist = #missingControls == 0
		local areAllControlsActive = #inactiveControls == 0
		if not doAllControlsExist or not areAllControlsActive then
			Analytics.reportFailure(
				Analytics.ErrorType.validateDynamicHeadMeshPartFormat_ValidateDynamicHeadMeshControls,
				nil,
				validationContext
			)

			reasonsAccumulator:updateReasons(doAllControlsExist, {
				`{meshPartHead.Name}.MeshId ({meshPartHead.MeshId}) is missing FACS controls: {table.concat(
					missingControls,
					", "
				)}`,
			})
			reasonsAccumulator:updateReasons(areAllControlsActive, {
				`{meshPartHead.Name}.MeshId ({meshPartHead.MeshId}) has inactive FACS controls: {table.concat(
					inactiveControls,
					", "
				)}`,
			})
		end
	end

	reasonsAccumulator:updateReasons(validateFacialExpressiveness(meshPartHead, validationContext))

	reasonsAccumulator:updateReasons(validateFacialBounds(meshPartHead, validationContext))

	Analytics.recordScriptTime(script.Name, startTime, validationContext)
	return reasonsAccumulator:getFinalResults()
end

return validateDynamicHeadData
