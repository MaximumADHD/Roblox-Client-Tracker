local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getFFlagUGCValidateMigrateCageGeometry = require(root.flags.getFFlagUGCValidateMigrateCageGeometry)
local getFIntUGCLCCageVerticesSimilarityMaximum = require(root.flags.getFIntUGCLCCageVerticesSimilarityMaximum)

local VerticesNotCoincident = {}

VerticesNotCoincident.fflag = getFFlagUGCValidateMigrateCageGeometry
VerticesNotCoincident.categories = { ValidationEnums.UploadCategory.LAYERED_CLOTHING }
VerticesNotCoincident.requiredData = {
	ValidationEnums.SharedDataMember.innerCagesData,
	ValidationEnums.SharedDataMember.outerCagesData,
}
VerticesNotCoincident.expectedFailures = {}

VerticesNotCoincident.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	-- Cages use unit scale (1,1,1) for the similarity check
	local unitScale = Vector3.new(1, 1, 1)
	local threshold = getFIntUGCLCCageVerticesSimilarityMaximum()

	-- Check both inner and outer cages for coincident vertices
	local allCages: { { name: string, data: Types.EditableCageData } } = {}
	for name, cageData in data.innerCagesData do
		table.insert(allCages, { name = name .. " (inner cage)", data = cageData })
	end
	for name, cageData in data.outerCagesData do
		table.insert(allCages, { name = name .. " (outer cage)", data = cageData })
	end

	for _, entry in allCages do
		local result = UGCValidationService:GetEditableMeshVerticesSimilarityRate(entry.data.editable, unitScale)

		local percentage = math.floor(result * 100)
		if percentage > threshold then
			reporter:fail(ErrorSourceStrings.Keys.VerticesNotCoincident_TooManySimilar, {
				cageName = entry.name,
				percentage = tostring(percentage),
				threshold = tostring(threshold),
			})
		end
	end
end

return VerticesNotCoincident :: Types.ValidationModule
