--[[
calculateAssetBounds:
	traverses through the hierarchy of each part of an asset type in order to determine the total bounds
calculateIndividualAssetPartsData:
	returns back a table of part names to their individual bounds data and cframe transform
		e.g { "LeftUpperArm" = { boundsData = {}, cframe = CFrame.new() }, "LeftLowerArm" = { boundsData = {}, cframe = CFrame.new() }, ... }
calculateIndividualFullBodyPartsData:
	returns back a table of part names to their individual bounds data and cframe transform
		e.g { "LeftUpperArm" = { boundsData = {}, cframe = CFrame.new() }, "LeftLowerArm" = { boundsData = {}, cframe = CFrame.new() }, ... }
calculateFullBodyBounds:
	traverses through the hierarchy of each part of the full body in order to determine the total bounds
]]

local root = script.Parent.Parent
local Constants = require(root.Constants)
local Types = require(root.util.Types)
local ConstantsInterface = require(root.ConstantsInterface)
local AssetCalculator = require(root.util.AssetCalculator)
local getPartNamesInHierarchyOrder = require(root.util.getPartNamesInHierarchyOrder)
local getMeshMinMax = require(root.util.getMeshMinMax)
local getMeshVerts = require(root.util.getMeshVerts)
local getMeshInfo = require(root.util.getMeshInfo)
local BoundsDataUtils = require(root.util.BoundsDataUtils)
local getExpectedPartSize = require(root.util.getExpectedPartSize)

local getFFlagUGCValidateCalculateScaleToValidateBounds =
	require(root.flags.getFFlagUGCValidateCalculateScaleToValidateBounds)
local getFFlagUGCValidateUseMeshSizeProperty = require(root.flags.getFFlagUGCValidateUseMeshSizeProperty)
local getFFlagUGCValidateUseDataCache = require(root.flags.getFFlagUGCValidateUseDataCache)
local getFFlagUGCValidationConsolidateGetMeshInfos = require(root.flags.getFFlagUGCValidationConsolidateGetMeshInfos)

local BoundsCalculator = {}

local function orientSingleAssetToWorldAxes(
	partsCFrames: { string: CFrame },
	singleAsset: Enum.AssetType,
	findMeshHandle: (string) -> MeshPart
)
	if
		singleAsset ~= Enum.AssetType.LeftArm
		and singleAsset ~= Enum.AssetType.RightArm
		and singleAsset ~= Enum.AssetType.LeftLeg
		and singleAsset ~= Enum.AssetType.RightLeg
	then
		return
	end

	local results = AssetCalculator.calculateStraightenedLimb(singleAsset, partsCFrames, findMeshHandle)

	for name, newCFrame in results do
		partsCFrames[name] = newCFrame
	end
end

