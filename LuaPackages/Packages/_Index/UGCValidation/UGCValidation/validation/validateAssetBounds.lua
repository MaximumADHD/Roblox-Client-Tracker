--!strict

--[[
	validateAssetBounds.lua checks the entire asset is not to big or too small
]]

local root = script.Parent.Parent

local getFFlagUGCValidateFullBody = require(root.flags.getFFlagUGCValidateFullBody)
local getFFlagUGCValidateMinBoundsOnlyMesh = require(root.flags.getFFlagUGCValidateMinBoundsOnlyMesh)
local getFFlagUGCValidationRefactorAssetTraversal = require(root.flags.getFFlagUGCValidationRefactorAssetTraversal)
local getFFlagUGCValidateAccessoriesScaleType = require(root.flags.getFFlagUGCValidateAccessoriesScaleType)

local Analytics = require(root.Analytics)
local Constants = require(root.Constants)
local ConstantsInterface = require(root.ConstantsInterface)
local prettyPrintVector3 = require(root.util.prettyPrintVector3)
local calculateMinMax = require(root.util.calculateMinMax)
local Types = require(root.util.Types)
local AssetTraversalUtils = require(root.util.AssetTraversalUtils)

local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)

local validateScaleType = require(root.validation.validateScaleType)

local assetHierarchy

if getFFlagUGCValidationRefactorAssetTraversal() then
	assetHierarchy = AssetTraversalUtils.assetHierarchy
else
	assetHierarchy = {
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
end

local fullBody = {
	root = "LowerTorso",
	children = {
		UpperTorso = {
			children = {
				Head = assetHierarchy[Enum.AssetType.DynamicHead],
				LeftUpperArm = assetHierarchy[Enum.AssetType.LeftArm],
				RightUpperArm = assetHierarchy[Enum.AssetType.RightArm],
			},
		},
		LeftUpperLeg = assetHierarchy[Enum.AssetType.LeftLeg],
		RightUpperLeg = assetHierarchy[Enum.AssetType.RightLeg],
	},
}

local function calculateBounds(
	singleAsset: Enum.AssetType?,
	part: MeshPart,
	cframe: CFrame,
	minMaxBounds: Types.BoundsData
)
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
	fullBodyAssets: Types.AllBodyParts?,
	folder: Folder?,
	singleAsset: Enum.AssetType?,
	parentName: string?,
	parentCFrame: CFrame,
	name: string,
	details: any,
	minMaxBounds: Types.BoundsData
)
	if getFFlagUGCValidateFullBody() then
		local isSingleInstance = folder and singleAsset
		assert((nil ~= fullBodyAssets) ~= (nil ~= isSingleInstance)) -- one, but not both, should have a value
	end

	local meshHandle: MeshPart?
	if getFFlagUGCValidateFullBody() and fullBodyAssets then
		meshHandle = (fullBodyAssets :: Types.AllBodyParts)[name] :: MeshPart
	else
		meshHandle = (folder :: Folder):FindFirstChild(name) :: MeshPart
	end
	assert(meshHandle) -- expected parts have been checked for existance before calling this function

	local cframe = parentCFrame
	if parentName then
		local parentMeshHandle: MeshPart?
		if getFFlagUGCValidateFullBody() and fullBodyAssets then
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
	calculateBounds(singleAsset, meshHandle, cframe, minMaxBounds)

	if details.children then
		for childName, childDetails in details.children do
			traverseHierarchy(fullBodyAssets, folder, singleAsset, name, cframe, childName, childDetails, minMaxBounds)
		end
	end
end

local function forEachMeshPart(
	fullBodyAssets: Types.AllBodyParts?,
	inst: Instance?,
	assetTypeEnum: Enum.AssetType?,
	func: (meshHandle: MeshPart) -> boolean
)
	if getFFlagUGCValidateFullBody() then
		local isSingleInstance = inst and assetTypeEnum
		assert((nil ~= fullBodyAssets) ~= (nil ~= isSingleInstance)) -- one, but not both, should have a value
	end

	if getFFlagUGCValidateFullBody() and fullBodyAssets then
		for _, meshHandle in fullBodyAssets :: Types.AllBodyParts do
			if not func(meshHandle :: MeshPart) then
				return false
			end
		end
	else
		local assetInfo = Constants.ASSET_TYPE_INFO[assetTypeEnum :: Enum.AssetType]
		assert(assetInfo)

		if Enum.AssetType.DynamicHead == assetTypeEnum :: Enum.AssetType then
			return func(inst :: MeshPart)
		else
			for subPartName in pairs(assetInfo.subParts) do
				local meshHandle: MeshPart? = (inst :: Instance):FindFirstChild(subPartName) :: MeshPart
				assert(meshHandle)
				if not func(meshHandle) then
					return false
				end
			end
		end
	end
	return true
