--!strict

--[[
	validateAssetBounds.lua checks the entire asset is not to big or too small
]]

local root = script.Parent.Parent

local Constants = require(root.Constants)
local ConstantsInterface = require(root.ConstantsInterface)
local prettyPrintVector3 = require(root.util.prettyPrintVector3)

local calculateMinMax = require(root.util.calculateMinMax)

local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)

local assetHierarchy = {
	[Enum.AssetType.DynamicHead] = {
		root = "Head",
	},
	[Enum.AssetType.Torso] = {
		root = "LowerTorso",
		children = {
			UpperTorso = {},
		},
	},
	[Enum.AssetType.LeftArm] = {
		root = "LeftUpperArm",
		children = {
			LeftLowerArm = {
				children = {
					LeftHand = {},
				},
			},
		},
	},
	[Enum.AssetType.RightArm] = {
		root = "RightUpperArm",
		children = {
			RightLowerArm = {
				children = {
					RightHand = {},
				},
			},
		},
	},
	[Enum.AssetType.LeftLeg] = {
		root = "LeftUpperLeg",
		children = {
			LeftLowerLeg = {
				children = {
					LeftFoot = {},
				},
			},
		},
	},
	[Enum.AssetType.RightLeg] = {
		root = "RightUpperLeg",
		children = {
			RightLowerLeg = {
				children = {
					RightFoot = {},
				},
			},
		},
	},
}

type BoundsData = {
	minMeshCorner: Vector3?,
	maxMeshCorner: Vector3?,

	minRigAttachment: Vector3?,
	maxRigAttachment: Vector3?,

	minOverall: Vector3?,
	maxOverall: Vector3?,
}

local function calculateBounds(singleAsset: Enum.AssetType?, part: MeshPart, cframe: CFrame, minMaxBounds: BoundsData)
	-- this relies on validateMeshIsAtOrigin() in validateDescendantMeshMetrics.lua to catch meshes not built at the origin
	minMaxBounds.minMeshCorner, minMaxBounds.maxMeshCorner = calculateMinMax(
		minMaxBounds.minMeshCorner,
		minMaxBounds.maxMeshCorner,
		cframe:PointToWorldSpace(-(part.Size / 2)),
		cframe:PointToWorldSpace(-(part.Size / 2))
	)

	minMaxBounds.minMeshCorner, minMaxBounds.maxMeshCorner = calculateMinMax(
		minMaxBounds.minMeshCorner,
		minMaxBounds.maxMeshCorner,
		cframe:PointToWorldSpace(part.Size / 2),
		cframe:PointToWorldSpace(part.Size / 2)
	)

	for _, attachName in ConstantsInterface.getAttachments(singleAsset, part.Name) do
		local attach: Attachment? = part:FindFirstChild(attachName) :: Attachment
		assert(attach)

		local isRigAttachment = string.match(attach.Name, "RigAttachment$") ~= nil
		if not isRigAttachment then
			continue
		end
		local world = cframe * attach.CFrame
		minMaxBounds.minRigAttachment, minMaxBounds.maxRigAttachment = calculateMinMax(
			minMaxBounds.minRigAttachment,
			minMaxBounds.maxRigAttachment,
			world.Position,
			world.Position
		)
	end

	minMaxBounds.minOverall, minMaxBounds.maxOverall = calculateMinMax(
		minMaxBounds.minOverall,
		minMaxBounds.maxOverall,
		minMaxBounds.minMeshCorner,
		minMaxBounds.maxMeshCorner
	)

	minMaxBounds.minOverall, minMaxBounds.maxOverall = calculateMinMax(
		minMaxBounds.minOverall,
		minMaxBounds.maxOverall,
		minMaxBounds.minRigAttachment,
		minMaxBounds.maxRigAttachment
	)
end

local function traverseHierarchy(
	folder: Folder,
	singleAsset: Enum.AssetType?,
	parentName: string?,
	parentCFrame: CFrame,
	name: string,
	details: any,
	minMaxBounds: BoundsData
)
	local meshHandle: MeshPart? = folder:FindFirstChild(name) :: MeshPart
	assert(meshHandle) -- expected parts have been checked for existance before calling this function

	local cframe = parentCFrame
	if parentName then
		local parentMeshHandle: MeshPart? = folder:FindFirstChild(parentName) :: MeshPart
		assert(parentMeshHandle)

		local rigAttachmentName = ConstantsInterface.getRigAttachmentToParent(singleAsset, name)
		local parentAttachment: Attachment? = parentMeshHandle:FindFirstChild(rigAttachmentName) :: Attachment
		assert(parentAttachment)
		local attachment: Attachment? = meshHandle:FindFirstChild(rigAttachmentName) :: Attachment
		assert(attachment)

		cframe = (cframe * (parentAttachment :: Attachment).CFrame) * (attachment :: Attachment).CFrame:Inverse()
	else
		cframe = CFrame.new()
	end
	calculateBounds(singleAsset, meshHandle, cframe, minMaxBounds)

	if details.children then
		for childName, childDetails in details.children do
			traverseHierarchy(folder, singleAsset, name, cframe, childName, childDetails, minMaxBounds)
		end
	end
