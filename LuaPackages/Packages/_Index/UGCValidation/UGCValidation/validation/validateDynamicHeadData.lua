--!nocheck

--nocheck is temporary as UGCValidationService:GetDynamicHeadMeshInactiveControls() is a new function

--[[
	validateDynamicHeadData.lua checks the head mesh for FACS data and controls
]]

local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local Analytics = require(root.Analytics)
local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)

local getFFlagUseUGCValidationContext = require(root.flags.getFFlagUseUGCValidationContext)
local getEngineFeatureEngineUGCValidateBodyParts = require(root.flags.getEngineFeatureEngineUGCValidateBodyParts)
local getEngineFeatureUGCValidateGetInactiveControls =
	require(root.flags.getEngineFeatureUGCValidateGetInactiveControls)
local getFFlagUGCValidateTestInactiveControls = require(root.flags.getFFlagUGCValidateTestInactiveControls)

local EngineFeatureGCValidateCompareTextureOverlap = game:GetEngineFeature("UGCValidateCompareTextureOverlap")
local getEngineFeatureViewportFrameSnapshotEngineFeature =
	require(root.flags.getEngineFeatureViewportFrameSnapshotEngineFeature)
local UGCValidateFacsDataOperationalThreshold = game:DefineFastInt("UGCValidateFacsDataOperationalThreshold", 200)
	* 1e-3
local setupDynamicHead = require(root.util.setupDynamicHead)
local Thumbnailer = require(root.util.Thumbnailer)
local Types = require(root.util.Types)

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

local function downloadFailure(isServer: boolean?): (boolean, { string }?)
	local errorMessage = "Failed to retrieve mesh data to validate dynamic head"
	if isServer then
		-- ValidateDynamicHead() failed retriving mesh data, meaning the tests on the mesh couldn't proceed, therefore we throw an error here,
		-- which means that the validation of this asset will be run again, rather than returning false. This is because we can't conclusively
		-- say it failed. It's inconclusive as we couldn't even get the mesh data for unknown reason. This throwing of an error should only
		-- happen when validation is called from RCC
		error(errorMessage)
	end
	Analytics.reportFailure(Analytics.ErrorType.validateDynamicHeadMeshPartFormat_FailedToLoadMesh)
	return false, { errorMessage }
end

local CAPTURE_ERROR_STRING: string = "Unable to capture snapshot of DynamicHead (%s)"
local READ_ERROR_STRING: string = "Failed to read data from snapshot of DynamicHead (%s)"
local VALIDATION_FAILED_STRING: string =
	"DynamicHead (%s) did not pass threshold (%f < %f) for percent change when emoting"

local CAMERA_FOV: number = 1
local IMAGE_SIZE: number = 100
local THRESHOLD: number = UGCValidateFacsDataOperationalThreshold
local FILL: number = 1
local DIRECTION: Vector3 = Vector3.new(0, 0, -1)

local function checkFACSDataOperational(head: MeshPart, isServer: boolean): (boolean, { string }?)
	if not isServer and not getEngineFeatureViewportFrameSnapshotEngineFeature() then
		return true
	end

	local headClone = head:Clone()
	local body = setupDynamicHead(headClone)
	if not body then
		return false, { string.format("Unable to setup body for DynamicHead (%s)", head.MeshId) }
	end

	local thumbnailer = Thumbnailer.new(isServer, CAMERA_FOV, Vector2.new(IMAGE_SIZE, IMAGE_SIZE))
	thumbnailer:init(headClone)

	thumbnailer:setCamera(FILL, math.max(headClone.Size.X, headClone.Size.Y), DIRECTION)

	local success1, img1 = thumbnailer:takeSnapshot()

	local faceControls = (headClone :: Instance):FindFirstChild("FaceControls")
	if not faceControls then
		thumbnailer:cleanup()
		return false, { "No FaceControls founds" }
	end
	for _, pose in requiredActiveFACSControls do
		(faceControls :: any)[pose] = 1
	end

	local success2, img2 = thumbnailer:takeSnapshot()

	if not success1 or not success2 then
		local errorMsg = string.format(CAPTURE_ERROR_STRING, head.MeshId)
		if isServer then
			error(errorMsg)
		end
		return false, { errorMsg }
	end

	local success, result

	if isServer then
		success, result = pcall(function()
			return UGCValidationService:CompareTextureOverlapByteString(img1, img2)
		end)
	else
		success, result = pcall(function()
			return UGCValidationService:CompareTextureOverlapTextureId(img1, img2)
		end)
	end

	thumbnailer:cleanup()
	if not success or #result < 2 then
		local errorMsg = string.format(READ_ERROR_STRING, head.MeshId)
		if isServer then
			error(errorMsg)
		else
			return false, { errorMsg }
		end
	end

	local fraction = result[1] / result[2]
	if fraction < THRESHOLD then
		return false, { string.format(VALIDATION_FAILED_STRING, head.MeshId, fraction, THRESHOLD) }
	end
	return true
end

