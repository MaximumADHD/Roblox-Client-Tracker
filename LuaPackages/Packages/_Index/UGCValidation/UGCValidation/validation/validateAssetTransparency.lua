--[[

	validateTransparency.lua checks the transparency of each part on a UGC bundle. On Studio, this utilizes taking a screen capture of the viewport, while in RCC servers it utilizes the thumbnail generator.
]]

local root = script.Parent.Parent

local getEngineFeatureEngineUGCValidateTransparency = require(root.flags.getEngineFeatureEngineUGCValidateTransparency)
local getEngineFeatureEngineUGCValidationGetImageTransparency =
	require(root.flags.getEngineFeatureEngineUGCValidationGetImageTransparency)
local getFFlagUGCValidationValidateTransparencyClient =
	require(root.flags.getFFlagUGCValidationValidateTransparencyClient)
local getFFlagUGCValidationValidateTransparencyServer =
	require(root.flags.getFFlagUGCValidationValidateTransparencyServer)
local getEngineFeatureViewportFrameSnapshotEngineFeature =
	require(root.flags.getEngineFeatureViewportFrameSnapshotEngineFeature)
local getFFlagUseThumbnailerUtil = require(root.flags.getFFlagUseThumbnailerUtil)
local getEngineFeatureEngineUGCValidateOrthographicTransparency =
	require(root.flags.getEngineFeatureEngineUGCValidateOrthographicTransparency)

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
local Types = require(root.util.Types) -- remove with FFlagUseThumbnailerUtil
local AssetTraversalUtils = require(root.util.AssetTraversalUtils) -- remove with FFlagUseThumbnailerUtil
local ConstantsInterface = require(root.ConstantsInterface) -- remove with FFlagUseThumbnailerUtil
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

local DEFAULT_BG_COLOR_1: Color3 = Color3.fromRGB(0, 0, 0) -- remove with FFlagUseThumbnailerUtil
local TRANSPARENT_PART_COLOR: Color3 = Color3.fromRGB(7, 32, 91) --magic number, doesn't really matter

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

-- remove with FFlagUseThumbnailerUtil
local function setupViewportFrame()
	local screenGui: ScreenGui = Instance.new("ScreenGui", game:GetService("CoreGui"))
	local vpf: ViewportFrame = Instance.new("ViewportFrame", screenGui)
	vpf.BackgroundTransparency = 1
	vpf.BorderSizePixel = 0
	vpf.BackgroundColor3 = DEFAULT_BG_COLOR_1
	local worldModel = Instance.new("WorldModel", vpf)
	vpf.Size = UDim2.fromOffset(IMAGE_SIZE, IMAGE_SIZE)

	return screenGui, worldModel, vpf
end

-- remove with FFlagUseThumbnailerUtil
local function setupCamera(part: MeshPart, direction: Vector3): Camera?
	local partPos: Vector3, partSize: Vector3
	partPos = part.CFrame.Position
	partSize = part.Size
	if not partPos then
		return nil
	end

	local plane: Vector3 = Vector3.new(1, 1, 1)
		- Vector3.new(math.abs(direction.X), math.abs(direction.Y), math.abs(direction.Z))

	local camera: Camera = Instance.new("Camera")

	local maskedSize: Vector3 = partSize * plane
	local maxDim: number = math.max(maskedSize.X, maskedSize.Y, maskedSize.Z)
	local cameraFov: number = CAMERA_FOV
	local dist: number = (maxDim / 1.9) / math.tan(math.rad(CAMERA_FOV / 2)) -- maxDim/2 makes the object's biggest dimension perfectly in position, but we want to allow for a bit of "Fudge" factor
	camera.CFrame = CFrame.lookAt(partPos + direction * dist + direction * partSize / 2, partPos)
	camera.FieldOfView = cameraFov

	return camera
end