local function orientFullBodyArmsLegsToWorldAxes(partsCFrames: { string: CFrame }, findMeshHandle: (string) -> MeshPart)
	local function orientAndMoveParts(singleAsset: Enum.AssetType, parentPartName: string)
		orientSingleAssetToWorldAxes(partsCFrames, singleAsset, findMeshHandle)

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
	meshInfo: Types.MeshInfo?,
	part: MeshPart,
	cframe: CFrame,
	validationContext: Types.ValidationContext,
	dataCache: Types.DataCache?
): (boolean, { string }?, Types.BoundsData?)
	if getFFlagUGCValidateUseDataCache() then
		assert((meshInfo ~= nil) ~= (dataCache ~= nil)) --exclusive or, meshInfo or dataCache, not both, not neither
	end

	local meshBounds = nil
	if getFFlagUGCValidateUseMeshSizeProperty() then
		meshBounds = part.MeshSize
	else
		if getFFlagUGCValidateUseDataCache() then
			if dataCache then
				if dataCache.meshData and dataCache.meshData[part.MeshId] then
					local meshMinOpt = dataCache.meshData[part.MeshId].meshMin
					local meshMaxOpt = dataCache.meshData[part.MeshId].meshMax
					if meshMinOpt and meshMaxOpt then
						meshBounds = (meshMaxOpt :: Vector3) - (meshMinOpt :: Vector3)
					end
				end
				if not meshBounds then
					return false, { "Mesh bounds not found in data cache" }
				end
			end
		end

		if not getFFlagUGCValidateUseDataCache() or not meshBounds then
			local success, failureReasons, meshMinOpt, meshMaxOpt =
				getMeshMinMax(meshInfo :: Types.MeshInfo, validationContext)
			if not success then
				return success, failureReasons
			end
			meshBounds = (meshMaxOpt :: Vector3) - (meshMinOpt :: Vector3)
		end
	end
	local partSize = getExpectedPartSize(part, validationContext)
	local scale = partSize / meshBounds

	local verts = nil
	if getFFlagUGCValidateUseDataCache() then
		if dataCache then
			if dataCache.meshData and dataCache.meshData[part.MeshId] then
				local vertsOpt = dataCache.meshData[part.MeshId].verts
				if vertsOpt then
					verts = vertsOpt :: { Vector3 }
				end
			end
			if not verts then
				return false, { "Verts not found in data cache" }
			end
		end
	end
	if not getFFlagUGCValidateUseDataCache() or not verts then
		local success, failureReasons, vertsOpt = getMeshVerts(meshInfo :: Types.MeshInfo, validationContext)
		if not success then
			return success, failureReasons
		end
		verts = vertsOpt :: { Vector3 }
	end

	local resultMinMaxBounds: Types.BoundsData = {}
	for _, vertPos in verts do
		BoundsDataUtils.expandMeshBounds(resultMinMaxBounds, cframe:PointToWorldSpace(vertPos * scale))
	end

	for _, attachName in ConstantsInterface.getAttachments(nil, part.Name) do
		local attach
		if getFFlagUGCValidateCalculateScaleToValidateBounds() then
			local isRigAttachment = string.match(attachName, "RigAttachment$") ~= nil
			if not isRigAttachment then
				continue
			end

			attach = part:FindFirstChild(attachName) :: Attachment
			assert(attach)
		else
			attach = part:FindFirstChild(attachName) :: Attachment
			assert(attach)

			local isRigAttachment = string.match(attach.Name, "RigAttachment$") ~= nil
			if not isRigAttachment then
				continue
			end
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
	validationContext: Types.ValidationContext,
	dataCache: Types.DataCache?
): (boolean, { string }?, { string: Types.BoundsData }?)
	local result = {}
	for meshPartName, cframe in partsCFrames do
		local meshPart = findMeshHandle(meshPartName :: string)

		local meshInfo = nil
		if not getFFlagUGCValidateUseDataCache() or not dataCache then
			local success, failureReasons, meshInfoOpt
			if getFFlagUGCValidationConsolidateGetMeshInfos() then
				success, failureReasons, meshInfoOpt =
					getMeshInfo(meshPart, Constants.MESH_CONTENT_TYPE.RENDER_MESH, validationContext)
			else
				success, failureReasons, meshInfoOpt = (getMeshInfo :: any)(meshPart, validationContext)
			end
			if not success then
				return success, failureReasons
			end
			meshInfo = meshInfoOpt :: Types.MeshInfo
		end

		local success, failureReasons, partMinMaxBounds =
			calculateBoundsDataForPart(meshInfo, meshPart, cframe :: CFrame, validationContext, dataCache)
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

	local function findMeshHandle(name: string): MeshPart
		return inst:FindFirstChild(name) :: MeshPart
	end

	orientSingleAssetToWorldAxes(partsCFrames, singleAsset, findMeshHandle)

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

	local function findMeshHandle(name: string): MeshPart
		if singleAsset == Enum.AssetType.DynamicHead then
			return inst :: MeshPart
		end
		return inst:FindFirstChild(name) :: MeshPart
	end

	orientSingleAssetToWorldAxes(partsCFrames, singleAsset, findMeshHandle)

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

-- returns back a table of part names to their bounds data and cframe transform
-- e.g { "LeftUpperArm" = { boundsData = {}, cframe = CFrame.new() }, "LeftLowerArm" = { boundsData = {}, cframe = CFrame.new() }, ... }
function BoundsCalculator.calculateIndividualFullBodyPartsData(
	fullBodyAssets: Types.AllBodyParts,
	validationContext: Types.ValidationContext,
	dataCache: Types.DataCache?
): (boolean, { string }?, { string: any }?)
	local function findMeshHandle(name: string): MeshPart
		return fullBodyAssets[name] :: MeshPart
	end

	local partsCFrames = AssetCalculator.calculateAllTransformsForFullBody(fullBodyAssets)
	orientFullBodyArmsLegsToWorldAxes(partsCFrames, findMeshHandle)

	local success, failureReasons, allPartsBoundsDataOpt =
		calculateAllPartsBoundsData(partsCFrames, findMeshHandle, validationContext, dataCache)
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
