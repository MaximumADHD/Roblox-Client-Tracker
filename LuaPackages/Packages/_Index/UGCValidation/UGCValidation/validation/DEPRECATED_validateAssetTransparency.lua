--[[

	validateTransparency.lua checks the transparency of each part on a UGC bundle. On Studio, this utilizes taking a screen capture of the viewport, while in RCC servers it utilizes the thumbnail generator.
]]

local root = script.Parent.Parent

local getEngineFeatureEngineUGCValidateTransparency = require(root.flags.getEngineFeatureEngineUGCValidateTransparency)
local getEngineFeatureEngineUGCValidationGetImageTransparency =
	require(root.flags.getEngineFeatureEngineUGCValidationGetImageTransparency)
local getEngineFeatureViewportFrameSnapshotEngineFeature =
	require(root.flags.getEngineFeatureViewportFrameSnapshotEngineFeature)
local getFFlagUGCValidationRemoveRotationCheck = require(root.flags.getFFlagUGCValidationRemoveRotationCheck)

local FIntUGCValidationHeadThreshold = game:DefineFastInt("UGCValidationHeadThreshold", 30)
local FIntUGCValidationTorsoThresholdFront = game:DefineFastInt("UGCValidationTorsoThresholdFront", 50)
local FIntUGCValidationTorsoThresholdBack = game:DefineFastInt("UGCValidationTorsoThresholdBack", 48)
local FIntUGCValidationTorsoThresholdSide = game:DefineFastInt("UGCValidationTorsoThresholdSide", 46)
local FIntUGCValidationLeftArmThresholdFront = game:DefineFastInt("UGCValidationLeftArmThresholdFront", 35)
local FIntUGCValidationLeftArmThresholdBack = game:DefineFastInt("UGCValidationLeftArmThresholdBack", 33)
local FIntUGCValidationLeftArmThresholdSide = game:DefineFastInt("UGCValidationLeftArmThresholdSide", 50)
local FIntUGCValidationRightArmThresholdFront = game:DefineFastInt("UGCValidationRightArmThresholdFront", 35)
local FIntUGCValidationRightArmThresholdBack = game:DefineFastInt("UGCValidationRightArmThresholdBack", 33)
local FIntUGCValidationRightArmThresholdSide = game:DefineFastInt("UGCValidationRightArmThresholdSide", 50)
local FIntUGCValidationLeftLegThresholdFront = game:DefineFastInt("UGCValidationLeftLegThresholdFront", 50)
local FIntUGCValidationLeftLegThresholdBack = game:DefineFastInt("UGCValidationLeftLegThresholdBack", 50)
local FIntUGCValidationLeftLegThresholdSide = game:DefineFastInt("UGCValidationLeftLegThresholdSide", 46)
local FIntUGCValidationRightLegThresholdFront = game:DefineFastInt("UGCValidationRightLegThresholdFront", 50)
local FIntUGCValidationRightLegThresholdBack = game:DefineFastInt("UGCValidationRightLegThresholdBack", 50)
local FIntUGCValidationRightLegThresholdSide = game:DefineFastInt("UGCValidationRightLegThresholdSide", 48)

local UGCValidationService = game:GetService("UGCValidationService")

local Constants = require(root.Constants)
local Thumbnailer = require(root.util.Thumbnailer)
local setupTransparentPartSize = require(root.util.setupTransparentPartSize)
local floatEquals = require(root.util.floatEquals)

local CAMERA_FOV: number = 70
local IMAGE_SIZE: number = 100
local CAMERA_POSITIONS: { Vector3 } = { Vector3.new(0, 0, -1), Vector3.new(0, 0, 1), Vector3.new(1, 0, 0) }
local CAMERA_ANGLE_NAMES: { [Vector3]: string } = nil
if getEngineFeatureEngineUGCValidationGetImageTransparency() then
	CAMERA_ANGLE_NAMES = {
		[CAMERA_POSITIONS[1]] = "front",
		[CAMERA_POSITIONS[2]] = "back",
		[CAMERA_POSITIONS[3]] = "side",
	}
end

