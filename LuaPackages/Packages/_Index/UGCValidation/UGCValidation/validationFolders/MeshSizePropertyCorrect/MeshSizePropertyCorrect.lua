local root = script.Parent.Parent.Parent

local Constants = require(root.Constants)
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local floatEquals = require(root.util.floatEquals)
local getMeshSize = require(root.util.getMeshSize)
local getEditableMeshFromContext = require(root.util.getEditableMeshFromContext)

local getFFlagUGCValidateMigrateBodyPartBounds = require(root.flags.getFFlagUGCValidateMigrateBodyPartBounds)

local MeshSizePropertyCorrect = {}

MeshSizePropertyCorrect.categories = {
	ValidationEnums.UploadCategory.TORSO_AND_LIMBS,
	ValidationEnums.UploadCategory.DYNAMIC_HEAD,
}
MeshSizePropertyCorrect.requiredData = {
	ValidationEnums.SharedDataMember.rootInstance,
	ValidationEnums.SharedDataMember.uploadEnum,
	ValidationEnums.SharedDataMember.consumerConfig,
}
MeshSizePropertyCorrect.conditionalData = {
	ValidationEnums.SharedDataMember.renderMeshesData,
}
MeshSizePropertyCorrect.fflag = getFFlagUGCValidateMigrateBodyPartBounds
MeshSizePropertyCorrect.expectedFailures = {}

local function vector3Equals(v1: Vector3, v2: Vector3): boolean
	local tol = 0.00001
	return floatEquals(v1.X, v2.X, tol) and floatEquals(v1.Y, v2.Y, tol) and floatEquals(v1.Z, v2.Z, tol)
end

local function validateSingleMeshPart(theMeshPart: MeshPart, validationContext: any, reporter: Types.ValidationReporter)
	local meshInfo = {
		fullName = theMeshPart:GetFullName(),
		fieldName = "MeshId",
		contentId = theMeshPart.MeshId,
		context = theMeshPart.Name,
	} :: Types.MeshInfo

	local getEditableMeshSuccess, editableMesh = getEditableMeshFromContext(theMeshPart, "MeshId", validationContext)
	if not getEditableMeshSuccess then
		reporter:fail(ErrorSourceStrings.Keys.MeshSize_LoadFailed, { meshName = theMeshPart.Name }, theMeshPart)
		return
	end

	meshInfo.editableMesh = editableMesh :: EditableMesh

	local meshSize = getMeshSize(meshInfo)

	if not vector3Equals(theMeshPart.MeshSize, meshSize) then
		reporter:fail(ErrorSourceStrings.Keys.MeshSize_Mismatch, { meshName = theMeshPart.Name }, theMeshPart)
	end
end

MeshSizePropertyCorrect.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local instance = data.rootInstance
	local assetTypeEnum = data.uploadEnum.assetType
	local consumerEnv = data.consumerConfig.consumerEnv
	local isServer = consumerEnv == ValidationEnums.ConsumerEnv.Backend

	if consumerEnv == ValidationEnums.ConsumerEnv.IEC then
		return
	end

	-- Build editableMeshes table from renderMeshesData for legacy util compatibility
	local editableMeshes: { [Instance]: { [string]: { instance: EditableMesh, created: boolean } } } = {}
	if (data :: any).renderMeshesData then
		local allInstances = instance:GetDescendants()
		table.insert(allInstances, instance)
		for _, inst in allInstances do
			local meshData = (data :: any).renderMeshesData[inst.Name]
			if meshData and meshData.editable then
				editableMeshes[inst] = { MeshId = { instance = meshData.editable, created = false } }
			end
		end
	end

	local validationContext = {
		assetTypeEnum = assetTypeEnum,
		isServer = isServer,
		editableMeshes = editableMeshes,
	} :: any

	if Enum.AssetType.DynamicHead == assetTypeEnum then
		validateSingleMeshPart(instance :: MeshPart, validationContext, reporter)
	else
		local assetInfo = Constants.ASSET_TYPE_INFO[assetTypeEnum]
		if not assetInfo then
			return
		end
		for subPartName in pairs(assetInfo.subParts) do
			local theMeshPart: MeshPart? = instance:FindFirstChild(subPartName) :: MeshPart
			if not theMeshPart then
				continue
			end
			validateSingleMeshPart(theMeshPart :: MeshPart, validationContext, reporter)
		end
	end
end

return MeshSizePropertyCorrect :: Types.ValidationModule