end

local function forEachMeshPart(inst: Instance, assetTypeEnum: Enum.AssetType, func: (meshHandle: MeshPart) -> boolean)
	local assetInfo = Constants.ASSET_TYPE_INFO[assetTypeEnum]
	assert(assetInfo)

	if Enum.AssetType.DynamicHead == assetTypeEnum then
		return func(inst :: MeshPart)
	else
		for subPartName, partData in pairs(assetInfo.subParts) do
			local meshHandle: MeshPart? = (inst:FindFirstChild(subPartName) :: MeshPart)
			assert(meshHandle)
			if not func(meshHandle) then
				return false
			end
		end
	end
	return true
end

local function getScaleType(inst: Instance, assetTypeEnum: Enum.AssetType): (boolean, { string }?, string?)
	local prevPartScaleType = nil
	local result = forEachMeshPart(inst, assetTypeEnum, function(meshHandle: MeshPart)
		local scaleType: StringValue? = meshHandle:FindFirstChild("AvatarPartScaleType") :: StringValue
		assert(scaleType) -- expected parts have been checked for existance before calling this function

		if not prevPartScaleType then
			prevPartScaleType = scaleType.Value
		else
			return prevPartScaleType == scaleType.Value
		end
		return true
	end)
	if not result then
		return false, { "All MeshParts must have the same Value in their AvatarPartScaleType child" }, nil
	end

	if not Constants.AvatarPartScaleTypes[prevPartScaleType] then
		return false,
			{
				"The Value of all MeshParts AvatarPartScaleType children must be either Classic, ProportionsSlender, or ProportionsNormal",
			},
			nil
	end
	return true, nil, prevPartScaleType
end

local function validateMinBoundsInternal(
	assetSize: Vector3,
	minSize: Vector3,
	assetTypeEnum: Enum.AssetType
): (boolean, { string }?)
	local isMeshBigEnough = assetSize.X >= minSize.X and assetSize.Y >= minSize.Y and assetSize.Z >= minSize.Z
	if not isMeshBigEnough then
		return false,
			{
				string.format(
					"Asset size is [%s], which is too small! Min size for %s is [%s]",
					prettyPrintVector3(assetSize),
					assetTypeEnum.Name,
					prettyPrintVector3(minSize)
				),
			}
	end
	return true
end

local function validateMaxBoundsInternal(
	assetSize: Vector3,
	maxSize: Vector3,
	assetTypeEnum: Enum.AssetType
): (boolean, { string }?)
	local isMeshSmallEnough = assetSize.X <= maxSize.X and assetSize.Y <= maxSize.Y and assetSize.Z <= maxSize.Z

	if not isMeshSmallEnough then
		return false,
			{
				string.format(
					"Asset size is [%s], which is too big! Max size for %s is [%s]",
					prettyPrintVector3(assetSize),
					assetTypeEnum.Name,
					prettyPrintVector3(maxSize)
				),
			}
	end
	return true
end

local function validateAssetBounds(
	inst: Instance,
	assetTypeEnum: Enum.AssetType,
	isServer: boolean
): (boolean, { string }?)
	local minMaxBounds: BoundsData = {}

	if Enum.AssetType.DynamicHead == assetTypeEnum then
		calculateBounds(assetTypeEnum, inst :: MeshPart, CFrame.new(), minMaxBounds)
	else
		local hierarchy = assetHierarchy[assetTypeEnum]
		traverseHierarchy(inst :: Folder, assetTypeEnum, nil, CFrame.new(), hierarchy.root, hierarchy, minMaxBounds)
	end

	local success, reasons, scaleType = getScaleType(inst, assetTypeEnum)
	if not success then
		return success, reasons
	end

	local assetInfo = Constants.ASSET_TYPE_INFO[assetTypeEnum]
	assert(assetInfo)

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	if
		not reasonsAccumulator:updateReasons(
			validateMinBoundsInternal(
				minMaxBounds.maxOverall :: Vector3 - minMaxBounds.minOverall :: Vector3,
				assetInfo.bounds[scaleType].minSize,
				assetTypeEnum
			)
		)
	then
		return reasonsAccumulator:getFinalResults()
	end

	if
		not reasonsAccumulator:updateReasons(
			validateMaxBoundsInternal(
				minMaxBounds.maxOverall :: Vector3 - minMaxBounds.minOverall :: Vector3,
				assetInfo.bounds[scaleType].maxSize,
				assetTypeEnum
			)
		)
	then
		return reasonsAccumulator:getFinalResults()
	end

	return reasonsAccumulator:getFinalResults()
end

return validateAssetBounds
