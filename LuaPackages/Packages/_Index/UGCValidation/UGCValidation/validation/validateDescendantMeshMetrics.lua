--!strict

--[[
	validateDescendantMeshMetrics.lua checks the meshes in all descendant Instance properties to ensur they do conform to triangle/vertex count specifications
]]

local root = script.Parent.Parent

local Constants = require(root.Constants)

local validateMeshTriangles = require(root.validation.validateMeshTriangles)
local validateOverlappingVertices = require(root.validation.validateOverlappingVertices)
local validateCageVertices = require(root.validation.validateCageVertices)
local validateFullBodyCageDeletion = require(root.validation.validateFullBodyCageDeletion)
local validateMeshVertColors = require(root.validation.validateMeshVertColors)

local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)
local ParseContentIds = require(root.util.ParseContentIds)

local getFFlagUGCValidateBodyPartsExtendedMeshTests = require(root.flags.getFFlagUGCValidateBodyPartsExtendedMeshTests)

local function validateDescendantMeshMetrics(rootInstance: Instance): (boolean, { string }?)
	local reasonsAccumulator = FailureReasonsAccumulator.new()

	local meshesMap = ParseContentIds.parse(rootInstance, Constants.MESH_CONTENT_ID_FIELDS)

	for meshId, data in pairs(meshesMap) do
		local errorString = string.format("%s.%s ( %s )", data.instance:GetFullName(), data.fieldName, meshId)

		if data.instance.ClassName == "MeshPart" then
			-- earlier code means we wouldn't get this far if the MeshPart was incorrectly named
			local maxTriangleCount =
				assert(Constants.RENDER_MESH_MAX_TRIANGLES[data.instance.Name], "Incorrectly named MeshPart")
			if
				not reasonsAccumulator:updateReasons(
					validateMeshTriangles(data.instance[data.fieldName], maxTriangleCount)
				)
			then
				return reasonsAccumulator:getFinalResults()
			end

			if not reasonsAccumulator:updateReasons(validateMeshVertColors(data.instance[data.fieldName])) then
				return reasonsAccumulator:getFinalResults()
			end
		elseif data.instance.ClassName == "WrapTarget" then
			if getFFlagUGCValidateBodyPartsExtendedMeshTests() then
				if
					not reasonsAccumulator:updateReasons(
						validateFullBodyCageDeletion(data.instance[data.fieldName], errorString)
					)
				then
					return reasonsAccumulator:getFinalResults()
				end
			end

			if
				not reasonsAccumulator:updateReasons(
					validateCageVertices(data.instance[data.fieldName], data.instance :: WrapTarget, data.fieldName)
				)
			then
				return reasonsAccumulator:getFinalResults()
			end
		end

		if getFFlagUGCValidateBodyPartsExtendedMeshTests() then
			if
				not reasonsAccumulator:updateReasons(
					validateOverlappingVertices(data.instance[data.fieldName], errorString)
				)
			then
				return reasonsAccumulator:getFinalResults()
			end
		end
	end

	return reasonsAccumulator:getFinalResults()
end

return validateDescendantMeshMetrics
