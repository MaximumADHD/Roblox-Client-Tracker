--[[
	FacsJointBoundsValid validates that FACS joint transforms stay within
	acceptable distance bounds. Migrated from validateFacsJointBounds.lua,
	called within validateDynamicHeadData.lua.
]]

local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getFFlagUGCValidateMigrateDynamicHeadData = require(root.flags.getFFlagUGCValidateMigrateDynamicHeadData)
local getFIntFacsJointMaximumDistRatioDirect = require(root.flags.getFIntFacsJointMaximumDistRatioDirect)
local getFIntFacsJointMaximumDistRatioAccumulated = require(root.flags.getFIntFacsJointMaximumDistRatioAccumulated)
local getEngineFeatureEngineUGCValidateFACSJointTransformsWithinBounds =
	require(root.flags.getEngineFeatureEngineUGCValidateFACSJointTransformsWithinBounds)

local FacsJointBoundsValid = {}

FacsJointBoundsValid.fflag = getFFlagUGCValidateMigrateDynamicHeadData
FacsJointBoundsValid.categories = { ValidationEnums.UploadCategory.DYNAMIC_HEAD }
FacsJointBoundsValid.prereqTests = { ValidationEnums.ValidationModule.DynamicHeadFacsPresent }
FacsJointBoundsValid.requiredData = { ValidationEnums.SharedDataMember.renderMeshesData }
FacsJointBoundsValid.expectedFailures = {}

FacsJointBoundsValid.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	-- This check is gated by an engine feature flag in the legacy system.
	-- Preserve that gate: if the engine feature is not available, skip.
	if not getEngineFeatureEngineUGCValidateFACSJointTransformsWithinBounds() then
		return
	end

	local headMeshData = data.renderMeshesData["Head"]

	local success, result = pcall(function()
		return UGCValidationService:GetMaximalJointDistancesWithinFacs(headMeshData.editable)
	end)

	if not success then
		reporter:fail(ErrorSourceStrings.Keys.DynHead_JointBoundsCheckFailed)
		return
	end

	local maxDirectDistRatio, actionName, maxAccumulatedDistRatio, jointName = unpack(result)
	if maxDirectDistRatio > (getFIntFacsJointMaximumDistRatioDirect() / 100) then
		reporter:fail(ErrorSourceStrings.Keys.DynHead_JointDirectExceeded, {
			actionName = actionName,
		})
	end

	if maxAccumulatedDistRatio > (getFIntFacsJointMaximumDistRatioAccumulated() / 100) then
		reporter:fail(ErrorSourceStrings.Keys.DynHead_JointAccumulatedExceeded, {
			jointName = jointName,
		})
	end
end

return FacsJointBoundsValid :: Types.ValidationModule
