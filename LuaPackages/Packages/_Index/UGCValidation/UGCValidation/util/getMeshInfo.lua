--!strict

--[[
	returns a Types.MeshInfo for the passed in MeshPart
]]

local root = script.Parent.Parent

local Types = require(root.util.Types)
local getEditableMeshFromContext = require(root.util.getEditableMeshFromContext)

local getEngineFeatureUGCValidateEditableMeshAndImage =
	require(root.flags.getEngineFeatureUGCValidateEditableMeshAndImage)

local function getMeshInfo(
	meshPart: MeshPart,
	validationContext: Types.ValidationContext
): (boolean, { string }?, Types.MeshInfo?)
	local meshPartFullName = meshPart:GetFullName()
	local theEditableMesh

	if getEngineFeatureUGCValidateEditableMeshAndImage() then
		local success
		success, theEditableMesh = getEditableMeshFromContext(meshPart, "MeshId", validationContext)
		if not success then
			return false,
				{
					string.format(
						"Mesh for '%s' failed to load. Make sure the mesh exists and try again.",
						meshPartFullName
					),
				}
		end
	end

	local meshInfo = {
		fullName = meshPartFullName,
		fieldName = "MeshId",
		contentId = meshPart.MeshId,
		context = meshPart.ClassName,
		editableMesh = theEditableMesh,
	} :: Types.MeshInfo

	return true, nil, meshInfo
end

return getMeshInfo
