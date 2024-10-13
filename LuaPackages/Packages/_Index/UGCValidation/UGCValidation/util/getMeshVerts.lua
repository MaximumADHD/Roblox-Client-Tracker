--!strict

--[[
	get the verts of a mesh
]]

local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local Types = require(root.util.Types)
local pcallDeferred = require(root.util.pcallDeferred)
local getFFlagUGCValidationShouldYield = require(root.flags.getFFlagUGCValidationShouldYield)

local getEngineFeatureUGCValidateEditableMeshAndImage =
	require(root.flags.getEngineFeatureUGCValidateEditableMeshAndImage)

local function getVerts(
	meshInfo: Types.MeshInfo,
	validationContext: Types.ValidationContext
): (boolean, { string }?, { Vector3 }?)
	local isServer = validationContext.isServer

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

return getVerts
