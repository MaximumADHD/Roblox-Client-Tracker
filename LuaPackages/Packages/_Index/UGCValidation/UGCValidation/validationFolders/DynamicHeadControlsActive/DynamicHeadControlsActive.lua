--[[
	DynamicHeadControlsActive validates that the required FACS controls exist and
	are active on the head mesh. Migrated from the
	GetDynamicHeadEditableMeshInactiveControls block of validateDynamicHeadData.lua.
]]

local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getFFlagUGCValidateMigrateDynamicHeadData = require(root.flags.getFFlagUGCValidateMigrateDynamicHeadData)

local REQUIRED_ACTIVE_FACS_CONTROLS = {
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

local DynamicHeadControlsActive = {}

DynamicHeadControlsActive.fflag = getFFlagUGCValidateMigrateDynamicHeadData
DynamicHeadControlsActive.categories = { ValidationEnums.UploadCategory.DYNAMIC_HEAD }
DynamicHeadControlsActive.prereqTests = { ValidationEnums.ValidationModule.DynamicHeadFacsPresent }
DynamicHeadControlsActive.requiredData = { ValidationEnums.SharedDataMember.renderMeshesData }
DynamicHeadControlsActive.expectedFailures = {}

DynamicHeadControlsActive.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local headMeshData = data.renderMeshesData["Head"]

	local commandExecuted, missingControlsOrErrorMessage, inactiveControls = pcall(function()
		return UGCValidationService:GetDynamicHeadEditableMeshInactiveControls(
			headMeshData.editable,
			REQUIRED_ACTIVE_FACS_CONTROLS
		)
	end)

	if not commandExecuted then
		local errorMessage = missingControlsOrErrorMessage
		if string.find(errorMessage, "Download Error") == 1 then
			reporter:fetchError(
				string.format(
					"Failed to load model for dynamic head '%s'. Make sure model exists and try again.",
					data.rootInstance.Name
				)
			)
		end
		assert(false, errorMessage)
	end

	local missingControls = missingControlsOrErrorMessage

	local meshId = (data.rootInstance :: MeshPart).MeshId

	if #missingControls > 0 then
		reporter:fail(ErrorSourceStrings.Keys.DynHead_ControlsMissing, {
			headName = data.rootInstance.Name,
			meshId = meshId,
			controlList = table.concat(missingControls, ", "),
		})
	end

	if #inactiveControls > 0 then
		reporter:fail(ErrorSourceStrings.Keys.DynHead_ControlsInactive, {
			headName = data.rootInstance.Name,
			meshId = meshId,
			controlList = table.concat(inactiveControls, ", "),
		})
	end
end

return DynamicHeadControlsActive :: Types.ValidationModule
