--[[
	FacsJointCountBounded fails a dynamic head whose mesh has more bones than
	UGCValidateFacsJointCountMaximum allows.
]]

local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getFFlagUGCValidateFacsJointCountBounded = require(root.flags.getFFlagUGCValidateFacsJointCountBounded)
local getFIntUGCValidateFacsJointCountMaximum = require(root.flags.getFIntUGCValidateFacsJointCountMaximum)

local FacsJointCountBounded = {}

FacsJointCountBounded.categories = { ValidationEnums.UploadCategory.DYNAMIC_HEAD }
FacsJointCountBounded.requiredData = { ValidationEnums.SharedDataMember.renderMeshesData }

FacsJointCountBounded.fflag = getFFlagUGCValidateFacsJointCountBounded

FacsJointCountBounded.expectedFailures = { "Asset_EF_DynamicHeadExcessiveFacs" }

FacsJointCountBounded.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local headEditableMesh = data.renderMeshesData["Head"].editable

	local numFacsJoints = #headEditableMesh:GetBones()
	local maxFacsJoints = getFIntUGCValidateFacsJointCountMaximum()

	if numFacsJoints > maxFacsJoints then
		reporter:fail(ErrorSourceStrings.Keys.FacsJointCountBounded, {
			maxFacsJointCount = string.format("%d", maxFacsJoints),
			actualJointCount = string.format("%d", numFacsJoints),
		})
	end
end

return FacsJointCountBounded :: Types.ValidationModule