local CAPTURE_ERROR_STRING = "Unable to capture snapshot of %s"
local READ_FAILED_ERROR_STRING = "Failed to read data from snapshot of (%s)"
local VALIDATION_FAILED_ERROR_STRING = "%s is too transparent. Please fill in more of the mesh."
local VALIDATION_FAILED_ERROR_STRING_NEW = nil
if getEngineFeatureEngineUGCValidationGetImageTransparency() then
	VALIDATION_FAILED_ERROR_STRING_NEW =
		"%s is difficult to see from the %s. %d%% of the bounding box is visible, but over %d%% is required. Please expand the body part to fill in more room."
end

-- remove with FFlagUseThumbnailerUtil
local function validateOnServer(assetTypeEnum: Enum.AssetType, dir: Vector3): (boolean, { string }?)
	-- selene: allow(incorrect_standard_library_use)
	local ThumbnailGenerator = game:GetService("ThumbnailGenerator" :: any) :: any
	local img, _ = ThumbnailGenerator:Click("Png", IMAGE_SIZE, IMAGE_SIZE, --[[hideSky = ]] true)

	if not img then
		local errorMsg = string.format(CAPTURE_ERROR_STRING, assetTypeEnum.Name)
		error(errorMsg)
		return false, { errorMsg }
	end

	local success, passesValidation = pcall(function()
		return UGCValidationService:ValidateImageTransparencyThresholdByteString(
			img,
			assetTypeEnumToPartsToValidIDs[assetTypeEnum][dir]
		)
	end)

	if not success then
		local errorMsg = string.format(READ_FAILED_ERROR_STRING, assetTypeEnum.Name)
		error(errorMsg)
		return false, { errorMsg }
	end

	if not passesValidation then
		local errorMsg = string.format(VALIDATION_FAILED_ERROR_STRING, assetTypeEnum.Name)
		return false, { errorMsg }
	end

	return true
end

-- remove with FFlagUseThumbnailerUtil
local function validateOnClient(assetTypeEnum: Enum.AssetType, dir: Vector3, vpf): (boolean, { string }?)
	local captureSuccess, rbxTempId = pcall(function()
		task.wait(1)
		return (vpf :: any):CaptureSnapshotAsync()
	end)
	if not captureSuccess then
		return false, { string.format(CAPTURE_ERROR_STRING, assetTypeEnum.Name) }
	end
	local success, passesValidation = pcall(function()
		return UGCValidationService:ValidateImageTransparencyThresholdTextureID(
			rbxTempId,
			assetTypeEnumToPartsToValidIDs[assetTypeEnum][dir]
		)
	end)

	if not success then
		local errorMsg = string.format(READ_FAILED_ERROR_STRING, assetTypeEnum.Name)
		return false, { errorMsg }
	end

	if not passesValidation then
		local errorMsg = string.format(VALIDATION_FAILED_ERROR_STRING, assetTypeEnum.Name)
		return false, { errorMsg }
	end

	return true
end

