--!nocheck
--[[
	using nocheck for now, will change later. That's because the binary used to lint doesn't have the cpp functions

	validateTransparency.lua checks the transparency of each part on a UGC bundle. On Studio, this utilizes taking a screen capture of the viewport, while in RCC servers it utilizes the thumbnail generator.
]]

local root = script.Parent.Parent

local getEngineFeatureEngineUGCValidateTransparency = require(root.flags.getEngineFeatureEngineUGCValidateTransparency)
local getFFlagUGCValidationValidateTransparencyClient =
	require(root.flags.getFFlagUGCValidationValidateTransparencyClient)
local getFFlagUGCValidationValidateTransparencyServer =
	require(root.flags.getFFlagUGCValidationValidateTransparencyServer)
local getEngineFeatureViewportFrameSnapshotEngineFeature =
	require(root.flags.getEngineFeatureViewportFrameSnapshotEngineFeature)

local UGCValidationService = game:GetService("UGCValidationService")
local Types = require(root.util.Types)
local AssetTraversalUtils = require(root.util.AssetTraversalUtils)
local ConstantsInterface = require(root.ConstantsInterface)

local CAMERA_FOV: number = 70
local IMAGE_SIZE: number = 100
local CAMERA_POSITIONS: { Vector3 } = { Vector3.new(0, 0, -1), Vector3.new(0, 0, 1), Vector3.new(1, 0, 0) }
local DEFAULT_BG_COLOR_1: Color3 = Color3.fromRGB(0, 0, 0)
local TRANSPARENT_PART_COLOR: Color3 = Color3.fromRGB(7, 32, 91) --magic number, doesn't really matter

local assetTypeEnumToPartsToValidIDs = {
	[Enum.AssetType.DynamicHead] = {
		[CAMERA_POSITIONS[1]] = 0.32,
		[CAMERA_POSITIONS[2]] = 0.32,
		[CAMERA_POSITIONS[3]] = 0.32,
	},
	[Enum.AssetType.Torso] = {
		[CAMERA_POSITIONS[1]] = 0.50,
		[CAMERA_POSITIONS[2]] = 0.48,
		[CAMERA_POSITIONS[3]] = 0.46,
	},
	[Enum.AssetType.LeftArm] = {
		[CAMERA_POSITIONS[1]] = 0.35,
		[CAMERA_POSITIONS[2]] = 0.33,
		[CAMERA_POSITIONS[3]] = 0.50,
	},
	[Enum.AssetType.RightArm] = {
		[CAMERA_POSITIONS[1]] = 0.35,
		[CAMERA_POSITIONS[2]] = 0.33,
		[CAMERA_POSITIONS[3]] = 0.50,
	},
	[Enum.AssetType.LeftLeg] = {
		[CAMERA_POSITIONS[1]] = 0.50,
		[CAMERA_POSITIONS[2]] = 0.50,
		[CAMERA_POSITIONS[3]] = 0.46,
	},
	[Enum.AssetType.RightLeg] = {
		[CAMERA_POSITIONS[1]] = 0.50,
		[CAMERA_POSITIONS[2]] = 0.50,
		[CAMERA_POSITIONS[3]] = 0.48,
	},
}

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
		error(errorMsg)
		return false, { errorMsg }
	end

	return true
end

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

return function(
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
		instClone = inst :: Folder
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
