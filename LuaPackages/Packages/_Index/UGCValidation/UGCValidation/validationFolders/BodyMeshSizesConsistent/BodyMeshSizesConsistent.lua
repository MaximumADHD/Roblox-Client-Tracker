local root = script.Parent.Parent.Parent

local Constants = require(root.Constants)
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local getMeshMinMax = require(root.util.getMeshMinMax)
local getMeshSize = require(root.util.getMeshSize)
local getEditableMeshFromContext = require(root.util.getEditableMeshFromContext)
local getExpectedPartSize = require(root.util.getExpectedPartSize)
local getMeshInfo = require(root.util.getMeshInfo)

local getFFlagUGCValidateMigrateBodyPartBounds = require(root.flags.getFFlagUGCValidateMigrateBodyPartBounds)

local BodyMeshSizesConsistent = {}

BodyMeshSizesConsistent.categories = {
	ValidationEnums.UploadCategory.TORSO_AND_LIMBS,
	ValidationEnums.UploadCategory.DYNAMIC_HEAD,
}
BodyMeshSizesConsistent.requiredData = {
	ValidationEnums.SharedDataMember.rootInstance,
	ValidationEnums.SharedDataMember.uploadEnum,
	ValidationEnums.SharedDataMember.consumerConfig,
}
BodyMeshSizesConsistent.conditionalData = {
	ValidationEnums.SharedDataMember.renderMeshesData,
	ValidationEnums.SharedDataMember.outerCagesData,
}
BodyMeshSizesConsistent.fflag = getFFlagUGCValidateMigrateBodyPartBounds
BodyMeshSizesConsistent.expectedFailures = {}

local function calculateMeshSizeForPart(meshHandle: MeshPart, validationContext: any): (boolean, Vector3?)
	local meshInfo = {
		fullName = meshHandle:GetFullName(),
		fieldName = "MeshId",
		contentId = meshHandle.MeshId,
		context = meshHandle.Name,
	} :: Types.MeshInfo

	local getEditableMeshSuccess, editableMesh = getEditableMeshFromContext(meshHandle, "MeshId", validationContext)
	if not getEditableMeshSuccess then
		return false, nil
	end

	meshInfo.editableMesh = editableMesh :: EditableMesh

	local meshSize = getMeshSize(meshInfo)
	return true, meshSize
end

local function validateWrapTargetComparison(
	meshScale: Vector3,
	meshHandle: MeshPart,
	validationContext: any,
	reporter: Types.ValidationReporter
)
	local getMeshInfoSuccess, _, meshInfo =
		getMeshInfo(meshHandle, Constants.MESH_CONTENT_TYPE.RENDER_MESH, validationContext)
	if not getMeshInfoSuccess then
		reporter:fail(ErrorSourceStrings.Keys.BodyMesh_LoadFailed, { meshName = meshHandle:GetFullName() }, meshHandle)
		return
	end

	local wrapTarget = meshHandle:FindFirstChildWhichIsA("WrapTarget")
	if not wrapTarget then
		return
	end

	local getOtherSuccess, _, wrapMeshInfo =
		getMeshInfo(wrapTarget, Constants.MESH_CONTENT_TYPE.OUTER_CAGE, validationContext)
	if not getOtherSuccess then
		reporter:fail(ErrorSourceStrings.Keys.BodyMesh_LoadFailed, { meshName = wrapTarget:GetFullName() }, meshHandle)
		return
	end

	local renderMeshInfo = meshInfo :: Types.MeshInfo
	local wrapMeshInfoTyped = wrapMeshInfo :: Types.MeshInfo
	renderMeshInfo.scale = meshScale
	wrapMeshInfoTyped.scale = meshScale

	local maxDiff = Constants.RenderVsWrapMeshMaxDiff

	local success, _, meshMin, meshMax = getMeshMinMax(renderMeshInfo, validationContext)
	if not success then
		reporter:fetchError("Failed to read mesh: " .. renderMeshInfo.fullName)
		return
	end

	local successOther, _, otherMin, otherMax = getMeshMinMax(wrapMeshInfoTyped, validationContext)
	if not successOther then
		reporter:fetchError("Failed to read mesh: " .. wrapMeshInfoTyped.fullName)
		return
	end

	local meshMinVec = meshMin :: Vector3
	local meshMaxVec = meshMax :: Vector3
	local otherMinVec = otherMin :: Vector3
	local otherMaxVec = otherMax :: Vector3

	if (meshMinVec - otherMinVec).Magnitude > maxDiff or (meshMaxVec - otherMaxVec).Magnitude > maxDiff then
		local meshContext = renderMeshInfo.fullName .. "." .. renderMeshInfo.fieldName
		local otherContext = wrapMeshInfoTyped.fullName .. "." .. wrapMeshInfoTyped.fieldName
		reporter:fail(ErrorSourceStrings.Keys.BodyMesh_SizeMismatch, {
			meshContext = meshContext,
			maxDiff = string.format("%.2f", maxDiff),
			otherMeshContext = otherContext,
		}, meshHandle)
	end
