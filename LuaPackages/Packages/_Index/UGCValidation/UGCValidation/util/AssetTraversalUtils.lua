--!strict
--[[
calculateBounds:
	Uses the given minMaxBounds to determine the minMaxBounds after adding a new part (including its attachments)
traverseHierarchy:
	actually traverses through the hierarchy of each subpart of an asset type (or the full body if given) in order to determine the bounds
assetHierarchy:
	defines the hierarchy of assets from top to bottom for each Asset Enum Type i.e. Left Arm == LeftUpperArm -> LeftLowerArm -> LeftHand
]]

local root = script.Parent.Parent
local Types = require(root.util.Types)
local calculateMinMax = require(root.util.calculateMinMax)
local getExpectedPartSize = require(root.util.getExpectedPartSize)
local ConstantsInterface = require(root.ConstantsInterface)

local getEngineFeatureUGCValidateEditableMeshAndImage =
	require(root.flags.getEngineFeatureUGCValidateEditableMeshAndImage)

local AssetTraversalUtils = {}

function AssetTraversalUtils.calculateBounds(
	singleAsset: Enum.AssetType?,
	part: MeshPart,
	cframe: CFrame,
	minMaxBounds: Types.BoundsData,
	validationContext: Types.ValidationContext?
)
	-- this relies on validateMeshIsAtOrigin() in validateDescendantMeshMetrics.lua to catch meshes not built at the origin
	if getEngineFeatureUGCValidateEditableMeshAndImage() and validationContext then
		local partSize = getExpectedPartSize(part, validationContext)
		minMaxBounds.minMeshCorner, minMaxBounds.maxMeshCorner = calculateMinMax(
			minMaxBounds.minMeshCorner,
			minMaxBounds.maxMeshCorner,
			cframe:PointToWorldSpace(-(partSize / 2)),
			cframe:PointToWorldSpace(-(partSize / 2))
		)

		minMaxBounds.minMeshCorner, minMaxBounds.maxMeshCorner = calculateMinMax(
			minMaxBounds.minMeshCorner,
			minMaxBounds.maxMeshCorner,
			cframe:PointToWorldSpace(partSize / 2),
			cframe:PointToWorldSpace(partSize / 2)
		)
	else
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
	end

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
	return
end

function AssetTraversalUtils.traverseHierarchy(
	fullBodyAssets: Types.AllBodyParts?,
	folder: Folder?,
	singleAsset: Enum.AssetType?,
	parentName: string?,
	parentCFrame: CFrame,
	name: string,
	details: any,
	minMaxBounds: Types.BoundsData,
	validationContext: Types.ValidationContext?
)
	local isSingleInstance = folder and singleAsset
	assert((nil ~= fullBodyAssets) ~= (nil ~= isSingleInstance)) -- one, but not both, should have a value

	local meshHandle: MeshPart?
	if fullBodyAssets then
		meshHandle = (fullBodyAssets :: Types.AllBodyParts)[name] :: MeshPart
	else
		meshHandle = (folder :: Folder):FindFirstChild(name) :: MeshPart
	end
	assert(meshHandle) -- expected parts have been checked for existence before calling this function

	local cframe = parentCFrame
	if parentName then
		local parentMeshHandle: MeshPart?
		if fullBodyAssets then
			parentMeshHandle = (fullBodyAssets :: Types.AllBodyParts)[parentName] :: MeshPart
		else
			parentMeshHandle = (folder :: Folder):FindFirstChild(parentName) :: MeshPart
		end
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
	AssetTraversalUtils.calculateBounds(singleAsset, meshHandle, cframe, minMaxBounds, validationContext)

	if details.children then
		for childName, childDetails in details.children do
			AssetTraversalUtils.traverseHierarchy(
				fullBodyAssets,
				folder,
				singleAsset,
				name,
				cframe,
				childName,
				childDetails,
				minMaxBounds,
				validationContext
			)
		end
	end
end

AssetTraversalUtils.assetHierarchy = {
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

return AssetTraversalUtils
