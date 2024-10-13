--!strict
--[[
calculateAssetCFrame:
	calculate the cframe for the asset, where the y vector of the matrix for the asset is calculated from the top to the bottom of the asset
calculateAllTransformsForAsset:
	calculate the cframes for all parts of the asset
calculateAllTransformsForFullBody:
	calculate the cframes for all parts of the full body
calculatePartsLocalToAsset:
	calculate the cframes for the upper part, lower part, and hand/foot in the local space of the asset cframe
]]

local root = script.Parent.Parent
local ConstantsInterface = require(root.ConstantsInterface)

local Types = require(root.util.Types)
local canBeNormalized = require(root.util.canBeNormalized)
local getPartNamesInHierarchyOrder = require(root.util.getPartNamesInHierarchyOrder)
local AssetTraversalUtils = require(root.util.AssetTraversalUtils)

local fullBodyAssetHierarchy = {
	root = "LowerTorso",
	children = {
		UpperTorso = {
			children = {
				Head = AssetTraversalUtils.assetHierarchy[Enum.AssetType.DynamicHead],
				LeftUpperArm = AssetTraversalUtils.assetHierarchy[Enum.AssetType.LeftArm],
				RightUpperArm = AssetTraversalUtils.assetHierarchy[Enum.AssetType.RightArm],
			},
		},
		LeftUpperLeg = AssetTraversalUtils.assetHierarchy[Enum.AssetType.LeftLeg],
		RightUpperLeg = AssetTraversalUtils.assetHierarchy[Enum.AssetType.RightLeg],
	},
}

local AssetCalculator = {}

-- calculate the cframe for the asset, where the y vector of the matrix for the asset is calculated from the top to the bottom of the asset
local function calculateAssetCFrame(top: Vector3, bottom: Vector3): CFrame?
	local yVector = top - bottom

	if not canBeNormalized(yVector) then
		return -- error, upper arm and lower arm are in the same location
	end

	yVector = yVector.Unit

	local xVector = yVector:Cross(Vector3.zAxis).Unit
	if not canBeNormalized(xVector) then -- asset is pointing along the world z axis
		local crossWith = if yVector.Z < 0 then Vector3.yAxis else -Vector3.yAxis
		xVector = yVector:Cross(crossWith).Unit
	end
	local zVector = xVector:Cross(yVector).Unit

	return CFrame.fromMatrix(top, xVector, yVector, zVector)
end

local function calculatePartTransformInHierarchy(
	meshHandle: MeshPart,
	parentName: string?,
	parentCFrame: CFrame,
	findMeshHandle: (string) -> MeshPart
)
	local cframe = parentCFrame
	if parentName then
		local parentMeshHandle = findMeshHandle(parentName :: string)
		assert(parentMeshHandle)

		local rigAttachmentName = ConstantsInterface.getRigAttachmentToParent(nil, meshHandle.Name)
		local parentAttachment: Attachment? = parentMeshHandle:FindFirstChild(rigAttachmentName) :: Attachment
		assert(parentAttachment)
		local attachment: Attachment? = meshHandle:FindFirstChild(rigAttachmentName) :: Attachment
		assert(attachment)

		cframe = (cframe * (parentAttachment :: Attachment).CFrame) * (attachment :: Attachment).CFrame:Inverse()
	else
		cframe = CFrame.new()
	end
	return cframe
end

local function calculateHierarchyTransforms(mainDetails: any, findMeshHandle: (string) -> MeshPart): { string: CFrame }
	local results = {}

	local function calculateAllTransformsInternal(name: string, parentName: string?, details: any, parentCFrame: CFrame)
		local meshHandle = findMeshHandle(name)
		assert(meshHandle)

		local cframe = calculatePartTransformInHierarchy(meshHandle, parentName, parentCFrame, findMeshHandle)
		results[meshHandle.Name] = cframe

		if not details.children then
			return
		end
		for childName, childDetails in details.children do
			calculateAllTransformsInternal(childName, name, childDetails, cframe)
		end
	end

	calculateAllTransformsInternal(mainDetails.root, nil, mainDetails, CFrame.new())
	return results
end

-- return 'to' in the local space of 'from'
local function calculateLocalSpaceTransform(from: CFrame, to: CFrame): CFrame
	local toInLocalRotationSpaceOfFrom = from.Rotation:Inverse() * to.Rotation
	local toInLocalPositionSpaceOfFrom = from.Rotation:Inverse() * (to.Position - from.Position)

	return CFrame.new(toInLocalPositionSpaceOfFrom) * toInLocalRotationSpaceOfFrom
end

local function calculateAssetCFrameFromPartsCFrames(
	singleAsset: Enum.AssetType,
	partsCFrames: { string: CFrame }
): CFrame?
	local partNamesHierarchyOrder = getPartNamesInHierarchyOrder(singleAsset)
	local top = partsCFrames[partNamesHierarchyOrder[1]].Position
	local bottom = partsCFrames[partNamesHierarchyOrder[3]].Position

	return calculateAssetCFrame(top, bottom)
end

function AssetCalculator.calculateAssetCFrame(singleAsset: Enum.AssetType, inst: Instance): CFrame?
	local partsCFrames = AssetCalculator.calculateAllTransformsForAsset(singleAsset, inst)
	if Enum.AssetType.DynamicHead == singleAsset then
		return partsCFrames["Head"]
	elseif Enum.AssetType.Torso == singleAsset then
		return partsCFrames["LowerTorso"]
	end

	return calculateAssetCFrameFromPartsCFrames(singleAsset, partsCFrames)
end

function AssetCalculator.calculateAllTransformsForAsset(singleAsset: Enum.AssetType, inst: Instance): { string: CFrame }
	if Enum.AssetType.DynamicHead == singleAsset then
		return { ["Head" :: string] = CFrame.new() }
	end

	local function findMeshHandle(name: string): MeshPart
		return inst:FindFirstChild(name) :: MeshPart
	end

	return calculateHierarchyTransforms(AssetTraversalUtils.assetHierarchy[singleAsset], findMeshHandle)
end

function AssetCalculator.calculateAllTransformsForFullBody(fullBodyAssets: Types.AllBodyParts): { string: CFrame }
	local function findMeshHandle(name: string): MeshPart
		return fullBodyAssets[name] :: MeshPart
	end

	return calculateHierarchyTransforms(fullBodyAssetHierarchy, findMeshHandle)
end

function AssetCalculator.calculatePartsLocalToAsset(
	singleAsset: Enum.AssetType,
	partsCFrames: { string: CFrame }
): { string: CFrame }
	assert(
		singleAsset == Enum.AssetType.LeftArm
			or singleAsset == Enum.AssetType.RightArm
			or singleAsset == Enum.AssetType.LeftLeg
			or singleAsset == Enum.AssetType.RightLeg
	)

	local assetCFrameOpt = calculateAssetCFrameFromPartsCFrames(singleAsset, partsCFrames)
	local result = {}
	for _, partName in getPartNamesInHierarchyOrder(singleAsset) do
		result[partName] = if assetCFrameOpt
			then calculateLocalSpaceTransform(assetCFrameOpt :: CFrame, partsCFrames[partName])
			else partsCFrames[partName]
	end
	return result
end

return AssetCalculator