local function validateDynamicHeadData(
	meshPartHead: MeshPart,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	if not getEngineFeatureEngineUGCValidateBodyParts() then
		return true
	end

	local isServer = validationContext.isServer
	local skipSnapshot = if validationContext.bypassFlags then validationContext.bypassFlags.skipSnapshot else false

	do
		local retrievedMeshData, testsPassed = pcall(function()
			return UGCValidationService:ValidateDynamicHeadMesh(meshPartHead.MeshId)
		end)

		if not retrievedMeshData then
			return downloadFailure(isServer)
		end

		if not testsPassed then
			Analytics.reportFailure(Analytics.ErrorType.validateDynamicHeadMeshPartFormat_ValidateDynamicHeadMesh)
			return false,
				{
					`{meshPartHead.Name}.MeshId ({meshPartHead.MeshId}) is not correctly set-up to be a dynamic head mesh as it has no FACS information`,
				}
		end
	end

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	if getEngineFeatureUGCValidateGetInactiveControls() and getFFlagUGCValidateTestInactiveControls() then
		local commandExecuted, missingControlsOrErrorMessage, inactiveControls = pcall(function()
			return UGCValidationService:GetDynamicHeadMeshInactiveControls(
				meshPartHead.MeshId,
				requiredActiveFACSControls
			)
		end)

		if not commandExecuted then
			local errorMessage = missingControlsOrErrorMessage
			if string.find(errorMessage, "Download Error") == 1 then
				return downloadFailure(isServer)
			end
			assert(false, errorMessage) --any other error to download error is a code problem
		end

		local missingControls = missingControlsOrErrorMessage

		local doAllControlsExist = #missingControls == 0
		local areAllControlsActive = #inactiveControls == 0
		if not doAllControlsExist or not areAllControlsActive then
			Analytics.reportFailure(
				Analytics.ErrorType.validateDynamicHeadMeshPartFormat_ValidateDynamicHeadMeshControls
			)

			reasonsAccumulator:updateReasons(doAllControlsExist, {
				`{meshPartHead.Name}.MeshId ({meshPartHead.MeshId}) is missing FACS controls: {table.concat(missingControls, ", ")}`,
			})
			reasonsAccumulator:updateReasons(areAllControlsActive, {
				`{meshPartHead.Name}.MeshId ({meshPartHead.MeshId}) has inactive FACS controls: {table.concat(inactiveControls, ", ")}`,
			})
		end
	end

	if EngineFeatureGCValidateCompareTextureOverlap and not skipSnapshot then
		local succ, errorMessage = checkFACSDataOperational(meshPartHead, isServer)
		reasonsAccumulator:updateReasons(succ, errorMessage)
	end

	return reasonsAccumulator:getFinalResults()
end

local function DEPRECATED_validateDynamicHeadData(
	meshPartHead: MeshPart,
	isServer: boolean?,
	skipSnapshot: boolean?
): (boolean, { string }?)
	if not getEngineFeatureEngineUGCValidateBodyParts() then
		return true
	end

	do
		local retrievedMeshData, testsPassed = pcall(function()
			return UGCValidationService:ValidateDynamicHeadMesh(meshPartHead.MeshId)
		end)

		if not retrievedMeshData then
			return downloadFailure(isServer)
		end

		if not testsPassed then
			Analytics.reportFailure(Analytics.ErrorType.validateDynamicHeadMeshPartFormat_ValidateDynamicHeadMesh)
			return false,
				{
					`{meshPartHead.Name}.MeshId ({meshPartHead.MeshId}) is not correctly set-up to be a dynamic head mesh as it has no FACS information`,
				}
		end
	end

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	if getEngineFeatureUGCValidateGetInactiveControls() and getFFlagUGCValidateTestInactiveControls() then
		local commandExecuted, missingControlsOrErrorMessage, inactiveControls = pcall(function()
			return UGCValidationService:GetDynamicHeadMeshInactiveControls(
				meshPartHead.MeshId,
				requiredActiveFACSControls
			)
		end)

		if not commandExecuted then
			local errorMessage = missingControlsOrErrorMessage
			if string.find(errorMessage, "Download Error") == 1 then
				return downloadFailure(isServer)
			end
			assert(false, errorMessage) --any other error to download error is a code problem
		end

		local missingControls = missingControlsOrErrorMessage

		local doAllControlsExist = #missingControls == 0
		local areAllControlsActive = #inactiveControls == 0
		if not doAllControlsExist or not areAllControlsActive then
			Analytics.reportFailure(
				Analytics.ErrorType.validateDynamicHeadMeshPartFormat_ValidateDynamicHeadMeshControls
			)

			reasonsAccumulator:updateReasons(doAllControlsExist, {
				`{meshPartHead.Name}.MeshId ({meshPartHead.MeshId}) is missing FACS controls: {table.concat(missingControls, ", ")}`,
			})
			reasonsAccumulator:updateReasons(areAllControlsActive, {
				`{meshPartHead.Name}.MeshId ({meshPartHead.MeshId}) has inactive FACS controls: {table.concat(inactiveControls, ", ")}`,
			})
		end
	end

	if EngineFeatureGCValidateCompareTextureOverlap and not skipSnapshot then
		local succ, errorMessage = checkFACSDataOperational(meshPartHead, isServer)
		reasonsAccumulator:updateReasons(succ, errorMessage)
	end

	return reasonsAccumulator:getFinalResults()
end

return if getFFlagUseUGCValidationContext()
	then validateDynamicHeadData
	else DEPRECATED_validateDynamicHeadData :: never
