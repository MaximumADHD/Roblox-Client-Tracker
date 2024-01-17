--!strict

local root = script.Parent.Parent

local Types = require(root.util.Types)

local createIndividualBodyPartSchema = require(root.util.createIndividualBodyPartSchema)

local function createDynamicHeadMeshPartSchema(validationContext: Types.ValidationContext?)
	local headBodyPartSchema = createIndividualBodyPartSchema(Enum.AssetType.DynamicHead, "Head", validationContext)

	table.insert(headBodyPartSchema._children, {
		Name = { "FaceControls" },
		ClassName = "FaceControls",
	})
	return headBodyPartSchema
end

return createDynamicHeadMeshPartSchema
