--!strict
--[[
calculateAssetBounds:
	traverses through the hierarchy of each part of an asset type in order to determine the total bounds
calculateIndividualAssetPartsData:
	returns back a table of part names to their individual bounds data and cframe transform
		e.g { "LeftUpperArm" = { boundsData = {}, cframe = CFrame.new() }, "LeftLowerArm" = { boundsData = {}, cframe = CFrame.new() }, ... }
calculateFullBodyBounds:
	traverses through the hierarchy of each part of the full body in order to determine the total bounds
]]

local root = script.Parent.Parent
local Types = require(root.util.Types)
local ConstantsInterface = require(root.ConstantsInterface)
local AssetCalculator = require(root.util.AssetCalculator)
local getPartNamesInHierarchyOrder = require(root.util.getPartNamesInHierarchyOrder)
local getMeshMinMax = require(root.util.getMeshMinMax)
local getMeshVerts = require(root.util.getMeshVerts)
local getMeshInfo = require(root.util.getMeshInfo)
local BoundsDataUtils = require(root.util.BoundsDataUtils)
local getExpectedPartSize = require(root.util.getExpectedPartSize)

local getEngineFeatureUGCValidateEditableMeshAndImage =
	require(root.flags.getEngineFeatureUGCValidateEditableMeshAndImage)

local BoundsCalculator = {}

local function orientSingleAssetToWorldAxes(partsCFrames: { string: CFrame }, singleAsset: Enum.AssetType)
	if
		singleAsset ~= Enum.AssetType.LeftArm
		and singleAsset ~= Enum.AssetType.RightArm
		and singleAsset ~= Enum.AssetType.LeftLeg
		and singleAsset ~= Enum.AssetType.RightLeg
	then
		return
	end

	local localToAssetPartsCFrames = AssetCalculator.calculatePartsLocalToAsset(singleAsset, partsCFrames)
	for name, newCFrame in localToAssetPartsCFrames do
		partsCFrames[name] = newCFrame
	end
end

local function orientFullBodyArmsLegsToWorldAxes(partsCFrames: { string: CFrame }, findMeshHandle: (string) -> MeshPart)
	local function orientAndMoveParts(singleAsset: Enum.AssetType, parentPartName: string)
		orientSingleAssetToWorldAxes(partsCFrames, singleAsset)

		local partNames = getPartNamesInHierarchyOrder(singleAsset)
		local upperPart = findMeshHandle(partNames[1])

		local attachmentoParentName = ConstantsInterface.getRigAttachmentToParent(singleAsset, upperPart.Name)
		local attachmentInChild: Attachment? = upperPart:FindFirstChild(attachmentoParentName) :: Attachment
		assert(attachmentInChild)
		local rigAttachmentInChildCFrame = partsCFrames[upperPart.Name] * attachmentInChild.CFrame

		local parentPart = findMeshHandle(parentPartName)
		assert(parentPart)
		local attachmentInParent: Attachment? = parentPart:FindFirstChild(attachmentoParentName) :: Attachment
		assert(attachmentInParent)
		local rigAttachmentInParentCFrame = partsCFrames[parentPart.Name] * attachmentInParent.CFrame

		local fixUpVector = rigAttachmentInParentCFrame.Position - rigAttachmentInChildCFrame.Position

		for _, partName in partNames do
			partsCFrames[partName] = CFrame.new(partsCFrames[partName].Position + fixUpVector)
				* partsCFrames[partName].Rotation
		end
	end

	orientAndMoveParts(Enum.AssetType.LeftArm, "UpperTorso")
	orientAndMoveParts(Enum.AssetType.RightArm, "UpperTorso")
	orientAndMoveParts(Enum.AssetType.LeftLeg, "LowerTorso")
	orientAndMoveParts(Enum.AssetType.RightLeg, "LowerTorso")
end

local function calculateBoundsDataForPart(
	meshInfo: Types.MeshInfo,
	part: MeshPart,
	cframe: CFrame,
	validationContext: Types.ValidationContext
): (boolean, { string }?, Types.BoundsData?)
	local success, failureReasons, meshMinOpt, meshMaxOpt = getMeshMinMax(meshInfo, validationContext)
	if not success then
		return success, failureReasons
	end
	local meshBounds = (meshMaxOpt :: Vector3) - (meshMinOpt :: Vector3)
	local partSize = if getEngineFeatureUGCValidateEditableMeshAndImage()
		then getExpectedPartSize(part, validationContext)
		else part.Size
	local scale = partSize / meshBounds

	local vertsOpt
	success, failureReasons, vertsOpt = getMeshVerts(meshInfo, validationContext)
	if not success then
		return success, failureReasons
	end
	local verts = vertsOpt :: { Vector3 }

	local resultMinMaxBounds: Types.BoundsData = {}
	for _, vertPos in verts do
		BoundsDataUtils.expandMeshBounds(resultMinMaxBounds, cframe:PointToWorldSpace(vertPos * scale))
	end

	for _, attachName in ConstantsInterface.getAttachments(nil, part.Name) do
		local attach: Attachment? = part:FindFirstChild(attachName) :: Attachment
		assert(attach)

		local isRigAttachment = string.match(attach.Name, "RigAttachment$") ~= nil
		if not isRigAttachment then
			continue
		end
		local world = cframe * attach.CFrame
		BoundsDataUtils.expandRigAttachmentBounds(resultMinMaxBounds, world.Position)
	end

	BoundsDataUtils.setOverallBounds(resultMinMaxBounds)
	return true, nil, resultMinMaxBounds
