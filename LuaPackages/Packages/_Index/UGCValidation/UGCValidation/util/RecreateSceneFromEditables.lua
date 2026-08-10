--[[
    This module creates a model that contains meshes with editable meshes to be exported in GLTF.
    It is possible to save a little time by not creating new meshparts for the render meshes, but then editable and normal meshparts will have different code paths.
        To use non-editable mesh, we will also have to setup a validation entrypoint in GLTF (as opposed to AAS), which gives gltf the datamodel

]]
local root = script.Parent.Parent
local Types = require(root.util.Types)
local AssetService = game:GetService("AssetService")
local getFFlagUGCValidationAddPBRToSharedData = require(root.flags.getFFlagUGCValidationAddPBRToSharedData)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local R15plusUtils = require(root.util.R15plusUtils)
local RigBuilder = require(root.util.RigBuilder)
local buildEmoteKeyframeSequenceFromCurveAnim = require(root.util.buildEmoteKeyframeSequenceFromCurveAnim)
local getEngineFeatureEngineUGCValidateEmoteAnimationExport =
	require(root.flags.getEngineFeatureEngineUGCValidateEmoteAnimationExport)
local getFFlagUGCValidationAddGeometryToExports = require(root.flags.getFFlagUGCValidationAddGeometryToExports)
local getFFlagUGCValidateAllowEmissives = require(root.flags.getFFlagUGCValidateAllowEmissives)

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
	editablePBRData: Types.EditableImageWithPBRData?
)
	-- Creates a new meshpart from the saved editable mesh, as our gltf upload path expects meshcontent to be editable
	-- Need to copy over attachment points and facs
	local newMeshPart = AssetService:CreateMeshPartAsync(Content.fromObject(meshData.editable))
	if getFFlagUGCValidationAddPBRToSharedData() then
		if editablePBRData and not editablePBRData.isPBR and editablePBRData.Texture then
			newMeshPart.TextureContent = Content.fromObject(editablePBRData.Texture.editable)
		elseif editablePBRData and editablePBRData.isPBR then
			local surfaceAppearance = Instance.new("SurfaceAppearance")
			if editablePBRData.ColorMap then
				surfaceAppearance.ColorMapContent = Content.fromObject(editablePBRData.ColorMap.editable)
			end
			if editablePBRData.MetalnessMap then
				surfaceAppearance.MetalnessMapContent = Content.fromObject(editablePBRData.MetalnessMap.editable)
			end
			if editablePBRData.NormalMap then
				surfaceAppearance.NormalMapContent = Content.fromObject(editablePBRData.NormalMap.editable)
			end
			if editablePBRData.RoughnessMap then
				surfaceAppearance.RoughnessMapContent = Content.fromObject(editablePBRData.RoughnessMap.editable)
			end
			if getFFlagUGCValidateAllowEmissives() then
				if editablePBRData.EmissiveMask then
					surfaceAppearance.EmissiveMaskContent = Content.fromObject(editablePBRData.EmissiveMask.editable)
				end
			end

			surfaceAppearance.Parent = newMeshPart
		end
	elseif editablePBRData then
		newMeshPart.TextureContent = Content.fromObject((editablePBRData :: any).editable)
	end

	newMeshPart.Name = originalMeshPart.Name
	newMeshPart.Size = originalMeshPart.Size
	newMeshPart.CFrame = originalMeshPart.CFrame

	for _, child in originalMeshPart:GetChildren() do
		if child:IsA("Attachment") or child:IsA("FaceControls") then
			if R15plusUtils.checkFlagEnabledForAllowHrd() and child:IsA("Bone") then
				continue
			end

			local childCopy = child:Clone() :: Instance
			childCopy.Parent = newMeshPart
		end
	end

	if R15plusUtils.checkFlagEnabledForAllowHrd() then
		-- This is all very hacky here. Once we move to VaaS, we won't be using this script anyways and new script exports bones.
		-- For now (just heads hopefully), we manually put all attachments back in base level because we cant export bones yet.

		local partBoneSchema = R15plusUtils.getAvatarBoneSchema(originalMeshPart.Name)
		local expectedAttachments = R15plusUtils.getNameWhitelistOfClassInSchema(partBoneSchema, "Attachment")
		for attName, val in expectedAttachments do
			if not val or newMeshPart:FindFirstChild(attName) ~= nil then
				continue
			end

			local existingAtt = (originalMeshPart:FindFirstChild(attName, true) :: any) :: Attachment?
			local desiredWorldCFrame
			if existingAtt ~= nil then
				desiredWorldCFrame = existingAtt.WorldCFrame
			else
				desiredWorldCFrame = newMeshPart.CFrame
			end

			local newAtt = Instance.new("Attachment")
			newAtt.Name = attName
			newAtt.Parent = newMeshPart
			newAtt.WorldCFrame = desiredWorldCFrame
		end
	end

	return newMeshPart
