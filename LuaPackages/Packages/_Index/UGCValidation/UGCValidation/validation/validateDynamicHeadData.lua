--!nocheck

--nocheck is temporary as UGCValidationService:GetDynamicHeadMeshInactiveControls() is a new function

--[[
	validateDynamicHeadData.lua checks the head mesh for FACS data and controls
]]

local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local Analytics = require(root.Analytics)

local getEngineFeatureEngineUGCValidateBodyParts = require(root.flags.getEngineFeatureEngineUGCValidateBodyParts)
local getEngineFeatureUGCValidateGetInactiveControls =
	require(root.flags.getEngineFeatureUGCValidateGetInactiveControls)

local getFFlagUGCValidateTestInactiveControls = require(root.flags.getFFlagUGCValidateTestInactiveControls)

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

local function validateDynamicHeadData(meshPartHead: MeshPart, isServer: boolean?): (boolean, { string }?)
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

	if getEngineFeatureUGCValidateGetInactiveControls() and getFFlagUGCValidateTestInactiveControls() then
		local commandExecuted, inactiveControls = pcall(function()
			return UGCValidationService:GetDynamicHeadMeshInactiveControls(
				meshPartHead.MeshId,
				requiredActiveFACSControls
			)
		end)

		if not commandExecuted then
			if string.find(inactiveControls, "Download Error") == 1 then
				return downloadFailure(isServer)
			end
			assert(false, inactiveControls) --any other error to download error is a code problem
		end

		if #inactiveControls > 0 then
			Analytics.reportFailure(
				Analytics.ErrorType.validateDynamicHeadMeshPartFormat_ValidateDynamicHeadMeshControls
			)
			return false,
				{
					`{meshPartHead.Name}.MeshId ({meshPartHead.MeshId}) is missing FACS controls: {table.concat(inactiveControls, ", ")}`,
				}
		end
	end

	return true
end

return validateDynamicHeadData
