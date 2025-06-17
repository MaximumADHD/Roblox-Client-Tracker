--[[
	validateMeshComparison.lua compares the extents of two meshes to see if they are close in size to each other
]]

local root = script.Parent.Parent

local Types = require(root.util.Types)
local Analytics = require(root.Analytics)

local ParseContentIds = require(root.util.ParseContentIds)
local getMeshMinMax = require(root.util.getMeshMinMax)

local getFFlagFixValidateMeshComparisonErrorFormat = require(root.flags.getFFlagFixValidateMeshComparisonErrorFormat)

local function formatError(mesh: Types.MeshInfo, otherMesh: Types.MeshInfo, maxDiff: number)
	local function getContext(data: Types.MeshInfo)
		if getFFlagFixValidateMeshComparisonErrorFormat() then
			return data.fullName .. "." .. data.fieldName
		else
			local result = (data.context and (data.context .. " mesh ") or "mesh ")
			result = result .. ParseContentIds.tryGetAssetIdFromContentId(data.contentId :: string)
			return result
		end
	end

	local context = getContext(mesh)
	local otherContext = getContext(otherMesh)

	return string.format(
		"%s is more than max difference %.2f in size compared to the other mesh %s. You need to edit the model to adjust its size",
		context,
		maxDiff,
		otherContext
	)
end

local function validateMeshComparison(
	mesh: Types.MeshInfo,
	otherMesh: Types.MeshInfo,
	maxDiff: number,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local success, failureReasons, meshMinOpt, meshMaxOpt = getMeshMinMax(mesh, validationContext)
	if not success then
		return success, failureReasons
	end
	local meshMin = meshMinOpt :: Vector3
	local meshMax = meshMaxOpt :: Vector3

	local successOther, failureReasonsOther, meshMinOptOther, meshMaxOptOther =
		getMeshMinMax(otherMesh, validationContext)
	if not successOther then
		return successOther, failureReasonsOther
	end
	local otherMeshMin = meshMinOptOther :: Vector3
	local otherMeshMax = meshMaxOptOther :: Vector3

	if (meshMin - otherMeshMin).Magnitude > maxDiff or (meshMax - otherMeshMax).Magnitude > maxDiff then
		Analytics.reportFailure(Analytics.ErrorType.validateMeshComparison, nil, validationContext)
		return false, { formatError(mesh, otherMesh, maxDiff) }
	end
	return true
end

return validateMeshComparison