end

local function getScaleType(
	fullBodyAssets: Types.AllBodyParts?,
	inst: Instance?,
	assetTypeEnum: Enum.AssetType?
): (boolean, { string }?, string?)
	if getFFlagUGCValidateFullBody() then
		local isSingleInstance = inst and assetTypeEnum
		assert((nil ~= fullBodyAssets) ~= (nil ~= isSingleInstance)) -- one, but not both, should have a value
	end

	local prevPartScaleType = nil
	local result = forEachMeshPart(fullBodyAssets, inst, assetTypeEnum, function(meshHandle: MeshPart)
		local scaleType: StringValue? = meshHandle:FindFirstChild("AvatarPartScaleType") :: StringValue
		assert(scaleType) -- expected parts have been checked for existance before calling this function

		if not prevPartScaleType then
			-- when getFFlagUGCValidateAccessoriesScaleType() is removed true, replace any with StringValue
			prevPartScaleType = (if getFFlagUGCValidateAccessoriesScaleType() then scaleType else scaleType.Value) :: any
		else
			if getFFlagUGCValidateAccessoriesScaleType() then
				return prevPartScaleType.Value == scaleType.Value
			else
				return prevPartScaleType == scaleType.Value
			end
		end
		return true
	end)
	if not result then
		Analytics.reportFailure(Analytics.ErrorType.validateAssetBounds_InconsistentAvatarPartScaleType)
		return false,
			{
				"All MeshParts must have the same value in their AvatarPartScaleType child. Please verify the values match.",
			},
			nil
	end

	if getFFlagUGCValidateAccessoriesScaleType() then
		local success, reasons = validateScaleType(prevPartScaleType)
		return success, reasons, if success then prevPartScaleType.Value else nil
	else
		if not Constants.AvatarPartScaleTypes[prevPartScaleType] then
			Analytics.reportFailure(Analytics.ErrorType.validateAssetBounds_InvalidAvatarPartScaleType :: string)
			return false,
				{
					"The Value of all MeshParts AvatarPartScaleType children must be either Classic, ProportionsSlender, or ProportionsNormal",
				},
				nil
		end
		return true, nil, prevPartScaleType
	end
end

local function validateMinBoundsInternal(
	assetSize: Vector3,
	minSize: Vector3,
	assetTypeEnum: Enum.AssetType?
): (boolean, { string }?)
	local isMeshBigEnough = assetSize.X >= minSize.X and assetSize.Y >= minSize.Y and assetSize.Z >= minSize.Z
	if not isMeshBigEnough then
		Analytics.reportFailure(Analytics.ErrorType.validateAssetBounds_AssetSizeTooSmall)
		return false,
			{
				if getFFlagUGCValidateFullBody() and not assetTypeEnum
					then string.format(
						"Full body size is smaller than the min allowed bounding size of '%s'. You need to scale up or remodel the asset.",
						prettyPrintVector3(minSize)
					)
					else string.format(
						"%s asset size is smaller than the min allowed bounding size of '%s'. You need to scale up or remodel the asset.",
						(assetTypeEnum :: Enum.AssetType).Name,
						prettyPrintVector3(minSize)
					),
			}
	end
	return true
end

local function validateMaxBoundsInternal(
	assetSize: Vector3,
	maxSize: Vector3,
	assetTypeEnum: Enum.AssetType?
): (boolean, { string }?)
	local isMeshSmallEnough = assetSize.X <= maxSize.X and assetSize.Y <= maxSize.Y and assetSize.Z <= maxSize.Z

	if not isMeshSmallEnough then
		Analytics.reportFailure(Analytics.ErrorType.validateAssetBounds_AssetSizeTooBig)
		return false,
			{
				if getFFlagUGCValidateFullBody() and not assetTypeEnum
					then string.format(
						"Full body size is larger than the max allowed bounding size of '%s'. You need to scale down or remodel the asset.",
						prettyPrintVector3(maxSize)
					)
					else string.format(
						"%s asset size is larger than the max allowed bounding size of '%s'. You need to scale down or remodel the asset.",
						(assetTypeEnum :: Enum.AssetType).Name,
						prettyPrintVector3(maxSize)
					),
			}
	end
	return true