-- remove with FFlagUseThumbnailerUtil
local function validate_DEPRECATED(
	inst: Instance?,
	assetTypeEnumNullable: Enum.AssetType?,
	isServerNullable: boolean?
): (boolean, { string }?)
	if not inst or not assetTypeEnumNullable or isServerNullable == nil then
		return true
	end

	if not getEngineFeatureEngineUGCValidateTransparency() then
		return true
	end

	local isServer = isServerNullable :: boolean

	if isServer and not getFFlagUGCValidationValidateTransparencyServer() then
		return true
	end

	if
		not isServer
		and (
			not getFFlagUGCValidationValidateTransparencyClient()
			or not getEngineFeatureViewportFrameSnapshotEngineFeature()
		)
	then
		return true
	end

	local instClone: Instance = (inst :: Instance):Clone()
	local assetTypeEnum = assetTypeEnumNullable :: Enum.AssetType

	local screenGui, worldModel, vpf
	if not isServer then
		screenGui, worldModel, vpf = setupViewportFrame()
	end

	local minMaxBounds: Types.BoundsData = {}
	local transparentPart: MeshPart = Instance.new("MeshPart") :: MeshPart
	transparentPart.Parent = isServer and workspace or worldModel
	transparentPart.CanCollide = false
	transparentPart.Transparency = 0.5
	transparentPart.Color = TRANSPARENT_PART_COLOR

	if Enum.AssetType.DynamicHead == assetTypeEnum :: Enum.AssetType then
		AssetTraversalUtils.calculateBounds(assetTypeEnum, instClone :: MeshPart, CFrame.new(), minMaxBounds)
		instClone.Parent = if isServer then workspace else worldModel
		transparentPart.Parent = if isServer then workspace else worldModel
		transparentPart.Position = (instClone :: MeshPart).Position
		transparentPart.Size = (instClone :: MeshPart).Size
	else
		local hierarchy = AssetTraversalUtils.assetHierarchy[assetTypeEnum :: Enum.AssetType]
		AssetTraversalUtils.traverseHierarchy(
			nil,
			instClone :: Folder,
			assetTypeEnum,
			nil,
			CFrame.new(),
			hierarchy.root,
			hierarchy,
			minMaxBounds
		)
		local function moveParts(folder: Folder?, parentName: string?, parentCFrame: CFrame, name: string, details: any)
			local meshHandle = (folder :: Folder):FindFirstChild(name) :: MeshPart
			local cframe = parentCFrame
			if parentName then
				local parentMeshHandle = (folder :: Folder):FindFirstChild(parentName) :: MeshPart
				local rigAttachmentName = ConstantsInterface.getRigAttachmentToParent(assetTypeEnum, name)
				local parentAttachment: Attachment? = parentMeshHandle:FindFirstChild(rigAttachmentName) :: Attachment
				local attachment: Attachment? = meshHandle:FindFirstChild(rigAttachmentName) :: Attachment
				cframe = (cframe * (parentAttachment :: Attachment).CFrame)
					* (attachment :: Attachment).CFrame:Inverse()
			end
			meshHandle.CFrame = cframe
			if details.children then
				for childName, childDetails in details.children do
					moveParts(folder, name, cframe, childName, childDetails)
				end
			end
		end
		instClone.Parent = if isServer then workspace else worldModel
		moveParts(instClone :: Folder, nil, CFrame.new(), hierarchy.root, hierarchy)
		local maxSize: Vector3 = Vector3.new()
		local minSize: Vector3 = Vector3.new()
		maxSize = if minMaxBounds.maxOverall then minMaxBounds.maxOverall else Vector3.new()
		minSize = if minMaxBounds.minOverall then minMaxBounds.minOverall else Vector3.new()
		if minMaxBounds.minOverall == nil or minMaxBounds.maxOverall == nil then
			return false, { "Errored out trying to determine size of asset" }
		end
		transparentPart.Size = Vector3.new(maxSize.X - minSize.X, maxSize.Y - minSize.Y, maxSize.Z - minSize.Z)
		transparentPart.Position = Vector3.new(
			minSize.X + transparentPart.Size.X / 2,
			minSize.Y + transparentPart.Size.Y / 2,
			minSize.Z + transparentPart.Size.Z / 2
		)
	end

	for _, dir in CAMERA_POSITIONS do
		local cameraNullable: Camera? = setupCamera(transparentPart, dir)
		if not cameraNullable then
			if not isServer then
				screenGui:Destroy()
			end
			instClone:Destroy()
			transparentPart:Destroy()
			return false, { string.format("Unable to setup camera for Part (%s)", assetTypeEnum.Name) }
		end
		local camera = cameraNullable :: Camera
		if isServer then
			camera.Name = "ThumbnailCamera"
			camera.Parent = workspace:GetChildren()[1]
		else
			camera.Parent = vpf
			vpf.CurrentCamera = camera
		end
		if isServer then
			local passesValidation, errorMsg = validateOnServer(assetTypeEnum, dir)
			if not passesValidation then
				instClone:Destroy()
				transparentPart:Destroy()
				return false, errorMsg
			end
		else
			local passesValidation, errorMsg = validateOnClient(assetTypeEnum, dir, vpf)
			if not passesValidation then
				screenGui:Destroy()
				instClone:Destroy()
				transparentPart:Destroy()
				return false, errorMsg
			end
		end
		camera:Destroy()
	end
	if not isServer then
		screenGui:Destroy()
	end
	instClone:Destroy()
	transparentPart:Destroy()
	return true
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