local assetTypeEnumToPartsToValidIDs = {
	[Enum.AssetType.DynamicHead] = {
		[CAMERA_POSITIONS[1]] = FIntUGCValidationHeadThreshold / 100,
		[CAMERA_POSITIONS[2]] = FIntUGCValidationHeadThreshold / 100,
		[CAMERA_POSITIONS[3]] = FIntUGCValidationHeadThreshold / 100,
	},
	[Enum.AssetType.Torso] = {
		[CAMERA_POSITIONS[1]] = FIntUGCValidationTorsoThresholdFront / 100,
		[CAMERA_POSITIONS[2]] = FIntUGCValidationTorsoThresholdBack / 100,
		[CAMERA_POSITIONS[3]] = FIntUGCValidationTorsoThresholdSide / 100,
	},
	[Enum.AssetType.LeftArm] = {
		[CAMERA_POSITIONS[1]] = FIntUGCValidationLeftArmThresholdFront / 100,
		[CAMERA_POSITIONS[2]] = FIntUGCValidationLeftArmThresholdBack / 100,
		[CAMERA_POSITIONS[3]] = FIntUGCValidationLeftArmThresholdSide / 100,
	},
	[Enum.AssetType.RightArm] = {
		[CAMERA_POSITIONS[1]] = FIntUGCValidationRightArmThresholdFront / 100,
		[CAMERA_POSITIONS[2]] = FIntUGCValidationRightArmThresholdBack / 100,
		[CAMERA_POSITIONS[3]] = FIntUGCValidationRightArmThresholdSide / 100,
	},
	[Enum.AssetType.LeftLeg] = {
		[CAMERA_POSITIONS[1]] = FIntUGCValidationLeftLegThresholdFront / 100,
		[CAMERA_POSITIONS[2]] = FIntUGCValidationLeftLegThresholdBack / 100,
		[CAMERA_POSITIONS[3]] = FIntUGCValidationLeftLegThresholdSide / 100,
	},
	[Enum.AssetType.RightLeg] = {
		[CAMERA_POSITIONS[1]] = FIntUGCValidationRightLegThresholdFront / 100,
		[CAMERA_POSITIONS[2]] = FIntUGCValidationRightLegThresholdBack / 100,
		[CAMERA_POSITIONS[3]] = FIntUGCValidationRightLegThresholdSide / 100,
	},
}

local CAPTURE_ERROR_STRING = "Unable to capture snapshot of %s"
local READ_FAILED_ERROR_STRING = "Failed to read data from snapshot of (%s)"
local VALIDATION_FAILED_ERROR_STRING = "%s is too transparent. Please fill in more of the mesh."
local VALIDATION_FAILED_ERROR_STRING_NEW = nil
if getEngineFeatureEngineUGCValidationGetImageTransparency() then
	VALIDATION_FAILED_ERROR_STRING_NEW =
		"%s is difficult to see from the %s. %d%% of the bounding box is visible, but over %d%% is required. Please expand the body part to fill in more room."
end

local function arePartsRotated(inst: Instance, assetTypeEnum: Enum.AssetType): boolean
	local function isCFrameRotated(cframe: CFrame): boolean
		local x, y, z = cframe:ToOrientation()
		return not floatEquals(x, 0) or not floatEquals(y, 0) or not floatEquals(z, 0)
	end

	local assetInfo = Constants.ASSET_TYPE_INFO[assetTypeEnum]
	assert(assetInfo)

	if Enum.AssetType.DynamicHead == assetTypeEnum then
		if isCFrameRotated((inst :: MeshPart).CFrame) then
			return true
		end
	else
		for subPartName in pairs(assetInfo.subParts) do
			local meshHandle: MeshPart? = inst:FindFirstChild(subPartName) :: MeshPart
			assert(meshHandle)

			if isCFrameRotated((meshHandle :: MeshPart).CFrame) then
				return true
			end
		end
	end
	return false
end