end

local function validateAssetBounds(
	fullBodyAssets: Types.AllBodyParts?,
	inst: Instance?,
	validationContext: Types.ValidationContext?
): (boolean, { string }?)
	local startTime = tick()

	local assetTypeEnum = if validationContext then validationContext.assetTypeEnum else nil
	if getFFlagUGCValidateFullBody() then
		local isSingleInstance = inst and assetTypeEnum
		assert((nil ~= fullBodyAssets) ~= (nil ~= isSingleInstance)) -- one, but not both, should have a value
	end

	local minMaxBounds: Types.BoundsData = {}

	if getFFlagUGCValidateFullBody() and fullBodyAssets then
		if getFFlagUGCValidationRefactorAssetTraversal() then
			AssetTraversalUtils.traverseHierarchy(
				fullBodyAssets,
				nil,
				nil,
				nil,
				CFrame.new(),
				fullBody.root,
				fullBody,
				minMaxBounds
			)
		else
			traverseHierarchy(fullBodyAssets, nil, nil, nil, CFrame.new(), fullBody.root, fullBody, minMaxBounds)
		end
	elseif Enum.AssetType.DynamicHead == assetTypeEnum :: Enum.AssetType then
		if getFFlagUGCValidationRefactorAssetTraversal() then
			AssetTraversalUtils.calculateBounds(assetTypeEnum, inst :: MeshPart, CFrame.new(), minMaxBounds)
		else
			calculateBounds(assetTypeEnum, inst :: MeshPart, CFrame.new(), minMaxBounds)
		end
	else
		local hierarchy = assetHierarchy[assetTypeEnum :: Enum.AssetType]
		if getFFlagUGCValidationRefactorAssetTraversal() then
			AssetTraversalUtils.traverseHierarchy(
				nil,
				inst :: Folder,
				assetTypeEnum,
				nil,
				CFrame.new(),
				hierarchy.root,
				hierarchy,
				minMaxBounds
			)
		else
			traverseHierarchy(
				nil,
				inst :: Folder,
				assetTypeEnum,
				nil,
				CFrame.new(),
				hierarchy.root,
				hierarchy,
				minMaxBounds
			)
		end
	end

	local success, reasons, scaleType = getScaleType(fullBodyAssets, inst, assetTypeEnum)
	if not success then
		return success, reasons
	end

	local assetInfo = if not getFFlagUGCValidateFullBody() then Constants.ASSET_TYPE_INFO[assetTypeEnum] else nil
	local reasonsAccumulator = FailureReasonsAccumulator.new()

	local minSize, maxSize
	if getFFlagUGCValidateFullBody() then
		if fullBodyAssets then
			minSize, maxSize = ConstantsInterface.calculateFullBodyBounds(scaleType :: string)
		else
			minSize = Constants.ASSET_TYPE_INFO[assetTypeEnum].bounds[scaleType].minSize
			maxSize = Constants.ASSET_TYPE_INFO[assetTypeEnum].bounds[scaleType].maxSize
		end
	end

	reasonsAccumulator:updateReasons(
		validateMinBoundsInternal(
			if getFFlagUGCValidateMinBoundsOnlyMesh()
				then minMaxBounds.maxMeshCorner :: Vector3 - minMaxBounds.minMeshCorner :: Vector3
				else minMaxBounds.maxOverall :: Vector3 - minMaxBounds.minOverall :: Vector3,
			if getFFlagUGCValidateFullBody() then minSize else assetInfo.bounds[scaleType].minSize,
			assetTypeEnum
		)
	)

	reasonsAccumulator:updateReasons(
		validateMaxBoundsInternal(
			minMaxBounds.maxOverall :: Vector3 - minMaxBounds.minOverall :: Vector3,
			if getFFlagUGCValidateFullBody() then maxSize else assetInfo.bounds[scaleType].maxSize,
			assetTypeEnum
		)
	)

	if validationContext then
		Analytics.recordScriptTime(script.Name, startTime, validationContext :: Types.ValidationContext)
	end

	return reasonsAccumulator:getFinalResults()
end

return validateAssetBounds
