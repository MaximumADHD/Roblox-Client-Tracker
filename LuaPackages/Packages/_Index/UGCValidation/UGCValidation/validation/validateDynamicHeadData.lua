--!nocheck

--nocheck is temporary as UGCValidationService:GetDynamicHeadMeshInactiveControls() is a new function

--[[
	validateDynamicHeadData.lua checks the head mesh for FACS data and controls
]]

local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local Analytics = require(root.Analytics)
local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)
local validateFacsJointBounds = require(root.validation.validateFacsJointBounds)

local getEngineFeatureEngineUGCValidateFACSJointTransformsWithinBounds =
	require(root.flags.getEngineFeatureEngineUGCValidateFACSJointTransformsWithinBounds)
local getFFlagUGCValidateMigrateDynamicHeadData = require(root.flags.getFFlagUGCValidateMigrateDynamicHeadData)
local UGCValidateFacialBoundsScale = game:DefineFastInt("UGCValidateFacialBoundsScale", 120) / 100
local UGCValidateFacialExpressivenessThreshold = game:DefineFastInt("UGCValidateFacialExpressivenessThreshold", 10)
	/ 100
local UGCValidateFacialExpressivenessMinVertDelta = game:DefineFastInt("UGCValidateFacialExpressivenessMinVertDelta", 2)
	/ 100
local getExpectedPartSize = require(root.util.getExpectedPartSize)
local Types = require(root.util.Types)
local pcallDeferred = require(root.util.pcallDeferred)
local getEditableMeshFromContext = require(root.util.getEditableMeshFromContext)

local getEngineFeatureEngineUGCValidateMinMaxMeshSizeAcrossAllFacs =
	require(root.flags.getEngineFeatureEngineUGCValidateMinMaxMeshSizeAcrossAllFacs)
local requiredActiveFACSControls = {
	"LeftEyeClosed",
	"EyesLookDown",
	"RightEyeClosed",
	"JawDrop",
	"Pucker",
	"LeftLipCornerPuller",
	"RightLipCornerPuller",
	"ChinRaiser",
	"ChinRaiserUpperLip",
	"LeftCheekRaiser",
	"RightCheekRaiser",
	"LeftInnerBrowRaiser",
	"RightInnerBrowRaiser",
	"LeftLipCornerDown",
	"RightLipCornerDown",
	"LeftLowerLipDepressor",
	"RightLowerLipDepressor",
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

	local success, result = pcallDeferred(function()
		local partSize = getExpectedPartSize(meshPartHead, validationContext)

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

	local success, result = pcallDeferred(function()
		local partSize = getExpectedPartSize(meshPartHead, validationContext)

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
	local isServer = validationContext.isServer

	if not getFFlagUGCValidateMigrateDynamicHeadData() then
		do
			local retrievedMeshData, testsPassed = pcall(function()
				local getEditableMeshSuccess, editableMesh =
					getEditableMeshFromContext(meshPartHead, "MeshId", validationContext)
				if not getEditableMeshSuccess then
					error("Failed to retrieve MeshContent")
				end
				return UGCValidationService:ValidateDynamicHeadEditableMesh(editableMesh)
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
	end

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	if not getFFlagUGCValidateMigrateDynamicHeadData() then
		local commandExecuted, missingControlsOrErrorMessage, inactiveControls = pcall(function()
			local getEditableMeshSuccess, editableMesh =
				getEditableMeshFromContext(meshPartHead, "MeshId", validationContext)
			if not getEditableMeshSuccess then
				error("Failed to retrieve MeshContent")
			end
			return UGCValidationService:GetDynamicHeadEditableMeshInactiveControls(
				editableMesh,
				requiredActiveFACSControls
			)
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

	-- validateFacialExpressiveness is intentionally dropped: superseded by the
	-- AQS-based HeadIsDynamic module in the new system.
	if not getFFlagUGCValidateMigrateDynamicHeadData() then
		reasonsAccumulator:updateReasons(validateFacialExpressiveness(meshPartHead, validationContext))
	end

	if not getEngineFeatureEngineUGCValidateMinMaxMeshSizeAcrossAllFacs() then
		-- moved to new system
		reasonsAccumulator:updateReasons(validateFacialBounds(meshPartHead, validationContext))
	end

	if not getFFlagUGCValidateMigrateDynamicHeadData() then
		if getEngineFeatureEngineUGCValidateFACSJointTransformsWithinBounds() then
			reasonsAccumulator:updateReasons(validateFacsJointBounds(meshPartHead, validationContext))
		end
	end

	Analytics.recordScriptTime(script.Name, startTime, validationContext)
	return reasonsAccumulator:getFinalResults()
end

return validateDynamicHeadData
