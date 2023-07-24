--!strict

local root = script.Parent.Parent

local createIndividualBodyPartSchema = require(root.util.createIndividualBodyPartSchema)

local function createDynamicHeadMeshPartSchema()
	local headBodyPartSchema = createIndividualBodyPartSchema(Enum.AssetType.DynamicHead, "Head")

	table.insert(headBodyPartSchema._children, {
		Name = { "FaceControls" },
		ClassName = "FaceControls",
	})
	return headBodyPartSchema
end

return createDynamicHeadMeshPartSchema
