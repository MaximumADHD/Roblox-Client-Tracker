--[[
	DynamicHeadFacsPresent validates that the head mesh contains valid FACS
	format data (at least 17 poses required). Migrated from the first block of
	validateDynamicHeadData.lua (the ValidateDynamicHeadEditableMesh call).
]]

local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getFFlagUGCValidateMigrateDynamicHeadData = require(root.flags.getFFlagUGCValidateMigrateDynamicHeadData)

local DynamicHeadFacsPresent = {}

DynamicHeadFacsPresent.fflag = getFFlagUGCValidateMigrateDynamicHeadData
DynamicHeadFacsPresent.categories = { ValidationEnums.UploadCategory.DYNAMIC_HEAD }
DynamicHeadFacsPresent.requiredData = { ValidationEnums.SharedDataMember.renderMeshesData }
DynamicHeadFacsPresent.expectedFailures = {}

DynamicHeadFacsPresent.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local headMeshData = data.renderMeshesData["Head"]

	local retrievedMeshData, testsPassed = pcall(function()
		return UGCValidationService:ValidateDynamicHeadEditableMesh(headMeshData.editable)
	end)

	if not retrievedMeshData then
		reporter:fetchError(
			string.format(
				"Failed to load model for dynamic head '%s'. Make sure model exists and try again.",
				data.rootInstance.Name
			)
		)
	end

	if not testsPassed then
		reporter:fail(ErrorSourceStrings.Keys.DynHead_FacsMissing, {
			headName = data.rootInstance.Name,
		})
	end
end

return DynamicHeadFacsPresent :: Types.ValidationModule
