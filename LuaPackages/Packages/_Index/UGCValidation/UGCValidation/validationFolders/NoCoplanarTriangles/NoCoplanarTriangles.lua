--[[
	NoCoplanarTriangles checks that no render meshes have too many coplanar
	intersecting triangles. Uses UGCValidationService to calculate triangle
	counts and detect coplanar intersections.
]]

local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local floatEquals = require(root.util.floatEquals)

local getFFlagUGCValidateMigrateSurfaceAppearanceMeshQuality =
	require(root.flags.getFFlagUGCValidateMigrateSurfaceAppearanceMeshQuality)
local getFIntMaxCoplanarIntersectionsPercentage = require(root.flags.getFIntMaxCoplanarIntersectionsPercentage)
local getFFlagUGCValidateCoplanarTriTestBody = require(root.flags.getFFlagUGCValidateCoplanarTriTestBody)

local NoCoplanarTriangles = {}

NoCoplanarTriangles.fflag = getFFlagUGCValidateMigrateSurfaceAppearanceMeshQuality

NoCoplanarTriangles.categories = {
	ValidationEnums.UploadCategory.TORSO_AND_LIMBS,
	ValidationEnums.UploadCategory.DYNAMIC_HEAD,
	ValidationEnums.UploadCategory.LAYERED_CLOTHING,
	ValidationEnums.UploadCategory.RIGID_ACCESSORY,
}

NoCoplanarTriangles.requiredData = {
	ValidationEnums.SharedDataMember.renderMeshesData,
}

NoCoplanarTriangles.expectedFailures = {}

NoCoplanarTriangles.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local uploadCategory = data.uploadCategory

	-- Legacy parity: for body parts (torso/limbs and dynamic head), the coplanar
	-- check is gated by its own flag. For accessories, it always runs.
	local isBodyPart = uploadCategory == ValidationEnums.UploadCategory.TORSO_AND_LIMBS
		or uploadCategory == ValidationEnums.UploadCategory.DYNAMIC_HEAD
	if isBodyPart then
		if not getFFlagUGCValidateCoplanarTriTestBody() then
			return
		end
	end

	for meshName, editableMeshData in data.renderMeshesData do
		local editableMesh = editableMeshData.editable
		local meshScale = editableMeshData.scale

		-- Skip degenerate (zero-extent) meshes. Legacy validateDescendantMeshMetrics.lua
		-- gated this check inside `if not floatEquals(meshSize.<axis>, 0)`; without the
		-- guard, a zero MeshSize axis turns scale into Inf/NaN and the engine call may
		-- fault or report a spurious failure. Upstream MeshBoundsValid catches the
		-- structural error; this guard preserves the legacy "decline to test" behavior.
		local meshSize = editableMeshData.originalSize
		if floatEquals(meshSize.X, 0) or floatEquals(meshSize.Y, 0) or floatEquals(meshSize.Z, 0) then
			continue
		end

		local triangleCount = UGCValidationService:GetEditableMeshTriCount(editableMesh)
		local maxAllowedIntersections = math.floor((getFIntMaxCoplanarIntersectionsPercentage() / 100) * triangleCount)

		local isOverLimit = UGCValidationService:IsEditableMeshNumCoplanarIntersectionsOverLimit(
			editableMesh,
			maxAllowedIntersections,
			meshScale,
			true
		)

		if isOverLimit then
			reporter:fail(ErrorSourceStrings.Keys.CoplanarTri_TooMany, {
				MeshName = meshName,
				MaxIntersections = tostring(maxAllowedIntersections),
				TriangleCount = tostring(triangleCount),
			})
		end
	end
end

return NoCoplanarTriangles :: Types.ValidationModule
