--!strict

--[[
	validateAssetBounds.lua checks the entire asset is not to big or too small
]]

local root = script.Parent.Parent

local Analytics = require(root.Analytics)
local Constants = require(root.Constants)
local ConstantsInterface = require(root.ConstantsInterface)
local prettyPrintVector3 = require(root.util.prettyPrintVector3)
local Types = require(root.util.Types)
local AssetTraversalUtils = require(root.util.AssetTraversalUtils)

local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)

local validateScaleType = require(root.validation.validateScaleType)

local assetHierarchy = AssetTraversalUtils.assetHierarchy

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

local function forEachMeshPart(
	fullBodyAssets: Types.AllBodyParts?,
	inst: Instance?,
	assetTypeEnum: Enum.AssetType?,
	func: (meshHandle: MeshPart) -> boolean
)
	local isSingleInstance = inst and assetTypeEnum
	assert((nil ~= fullBodyAssets) ~= (nil ~= isSingleInstance)) -- one, but not both, should have a value

	if fullBodyAssets then
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
	local isSingleInstance = inst and assetTypeEnum
	assert((nil ~= fullBodyAssets) ~= (nil ~= isSingleInstance)) -- one, but not both, should have a value

	local prevPartScaleType = nil
	local result = forEachMeshPart(fullBodyAssets, inst, assetTypeEnum, function(meshHandle: MeshPart)
		local scaleType: StringValue? = meshHandle:FindFirstChild("AvatarPartScaleType") :: StringValue
		assert(scaleType) -- expected parts have been checked for existance before calling this function

		if not prevPartScaleType then
			prevPartScaleType = scaleType :: StringValue
		else
			return prevPartScaleType.Value == scaleType.Value
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

	local success, reasons = validateScaleType(prevPartScaleType)
	return success, reasons, if success then prevPartScaleType.Value else nil
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
				if not assetTypeEnum
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
				if not assetTypeEnum
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
	local isSingleInstance = inst and assetTypeEnum
	assert((nil ~= fullBodyAssets) ~= (nil ~= isSingleInstance)) -- one, but not both, should have a value

	local minMaxBounds: Types.BoundsData = {}

	if fullBodyAssets then
		AssetTraversalUtils.traverseHierarchy(
			fullBodyAssets,
			nil,
			nil,
			nil,
			CFrame.new(),
			fullBody.root,
			fullBody,
			minMaxBounds,
			validationContext
		)
	elseif Enum.AssetType.DynamicHead == assetTypeEnum :: Enum.AssetType then
		AssetTraversalUtils.calculateBounds(
			assetTypeEnum,
			inst :: MeshPart,
			CFrame.new(),
			minMaxBounds,
			validationContext
		)
	else
		local hierarchy = assetHierarchy[assetTypeEnum :: Enum.AssetType]
		AssetTraversalUtils.traverseHierarchy(
			nil,
			inst :: Folder,
			assetTypeEnum,
			nil,
			CFrame.new(),
			hierarchy.root,
			hierarchy,
			minMaxBounds,
			validationContext
		)
	end

	local success, reasons, scaleType = getScaleType(fullBodyAssets, inst, assetTypeEnum)
	if not success then
		return success, reasons
	end

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	local minSize, maxSize
	if fullBodyAssets then
		minSize, maxSize = ConstantsInterface.calculateFullBodyBounds(scaleType :: string)
	else
		minSize = Constants.ASSET_TYPE_INFO[assetTypeEnum].bounds[scaleType].minSize
		maxSize = Constants.ASSET_TYPE_INFO[assetTypeEnum].bounds[scaleType].maxSize
	end

	reasonsAccumulator:updateReasons(
		validateMinBoundsInternal(
			minMaxBounds.maxMeshCorner :: Vector3 - minMaxBounds.minMeshCorner :: Vector3,
			minSize,
			assetTypeEnum
		)
	)

	reasonsAccumulator:updateReasons(
		validateMaxBoundsInternal(
			minMaxBounds.maxOverall :: Vector3 - minMaxBounds.minOverall :: Vector3,
			maxSize,
			assetTypeEnum
		)
	)

	if validationContext then
		Analytics.recordScriptTime(script.Name, startTime, validationContext :: Types.ValidationContext)
	end

	return reasonsAccumulator:getFinalResults()
end

return validateAssetBounds
