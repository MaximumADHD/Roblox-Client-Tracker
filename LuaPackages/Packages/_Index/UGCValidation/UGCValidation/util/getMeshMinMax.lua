--!strict

--[[
	get the min and max bounds of the mesh
]]

local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local Types = require(root.util.Types)
local pcallDeferred = require(root.util.pcallDeferred)
local getFFlagUGCValidationShouldYield = require(root.flags.getFFlagUGCValidationShouldYield)

local getEngineFeatureUGCValidateEditableMeshAndImage =
	require(root.flags.getEngineFeatureUGCValidateEditableMeshAndImage)

local calculateMinMax = require(root.util.calculateMinMax)

local function getVerts(
	meshInfo: Types.MeshInfo,
	isServer: boolean?,
	validationContext: Types.ValidationContext
): (boolean, { string }?, any?)
	local success, verts
	if getEngineFeatureUGCValidateEditableMeshAndImage() and getFFlagUGCValidationShouldYield() then
		success, verts = pcallDeferred(function()
			return UGCValidationService:GetEditableMeshVerts(meshInfo.editableMesh :: EditableMesh)
		end, validationContext)
	else
		success, verts = pcall(function()
			return UGCValidationService:GetMeshVerts(meshInfo.contentId :: string)
		end)
	end

	if not success then
		local errorMsg = "Failed to read mesh: " .. meshInfo.fullName
		if isServer then
			-- there could be many reasons that an error occurred, the asset is not necessarilly incorrect, we just didn't get as
			-- far as testing it, so we throw an error which means the RCC will try testing the asset again, rather than returning false
			-- which would mean the asset failed validation
			error(errorMsg)
		end
		return false, { errorMsg }
	end
	return true, nil, verts
end

local function getBoundsInfo(verts: any, scale: Vector3?): (Vector3?, Vector3?)
	local min = nil
	local max = nil

	for _, vertPos in pairs(verts) do
		local scaledVert = if scale then vertPos * scale else vertPos
		min, max = calculateMinMax(min, max, scaledVert, scaledVert)
	end
	return min, max
end

local function getMeshMinMax(
	meshInfo: Types.MeshInfo,
	validationContext: Types.ValidationContext
): (boolean, { string }?, Vector3?, Vector3?)
	local isServer = validationContext.isServer
	local success, failureReasons, verts = getVerts(meshInfo, isServer, validationContext)
	if not success then
		return success, failureReasons
	end

	if not verts or 0 == #verts then
		return false, { "Mesh: " .. meshInfo.fullName .. " contains no verts" }
	end

	local meshMin, meshMax = getBoundsInfo(verts, meshInfo.scale)
	return true, nil, meshMin :: Vector3, meshMax :: Vector3
end

return getMeshMinMax
