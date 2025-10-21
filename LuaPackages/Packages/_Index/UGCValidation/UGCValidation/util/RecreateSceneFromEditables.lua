--[[
    This module creates a model that contains meshes with editable meshes to be exported in GLTF.
    It is possible to save a little time by not creating new meshparts for the render meshes, but then editable and normal meshparts will have different code paths.
        To use non-editable mesh, we will also have to setup a validation entrypoint in GLTF (as opposed to AAS), which gives gltf the datamodel

]]
local root = script.Parent.Parent
local Types = require(root.util.Types)
local AssetService = game:GetService("AssetService")

local RecreateSceneFromEditables = {}

local function createCagePart(
	renderPart: MeshPart,
	meshData: Types.EditableMeshData,
	cageData: Types.EditableCageData,
	nameSuffix: string
)
	local cagePart = AssetService:CreateMeshPartAsync(Content.fromObject(cageData.editable))
	cagePart.Name = `{renderPart}_{nameSuffix}`
	cagePart.Size = cagePart.Size * meshData.scale
	local scaledOrigin = CFrame.new(cageData.origin.Position * meshData.scale) * cageData.origin.Rotation
	cagePart.CFrame = renderPart.CFrame * scaledOrigin
	return cagePart
end

local function copyMeshPart(
	originalMeshPart: MeshPart,
	meshData: Types.EditableMeshData,
	editableImage: Types.EditableImageData?
)
	-- Creates a new meshpart from the saved editable mesh, as our gltf upload path expects meshcontent to be editable
	-- Need to copy over attachment points and facs
	local newMeshPart = AssetService:CreateMeshPartAsync(Content.fromObject(meshData.editable))
	if editableImage then
		newMeshPart.TextureContent = Content.fromObject(editableImage.editable)
	end

	newMeshPart.Name = originalMeshPart.Name
	newMeshPart.Size = originalMeshPart.Size
	newMeshPart.CFrame = originalMeshPart.CFrame

	for _, child in originalMeshPart:GetChildren() do
		if child:IsA("Attachment") or child:IsA("FaceControls") then
			local childCopy = child:Clone() :: Instance
			childCopy.Parent = newMeshPart
		end
	end

	return newMeshPart
end

function RecreateSceneFromEditables.createModelForGltfExport(sharedData: Types.SharedData)
	local exportScene = Instance.new("Model")
	local objects: { Instance } = sharedData.rootInstance:GetDescendants()
	table.insert(objects, sharedData.rootInstance)
	for _, obj in objects do
		if not obj:IsA("MeshPart") then
			continue
		end

		local meshName = obj.Name
		local renderMeshData = sharedData.renderMeshesData[meshName]
		if not renderMeshData then
			error("Missing editable data")
		end

		local renderTextureData = sharedData.meshTextures[meshName]
		local sceneMeshPart = copyMeshPart(obj, renderMeshData, renderTextureData)
		sceneMeshPart.Parent = exportScene

		local outerCageData = sharedData.outerCagesData[meshName]
		if outerCageData then
			local cageMesh = createCagePart(sceneMeshPart, renderMeshData, outerCageData, "OuterCage")
			cageMesh.Parent = exportScene
		end

		local innerCageData = sharedData.innerCagesData[meshName]
		if innerCageData then
			local cageMesh = createCagePart(sceneMeshPart, renderMeshData, innerCageData, "InnerCage")
			cageMesh.Parent = exportScene
		end
	end

	exportScene:PivotTo(CFrame.new())
	return exportScene
end

return RecreateSceneFromEditables