end

-- For R15+ emotes: create BoneInstances for animated joints that don't exist as
-- BaseParts in the model. Walks the Pose hierarchy; a Pose whose name matches an
-- existing BasePart is a standard R15 joint (recurse under it), otherwise it's an
-- R15+ joint and we create a Bone parented to the last known body part. The C++
-- exporter discovers these bones via visitDescendants and includes them in the export.
local function addBonesFromPoses(pose: Instance, lastBodyPart: Instance, exportScene: Model)
	for _, childPose in pose:GetChildren() do
		if childPose:IsA("Pose") then
			local jointName = childPose.Name
			local existingPart = exportScene:FindFirstChild(jointName)
			if existingPart and existingPart:IsA("BasePart") then
				addBonesFromPoses(childPose, existingPart, exportScene)
			else
				local bone = Instance.new("Bone")
				bone.Name = jointName
				bone.Parent = lastBodyPart
				addBonesFromPoses(childPose, bone, exportScene)
			end
		end
	end
end

local function createEmoteExportScene(sharedData: Types.SharedData): Model
	-- Use a default R15 character as the export scene directly. The visible
	-- MeshParts trigger the GltfExporter bone-creation path (hasSkinnedChildren).
	local exportScene = RigBuilder.createDefaultCharacter(false)

	-- Build KeyframeSequence from CurveAnimation (preserves full joint hierarchy).
	local keyframeSequence = nil
	if sharedData.curveAnimations and #sharedData.curveAnimations > 0 then
		keyframeSequence = buildEmoteKeyframeSequenceFromCurveAnim(sharedData.curveAnimations[1])
	end

	-- An emote upload is defined by its curve animation; a missing KeyframeSequence
	-- here means the upstream data is malformed. Fail fast rather than silently
	-- exporting an animation-less scene that fails confusingly downstream.
	if not keyframeSequence then
		error("Emote export requires a curve animation, but none was available")
	end

	keyframeSequence.Parent = exportScene

	local keyframes = keyframeSequence:GetChildren()
	local rootPart = exportScene:FindFirstChild("HumanoidRootPart")
	if #keyframes > 0 and rootPart and rootPart:IsA("BasePart") then
		addBonesFromPoses(keyframes[1], rootPart, exportScene)
	end

	exportScene:PivotTo(CFrame.new())
	return exportScene
end

function RecreateSceneFromEditables.createModelForGltfExport(sharedData: Types.SharedData)
	if
		getEngineFeatureEngineUGCValidateEmoteAnimationExport()
		and sharedData.uploadCategory == ValidationEnums.UploadCategory.EMOTE_ANIMATION
	then
		return createEmoteExportScene(sharedData)
	end

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

		if
			getFFlagUGCValidationAddGeometryToExports()
			and sharedData.uploadCategory == ValidationEnums.UploadCategory.FULL_BODY
		then
			sceneMeshPart.Name = `{meshName}_Geo`
		end
	end

	exportScene:PivotTo(CFrame.new())
	return exportScene
end

return RecreateSceneFromEditables