local FILL = 0.95
return function(inst: Instance?, assetTypeEnum: Enum.AssetType, isServerNullable: boolean?): (boolean, { string }?)
	if not getFFlagUseThumbnailerUtil() then
		return validate_DEPRECATED(inst, assetTypeEnum, isServerNullable)
	end
	if not inst then
		return true
	end

	if not getEngineFeatureEngineUGCValidateTransparency() then
		return true
	end

	local isServer: boolean = if isServerNullable then true else false

	if isServer and not getFFlagUGCValidationValidateTransparencyServer() then
		return true
	end

	if
		not isServer
		and (
			not getFFlagUGCValidationValidateTransparencyClient()
			or not getEngineFeatureViewportFrameSnapshotEngineFeature()
		)
	then
		return true
	end

	if
		getEngineFeatureEngineUGCValidateOrthographicTransparency()
		and arePartsRotated(inst :: Instance, assetTypeEnum)
	then
		return false,
			{ "Transparency validation failed as some parts are rotated. You must reset all rotation values to zero." }
	end

	local instClone: Instance = (inst :: Instance):Clone()
	local transparentPart: MeshPart = Instance.new("MeshPart") :: MeshPart
	if not getEngineFeatureEngineUGCValidateOrthographicTransparency() then
		transparentPart.CanCollide = false
		transparentPart.Transparency = 0.5
		transparentPart.Color = TRANSPARENT_PART_COLOR
	end

	local transparentPartSucc: boolean = setupTransparentPartSize(transparentPart, instClone, assetTypeEnum)
	if not transparentPartSucc then
		return false, { "Error getting part sizes " }
	end

	local target = nil
	if not getEngineFeatureEngineUGCValidateOrthographicTransparency() then
		target = Instance.new("Folder")
		transparentPart.Parent = target
		instClone.Parent = target
	end

	local thumbnailer = Thumbnailer.new(isServer, CAMERA_FOV, Vector2.new(IMAGE_SIZE, IMAGE_SIZE))

	local initialSizePosition = nil
	if getEngineFeatureEngineUGCValidateOrthographicTransparency() then
		thumbnailer:init(instClone)
		initialSizePosition = getInitialSizePosition(instClone, assetTypeEnum)
	else
		thumbnailer:init(transparentPart)
	end

	for _, dir in CAMERA_POSITIONS do
		local plane: Vector3 = Vector3.new(1, 1, 1) - Vector3.new(math.abs(dir.X), math.abs(dir.Y), math.abs(dir.Z))

		if getEngineFeatureEngineUGCValidateOrthographicTransparency() then
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
		else
			local maskedSize: Vector3 = transparentPart.Size * plane
			local maxDim: number = math.max(maskedSize.X, maskedSize.Y, maskedSize.Z)

			thumbnailer:setCamera(FILL, maxDim, dir)
		end

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
		if getEngineFeatureEngineUGCValidateOrthographicTransparency() then
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
		else
			if isServer then
				success, passesValidation = pcall(function()
					return UGCValidationService:ValidateImageTransparencyThresholdByteString(
						img :: string,
						assetTypeEnumToPartsToValidIDs[assetTypeEnum][dir]
					)
				end)
			else
				success, passesValidation = pcall(function()
					return UGCValidationService:ValidateImageTransparencyThresholdTextureID(
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
