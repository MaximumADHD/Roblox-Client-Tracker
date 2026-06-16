local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getFIntUGCValidationVertexDensityThreshold = require(root.flags.getFIntUGCValidationVertexDensityThreshold)
local getFFlagUGCValidateMigrateMeshGeometry = require(root.flags.getFFlagUGCValidateMigrateMeshGeometry)

local VertexDensityBounded = {}

VertexDensityBounded.fflag = getFFlagUGCValidateMigrateMeshGeometry
VertexDensityBounded.categories = { ValidationEnums.UploadCategory.LAYERED_CLOTHING }
VertexDensityBounded.requiredData = { ValidationEnums.SharedDataMember.renderMeshesData }
VertexDensityBounded.expectedFailures = {}

VertexDensityBounded.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	for _meshPartName, editableData in data.renderMeshesData do
		local result =
			UGCValidationService:GetEditableMeshMaxNearbyVerticesCollisions(editableData.editable, editableData.scale)

		if result > getFIntUGCValidationVertexDensityThreshold() then
			reporter:fail(ErrorSourceStrings.Keys.MeshGeometry_VertexDensityExceeded, {})
		end
	end
end

return VertexDensityBounded :: Types.ValidationModule
