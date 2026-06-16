--[[
	CageUVNoDuplicates checks that cage UVs do not have excessive duplicate
	UV coordinates that do not belong to the template reference set.

	Migrated from: src/validation/validateCageUVDuplicates.lua
	Called via: validateLCCageQuality -> validateCageUVDuplicates
]]

local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local WRAP_TARGET_CAGE_REFERENCE_VALUES = require(root.WrapTargetCageUVReferenceValues)

local getFFlagUGCValidateMigrateCageUV = require(root.flags.getFFlagUGCValidateMigrateCageUV)
local getFIntUGCValidateCageDuplicateUVThreshold = require(root.flags.getFIntUGCValidateCageDuplicateUVThreshold)

local CageUVNoDuplicates = {}

CageUVNoDuplicates.categories = {
	ValidationEnums.UploadCategory.LAYERED_CLOTHING,
}

CageUVNoDuplicates.requiredData = {
	ValidationEnums.SharedDataMember.innerCagesData,
	ValidationEnums.SharedDataMember.outerCagesData,
}

CageUVNoDuplicates.conditionalData = {}

CageUVNoDuplicates.fflag = getFFlagUGCValidateMigrateCageUV

CageUVNoDuplicates.expectedFailures = {}

CageUVNoDuplicates.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	-- Build the combined template UV values from all body parts
	local templateUVValues: { Vector2 } = {}
	for _, value in pairs(WRAP_TARGET_CAGE_REFERENCE_VALUES) do
		for _, uv in pairs(value) do
			table.insert(templateUVValues, uv)
		end
	end

	local function checkCage(cagesData: { [string]: Types.EditableCageData }, isInner: boolean)
		for partName, cageData in cagesData do
			local countUVNotInReference =
				UGCValidationService:ValidateEditableMeshUVDuplicates(templateUVValues, cageData.editable)

			if countUVNotInReference > getFIntUGCValidateCageDuplicateUVThreshold() then
				reporter:fail(ErrorSourceStrings.Keys.CageUV_ExtraDuplicateUVs, {
					count = tostring(countUVNotInReference),
					cageType = if isInner then "inner" else "outer",
					partName = partName,
				})
			end
		end
	end

	checkCage(data.innerCagesData, true)
	checkCage(data.outerCagesData, false)
end

return CageUVNoDuplicates :: Types.ValidationModule
