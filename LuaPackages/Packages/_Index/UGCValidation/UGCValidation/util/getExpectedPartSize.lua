local root = script.Parent.Parent

local Types = require(root.util.Types)
local getEditableMeshFromContext = require(root.util.getEditableMeshFromContext)
local getMeshSize = require(root.util.getMeshSize)
local pcallDeferred = require(root.util.pcallDeferred)

return function(part: MeshPart, validationContext: Types.ValidationContext, meshSizeAsDefault: boolean?): Vector3
	if not validationContext.bypassFlags or not validationContext.bypassFlags.skipPhysicsDataReset then
		return if meshSizeAsDefault then part.MeshSize else part.Size
	end

	if not validationContext.partSizes then
		validationContext.partSizes = {}
	end

	if (validationContext.partSizes :: Types.PartSizes)[part] then
		return (validationContext.partSizes :: Types.PartSizes)[part]
	end

	local meshInfo = {
		fullName = part:GetFullName(),
		fieldName = "MeshId",
		contentId = part.MeshId,
		context = part.Name,
	} :: Types.MeshInfo

	local getEditableMeshSuccess, editableMesh = getEditableMeshFromContext(part, "MeshId", validationContext)
	if not getEditableMeshSuccess then
		return if meshSizeAsDefault then part.MeshSize else part.Size
	end

	meshInfo.editableMesh = editableMesh :: EditableMesh

	-- EditableMesh was created by UGC Validation and not via in-experience creation
	if (validationContext.editableMeshes :: Types.EditableMeshes)[part]["MeshId"].created then
		return if meshSizeAsDefault then part.MeshSize else part.Size
	end

	local meshSizeSuccess, meshSize = pcallDeferred(function()
		return getMeshSize(meshInfo)
	end, validationContext)
	if not meshSizeSuccess then
		return if meshSizeAsDefault then part.MeshSize else part.Size
	end

	(validationContext.partSizes :: Types.PartSizes)[part] = meshSize
	return meshSize
end
