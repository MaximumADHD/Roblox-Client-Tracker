--[[
	returns a Types.MeshInfo for the passed in MeshPart
]]

local root = script.Parent.Parent

local Constants = require(root.Constants)

local Types = require(root.util.Types)
local getEditableMeshFromContext = require(root.util.getEditableMeshFromContext)

local getFFlagUGCValidationConsolidateGetMeshInfos = require(root.flags.getFFlagUGCValidationConsolidateGetMeshInfos)

local function getContent(instance: Instance, meshContentType: string): string?
	if meshContentType == Constants.MESH_CONTENT_TYPE.RENDER_MESH then
		assert(instance:IsA("MeshPart"), "Only MESH_TYPE.RENDER_MESH is only supported for MeshPart")
		return (instance :: MeshPart).MeshId
	elseif meshContentType == Constants.MESH_CONTENT_TYPE.OUTER_CAGE then
		assert(instance:IsA("BaseWrap"), "Only MESH_TYPE.OUTER_CAGE is only supported for BaseWrap")
		return (instance :: BaseWrap).CageMeshId
	elseif meshContentType == Constants.MESH_CONTENT_TYPE.INNER_CAGE then
		assert(instance:IsA("WrapLayer"), "Only MESH_TYPE.INNER_CAGE is only supported for WrapLayer")
		return (instance :: WrapLayer).ReferenceMeshId
	end

	error("No valid mesh content type was provided")
end

local function getMeshInfo(
	instance: Instance,
	meshContentType: string,
	validationContext: Types.ValidationContext
): (boolean, { string }?, Types.MeshInfo?)
	local contentId = getContent(instance, meshContentType)
	local fullName = instance:GetFullName()
	local fieldName = Constants.MESH_CONTENT_TYPE_TO_FIELD_NAME[meshContentType]
	local success, theEditableMesh = getEditableMeshFromContext(instance, fieldName, validationContext)
	if not success then
		return false,
			{
				string.format("Mesh for '%s' failed to load. Make sure the mesh exists and try again.", fullName),
			}
	end

	local meshInfo = {
		fullName = fullName,
		fieldName = fieldName,
		contentId = contentId,
		context = instance.ClassName,
		editableMesh = theEditableMesh,
	} :: Types.MeshInfo

	return true, nil, meshInfo
end

local function DEPRECATED_getMeshInfo(
	meshPart: MeshPart,
	validationContext: Types.ValidationContext
): (boolean, { string }?, Types.MeshInfo?)
	local meshPartFullName = meshPart:GetFullName()
	local success, theEditableMesh = getEditableMeshFromContext(meshPart, "MeshId", validationContext)
	if not success then
		return false,
			{
				string.format(
					"Mesh for '%s' failed to load. Make sure the mesh exists and try again.",
					meshPartFullName
				),
			}
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

return if getFFlagUGCValidationConsolidateGetMeshInfos() then getMeshInfo else DEPRECATED_getMeshInfo :: never