local function flattenParts(
	inst: Instance,
	assetTypeEnum: Enum.AssetType,
	initialSizePositionData: any,
	dir: Vector3,
	center: Vector3
)
	local assetInfo = Constants.ASSET_TYPE_INFO[assetTypeEnum]
	assert(assetInfo)

	local function flattenIndividualPart(meshHandle: MeshPart)
		local initialPos = initialSizePositionData[meshHandle].Position
		local initialSize = initialSizePositionData[meshHandle].Size
		if math.abs(dir.Z) > math.abs(dir.X) then -- if the camera is looking along the Z axis
			meshHandle.Size = Vector3.new(initialSize.X, initialSize.Y, 0.01) -- squash the Z axis so it's orthographic to the camera
			meshHandle.Position = Vector3.new(initialPos.X, initialPos.Y, center.Z) -- put on the center on the z axis
		else
			meshHandle.Size = Vector3.new(0.01, initialSize.Y, initialSize.Z)
			meshHandle.Position = Vector3.new(center.X, initialPos.Y, initialPos.Z)
		end
	end

	if Enum.AssetType.DynamicHead == assetTypeEnum then
		flattenIndividualPart(inst :: MeshPart)
	else
		for subPartName in pairs(assetInfo.subParts) do
			local meshHandle: MeshPart? = inst:FindFirstChild(subPartName) :: MeshPart
			assert(meshHandle)

			flattenIndividualPart(meshHandle :: MeshPart)
		end
	end
end

local function getInitialSizePosition(inst: Instance, assetTypeEnum: Enum.AssetType): any
	local assetInfo = Constants.ASSET_TYPE_INFO[assetTypeEnum]
	assert(assetInfo)

	local results = {}

	if Enum.AssetType.DynamicHead == assetTypeEnum then
		results[inst :: MeshPart] = { Position = (inst :: MeshPart).Position, Size = (inst :: MeshPart).Size }
	else
		for subPartName in pairs(assetInfo.subParts) do
			local meshHandle: MeshPart? = inst:FindFirstChild(subPartName) :: MeshPart
			assert(meshHandle)

			results[meshHandle :: MeshPart] =
				{ Position = (meshHandle :: MeshPart).Position, Size = (meshHandle :: MeshPart).Size }
		end
	end
	return results
end

-- get the smallest possible y, and largest possible x and z, to find the largest possible aspect ratio
local function calculateMaxAspectRatio(assetTypeEnum: Enum.AssetType): number
	local classic = Constants.ASSET_TYPE_INFO[assetTypeEnum].bounds.Classic
	local proportionsSlender = Constants.ASSET_TYPE_INFO[assetTypeEnum].bounds.ProportionsSlender
	local proportionsNormal = Constants.ASSET_TYPE_INFO[assetTypeEnum].bounds.ProportionsNormal

	local minY = math.min(classic.minSize.Y, proportionsSlender.minSize.Y, proportionsNormal.minSize.Y)

	local maxX = math.max(classic.maxSize.X, proportionsSlender.maxSize.X, proportionsNormal.maxSize.X)
	local maxZ = math.max(classic.maxSize.Z, proportionsSlender.maxSize.Z, proportionsNormal.maxSize.Z)

	return math.max(maxX, maxZ) / minY
end