end

local function calculateAllPartsBoundsData(
	partsCFrames: { string: CFrame },
	findMeshHandle: (string) -> MeshPart,
	validationContext: Types.ValidationContext
): (boolean, { string }?, { string: Types.BoundsData }?)
	local result = {}
	for meshPartName, cframe in partsCFrames do
		local meshPart = findMeshHandle(meshPartName :: string)
		local success, failureReasons, meshInfoOpt = getMeshInfo(meshPart, validationContext)
		if not success then
			return success, failureReasons
		end
		local meshInfo = meshInfoOpt :: Types.MeshInfo

		local partMinMaxBounds
		success, failureReasons, partMinMaxBounds =
			calculateBoundsDataForPart(meshInfo, meshPart, cframe :: CFrame, validationContext)
		if not success then
			return success, failureReasons
		end
		result[meshPartName :: string] = partMinMaxBounds :: Types.BoundsData
	end
	return true, nil, result
end

local function calculateTotalBoundsForAsset(
	partsCFrames: { string: CFrame },
	findMeshHandle: (string) -> MeshPart,
	validationContext: Types.ValidationContext
): (boolean, { string }?, Types.BoundsData?)
	local success, failureReasons, allPartsBoundsDataOpt =
		calculateAllPartsBoundsData(partsCFrames, findMeshHandle, validationContext)
	if not success then
		return success, failureReasons
	end
	local allPartsBoundsData = allPartsBoundsDataOpt :: { string: Types.BoundsData }

	local result: Types.BoundsData = {}
	for _, partMinMaxBounds in allPartsBoundsData do
		result = BoundsDataUtils.combineBounds(result, partMinMaxBounds :: Types.BoundsData)
	end
	return true, nil, result
end

local function calculatePartBounds(
	part: MeshPart,
	validationContext: Types.ValidationContext
): (boolean, { string }?, Types.BoundsData?)
	local partsCFrames = { [part.Name] = CFrame.new() }
	local function findMeshHandle(name: string): MeshPart
		assert(name == part.Name)
		return part
	end

	local success, failureReasons, resultOpt =
		calculateTotalBoundsForAsset(partsCFrames, findMeshHandle, validationContext)
	if not success then
		return success, failureReasons
	end
	return true, nil, resultOpt
end

-- validationContext must have assetTypeEnum set
function BoundsCalculator.calculateAssetBounds(
	inst: Instance,
	validationContext: Types.ValidationContext
): (boolean, { string }?, Types.BoundsData?)
	local singleAsset = validationContext.assetTypeEnum :: Enum.AssetType
	assert(singleAsset)

	if singleAsset == Enum.AssetType.DynamicHead then
		return calculatePartBounds(inst :: MeshPart, validationContext)
	end

	local partsCFrames = AssetCalculator.calculateAllTransformsForAsset(singleAsset, inst)
	orientSingleAssetToWorldAxes(partsCFrames, singleAsset)

	local function findMeshHandle(name: string): MeshPart
		return inst:FindFirstChild(name) :: MeshPart
	end

	local success, failureReasons, resultOpt =
		calculateTotalBoundsForAsset(partsCFrames, findMeshHandle, validationContext)
	if not success then
		return success, failureReasons
	end
	return true, nil, resultOpt
end

-- returns back a table of part names to their bounds data and cframe transform
-- e.g { "LeftUpperArm" = { boundsData = {}, cframe = CFrame.new() }, "LeftLowerArm" = { boundsData = {}, cframe = CFrame.new() }, ... }
function BoundsCalculator.calculateIndividualAssetPartsData(
	inst: Instance,
	validationContext: Types.ValidationContext
): (boolean, { string }?, { string: any }?)
	local singleAsset = validationContext.assetTypeEnum :: Enum.AssetType
	assert(singleAsset)

	local partsCFrames = AssetCalculator.calculateAllTransformsForAsset(singleAsset, inst)
	orientSingleAssetToWorldAxes(partsCFrames, singleAsset)

	local function findMeshHandle(name: string): MeshPart
		if singleAsset == Enum.AssetType.DynamicHead then
			return inst :: MeshPart
		end
		return inst:FindFirstChild(name) :: MeshPart
	end

	local success, failureReasons, allPartsBoundsDataOpt =
		calculateAllPartsBoundsData(partsCFrames, findMeshHandle, validationContext)
	if not success then
		return success, failureReasons
	end
	local allPartsBoundsData = allPartsBoundsDataOpt :: { string: Types.BoundsData }

	local result = {}
	for name, partMinMaxBounds in allPartsBoundsData do
		result[name] = { boundsData = partMinMaxBounds, cframe = partsCFrames[name] }
	end
	return true, nil, result
end

function BoundsCalculator.calculateFullBodyBounds(
	fullBodyAssets: Types.AllBodyParts,
	validationContext: Types.ValidationContext
): (boolean, { string }?, Types.BoundsData?)
	local function findMeshHandle(name: string): MeshPart
		return fullBodyAssets[name] :: MeshPart
	end

	local partsCFrames = AssetCalculator.calculateAllTransformsForFullBody(fullBodyAssets)
	orientFullBodyArmsLegsToWorldAxes(partsCFrames, findMeshHandle)
	local success, failureReasons, resultOpt =
		calculateTotalBoundsForAsset(partsCFrames, findMeshHandle, validationContext)
	if not success then
		return success, failureReasons
	end
	return true, nil, resultOpt
end

return BoundsCalculator