end

BodyMeshSizesConsistent.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local instance = data.rootInstance
	local assetTypeEnum = data.uploadEnum.assetType
	local consumerEnv = data.consumerConfig.consumerEnv
	local isServer = consumerEnv == ValidationEnums.ConsumerEnv.Backend

	-- Build editableMeshes table from renderMeshesData + outerCagesData for legacy util compatibility
	local editableMeshes: { [Instance]: { [string]: { instance: EditableMesh, created: boolean } } } = {}
	if (data :: any).renderMeshesData then
		local allInstances = instance:GetDescendants()
		table.insert(allInstances, instance)
		for _, inst in allInstances do
			local meshData = (data :: any).renderMeshesData[inst.Name]
			if meshData and meshData.editable then
				editableMeshes[inst] = {
					MeshId = { instance = meshData.editable, created = meshData.createdInValidation },
				}
			end
		end
	end
	if (data :: any).outerCagesData then
		local allInstances = instance:GetDescendants()
		table.insert(allInstances, instance)
		for _, inst in allInstances do
			-- outerCagesData is keyed by the parent MeshPart name, but the editable
			-- belongs to the WrapTarget child. Map each WrapTarget to its cage mesh.
			if inst:IsA("BaseWrap") and inst.Parent then
				local cageData = (data :: any).outerCagesData[inst.Parent.Name]
				if cageData and cageData.editable then
					editableMeshes[inst] = {
						CageMeshId = { instance = cageData.editable, created = cageData.createdInValidation },
					}
				end
			end
		end
	end

	local validationContext = {
		assetTypeEnum = assetTypeEnum,
		isServer = isServer,
		editableMeshes = editableMeshes,
		bypassFlags = { skipPhysicsDataReset = true },
	} :: any

	local function validateSingleMeshPart(meshHandle: MeshPart)
		local success, meshSize = calculateMeshSizeForPart(meshHandle, validationContext)
		if not success or not meshSize then
			reporter:fail(ErrorSourceStrings.Keys.BodyMesh_LoadFailed, {
				meshName = meshHandle:GetFullName(),
			}, meshHandle)
			return
		end

		local meshScale = getExpectedPartSize(meshHandle, validationContext) / meshSize

		validateWrapTargetComparison(meshScale, meshHandle, validationContext, reporter)
	end

	local assetInfo = Constants.ASSET_TYPE_INFO[assetTypeEnum]
	if Enum.AssetType.DynamicHead == assetTypeEnum then
		validateSingleMeshPart(instance :: MeshPart)
	else
		if not assetInfo then
			return
		end
		for subPartName in pairs(assetInfo.subParts) do
			local meshHandle: MeshPart? = instance:FindFirstChild(subPartName) :: MeshPart
			if not meshHandle then
				continue
			end
			validateSingleMeshPart(meshHandle :: MeshPart)
		end
	end
end

return BodyMeshSizesConsistent :: Types.ValidationModule