return function(inst: Instance?, assetTypeEnum: Enum.AssetType, isServerNullable: boolean?): (boolean, { string }?)
	if not inst then
		return true
	end

	if not getEngineFeatureEngineUGCValidateTransparency() then
		return true
	end

	local isServer: boolean = if isServerNullable then true else false

	if not isServer and (not getEngineFeatureViewportFrameSnapshotEngineFeature()) then
		return true
	end

	if not getFFlagUGCValidationRemoveRotationCheck() then
		if arePartsRotated(inst :: Instance, assetTypeEnum) then
			return false,
				{
					"Transparency validation failed as some parts are rotated. You must reset all rotation values to zero.",
				}
		end
	end

	local instClone: Instance = (inst :: Instance):Clone()
	local transparentPart: MeshPart = Instance.new("MeshPart") :: MeshPart

	local transparentPartSucc: boolean = setupTransparentPartSize(transparentPart, instClone, assetTypeEnum)
	if not transparentPartSucc then
		return false, { "Error getting part sizes " }
	end

	local thumbnailer = Thumbnailer.new(isServer, CAMERA_FOV, Vector2.new(IMAGE_SIZE, IMAGE_SIZE))

	thumbnailer:init(instClone)
	local initialSizePosition = getInitialSizePosition(instClone, assetTypeEnum)

	for _, dir in CAMERA_POSITIONS do
		-- if the camera is looking along the Z axis, the X axis of the part will be perpendicular to the camera (and vice-versa)
		local imageWidthAxis = if math.abs(dir.Z) > math.abs(dir.X)
			then transparentPart.Size.X
			else transparentPart.Size.Z

		flattenParts(instClone, assetTypeEnum, initialSizePosition, dir, transparentPart.Position)

		local aspectRatio = (imageWidthAxis / transparentPart.Size.Y)
		local maxAspectRatioMultiplier = 10 -- really this could be 1, but we're being conservative
		if aspectRatio > (maxAspectRatioMultiplier * calculateMaxAspectRatio(assetTypeEnum)) then
			thumbnailer:cleanup()
			return false, { "Transparency validation failed as image would be too large to test" }
		end

		local imageWidth = aspectRatio * IMAGE_SIZE

		if imageWidth < 1 then
			thumbnailer:cleanup()
			return false, { "Transparency validation failed as image would be too small to test" }
		end
		thumbnailer:setImgSize(Vector2.new(imageWidth, IMAGE_SIZE))

		local dist: number = (transparentPart.Size.Y / 2) / (math.tan(math.rad(CAMERA_FOV / 2)))
		thumbnailer:setCameraTransform(
			CFrame.lookAt(transparentPart.CFrame.Position + dir * dist, transparentPart.CFrame.Position)
		)

		local captureSuccess, img = thumbnailer:takeSnapshot()

		if not captureSuccess then
			thumbnailer:cleanup()
			local errorMsg = string.format(CAPTURE_ERROR_STRING, assetTypeEnum.Name)
			if isServer then
				error(errorMsg)
			else
				return false, { errorMsg }
			end
		end

		local success, passesValidation, opacityValue
		if getEngineFeatureEngineUGCValidationGetImageTransparency() then
			if isServer then
				success, opacityValue = pcall(function()
					return UGCValidationService:getImageTransparencyWithByteString(img :: string)
				end)
			else
				success, opacityValue = pcall(function()
					return UGCValidationService:getImageTransparencyWithTextureID(img :: string)
				end)
			end

			if success then
				local threshold = assetTypeEnumToPartsToValidIDs[assetTypeEnum][dir]
				passesValidation = opacityValue > threshold
			end
		else
			if isServer then
				success, passesValidation = pcall(function()
					return UGCValidationService:ValidateImageTransparencyThresholdByteString_V2(
						img :: string,
						assetTypeEnumToPartsToValidIDs[assetTypeEnum][dir]
					)
				end)
			else
				success, passesValidation = pcall(function()
					return UGCValidationService:ValidateImageTransparencyThresholdTextureID_V2(
						img :: string,
						assetTypeEnumToPartsToValidIDs[assetTypeEnum][dir]
					)
				end)
			end
		end

		if not success then
			thumbnailer:cleanup()
			local errorMsg = string.format(READ_FAILED_ERROR_STRING, assetTypeEnum.Name)
			if isServer then
				error(errorMsg)
			else
				return false, { errorMsg }
			end
		end

		if not passesValidation then
			thumbnailer:cleanup()
			if getEngineFeatureEngineUGCValidationGetImageTransparency() then
				return false,
					{
						string.format(
							VALIDATION_FAILED_ERROR_STRING_NEW,
							assetTypeEnum.Name,
							CAMERA_ANGLE_NAMES[dir],
							math.floor(opacityValue * 100),
							math.floor(assetTypeEnumToPartsToValidIDs[assetTypeEnum][dir] * 100)
						),
					}
			else
				return false, { string.format(VALIDATION_FAILED_ERROR_STRING, assetTypeEnum.Name) }
			end
		end
	end

	thumbnailer:cleanup()

	return true
end
