local root = script.Parent.Parent

local Types = require(root.util.Types)
local getEditableMeshFromContext = require(root.util.getEditableMeshFromContext)
local getMeshSize = require(root.util.getMeshSize)
local pcallDeferred = require(root.util.pcallDeferred)

local getFFlagUGCValidationShouldYield = require(root.flags.getFFlagUGCValidationShouldYield)
local getEngineFeatureUGCValidateEditableMeshAndImage =
	require(root.flags.getEngineFeatureUGCValidateEditableMeshAndImage)

return function(part: MeshPart, validationContext: Types.ValidationContext): Vector3
	if
		not getEngineFeatureUGCValidateEditableMeshAndImage()
		or not getFFlagUGCValidationShouldYield()
		or not validationContext.bypassFlags
		or not validationContext.bypassFlags.skipPhysicsDataReset
	then
		return part.Size
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
		return part.Size
	end

	meshInfo.editableMesh = editableMesh

	-- EditableMesh was created by UGC Validation and not via in-experience creation
	if (validationContext.editableMeshes :: Types.EditableMeshes)[part]["MeshId"].created then
		return part.Size
	end

	local meshSizeSuccess, meshSize = pcallDeferred(function()
		return getMeshSize(meshInfo)
	end, validationContext)
	if not meshSizeSuccess then
		return part.Size
	end

	(validationContext.partSizes :: Types.PartSizes)[part] = meshSize
	return meshSize
end
