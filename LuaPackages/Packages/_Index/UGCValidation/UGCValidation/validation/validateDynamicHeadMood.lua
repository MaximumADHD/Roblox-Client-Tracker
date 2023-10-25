--!strict

--[[
	validateDynamicHeadMood.lua checks that when all max values (1) is applied to FACS for DynamicHeads, the animated head is within a certain bounding box expected -i.e. the mesh does not explode. On Studio, this utilizes taking a screen capture of the viewport, while in RCC servers it utilizes the thumbnail generator.
]]

local Players = game:GetService("Players")
local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent
local getEngineFeatureEngineUGCValidateBodyParts = require(root.flags.getEngineFeatureEngineUGCValidateBodyParts)
local getEngineFeatureEngineUGCValidateTextureBorder =
	require(root.flags.getEngineFeatureEngineUGCValidateTextureBorder)
local getEngineFeatureViewportFrameSnapshotEngineFeature =
	require(root.flags.getEngineFeatureViewportFrameSnapshotEngineFeature)
local getFIntDynamicHeadBorderSize = require(root.flags.getFIntDynamicHeadBorderSize)

local DEFAULT_PART_IDS: { [string]: number } = {
	LeftArm = 11714033534,
	LeftLeg = 11714035598,
	RightArm = 11714037276,
	RightLeg = 11714039415,
	Torso = 11714041015,
}

local PARTS: { string } = {
	"Head",
	"Torso",
	"LeftLeg",
	"RightLeg",
	"RightArm",
	"LeftArm",
}

local FACS_POSES: { string } = {
	"ChinRaiser",
	"ChinRaiserUpperLip",
	"Corrugator",
	"EyesLookDown",
	"EyesLookLeft",
	"EyesLookRight",
	"EyesLookUp",
	"FlatPucker",
	"Funneler",
	"JawDrop",
	"JawLeft",
	"JawRight",
	"LeftBrowLowerer",
	"LeftCheekPuff",
	"LeftCheekRaiser",
	"LeftDimpler",
	"LeftEyeClosed",
	"LeftEyeUpperLidRaiser",
	"LeftInnerBrowRaiser",
	"LeftLipCornerDown",
	"LeftLipCornerPuller",
	"LeftLipStretcher",
	"LeftLowerLipDepressor",
	"LeftNoseWrinkler",
	"LeftOuterBrowRaiser",
	"LeftUpperLipRaiser",
	"LipPresser",
	"LipsTogether",
	"LowerLipSuck",
	"MouthLeft",
	"MouthRight",
	"Pucker",
	"RightBrowLowerer",
	"RightCheekPuff",
	"RightCheekRaiser",
	"RightDimpler",
	"RightEyeClosed",
	"RightEyeUpperLidRaiser",
	"RightInnerBrowRaiser",
	"RightLipCornerDown",
	"RightLipCornerPuller",
	"RightLipStretcher",
	"RightLowerLipDepressor",
	"RightNoseWrinkler",
	"RightOuterBrowRaiser",
	"RightUpperLipRaiser",
	"TongueDown",
	"TongueOut",
	"TongueUp",
	"UpperLipSuck",
}

local CAMERA_POSITIONS: { Vector3 } = { Vector3.new(0, 0, -1), Vector3.new(0, 1, 0), Vector3.new(1, 0, 0) }
local DEFAULT_COLOR: Color3 = Color3.fromRGB(163, 162, 165)

local CAMERA_FOV: number = 70
local IMAGE_SIZE: number = 100
assert(IMAGE_SIZE % 4 == 0)
local BORDER: number = getFIntDynamicHeadBorderSize() -- (IMAGE_SIZE / 4) - 1

local function hideNotHead(rig: Model)
	for _, child in rig:GetChildren() do
		if child:IsA("MeshPart") and child.Name ~= "Head" then
			child.Transparency = 1
		end
	end
end

local function swapHead(rig: Model, newHead: MeshPart)
	rig:FindFirstChild("Head"):Destroy()
	newHead.Parent = rig
	local humanoid: Humanoid = rig:FindFirstChild("Humanoid") :: Humanoid
	humanoid:BuildRigFromAttachments()
end

local function applyMaxMood(rig: Model)
	local head: Instance? = rig:FindFirstChild("Head")
	if not head then
		return false
	end
	local faceControls = (head :: Instance):FindFirstChild("FaceControls")
	if not faceControls then
		return false
	end
	for _, pose in FACS_POSES do
		(faceControls :: any)[pose] = 1
	end
	return true
end

local function getDefaultCharacter(): Model?
	local humanoidDescription: HumanoidDescription = Instance.new("HumanoidDescription")
	for _, part in PARTS do
		(humanoidDescription :: any)[part .. "Color"] = DEFAULT_COLOR
	end
	local rig: Model = Players:CreateHumanoidModelFromDescription(humanoidDescription, Enum.HumanoidRigType.R15)
	local humanoid: Humanoid = rig:FindFirstChild("Humanoid") :: Humanoid
	humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None

	local function getObjects(assetType: string, assetId: number): { Instance }?
		-- full production url will work on sitetest
		local assetUrl = "https://assetdelivery.roblox.com/v1/asset/?id="
			.. tostring(assetId)
			.. "&expectedAssetType="
			.. assetType
		return game:GetObjectsAllOrNone(assetUrl)
	end

	local function getInstance(instances: { Instance }, name: string): Instance?
		for _, inst in pairs(instances) do
			if inst.Name == name then
				return inst
			end
		end
		return nil
	end

	for assetType, assetId in DEFAULT_PART_IDS do
		local tableOfFolders = getObjects(assetType, assetId)
		if not tableOfFolders then
			return nil
		end

		local folder = getInstance(tableOfFolders :: { Instance }, "R15ArtistIntent")
		if not folder then
			return nil
		end

		for _, meshPartChild in (folder :: Instance):GetChildren() do
			local surf = meshPartChild:FindFirstChildWhichIsA("SurfaceAppearance")
			if surf then
				-- we don't need the SurfaceAppearance as we will be making all parts except the head transparent
				-- also SurfaceAppearances only allow specification of asset ids, not full url, so a production SurfaceAppearance won't work on sitetest
				surf:Destroy()
			end
			local oldPart = rig:FindFirstChild(meshPartChild.Name)
			if oldPart then
				oldPart:Destroy()
			end
			meshPartChild.Parent = rig
		end
	end

	return rig
end

local function setupViewportFrame()
	local screenGui: ScreenGui = Instance.new("ScreenGui", game:GetService("CoreGui"))
	local vpf: ViewportFrame = Instance.new("ViewportFrame", screenGui)
	vpf.BackgroundTransparency = 1
	vpf.BorderSizePixel = 0
	local worldModel = Instance.new("WorldModel", vpf)
	vpf.Size = UDim2.fromOffset(IMAGE_SIZE, IMAGE_SIZE)

	return screenGui, worldModel, vpf
end

local function setupCamera(rig: Model, direction: Vector3): Camera?
	local headPos: Vector3, headSize: Vector3
	for _, desc in rig:GetDescendants() do
		if desc.Name == "Head" and desc:IsA("MeshPart") then
			headPos = desc.CFrame.Position
			headSize = desc.Size
			break
		end
	end
	if not headPos then
		return nil
	end

	local plane: Vector3 = Vector3.new(1, 1, 1)
		- Vector3.new(math.abs(direction.X), math.abs(direction.Y), math.abs(direction.Z))

	local camera: Camera = Instance.new("Camera")

	local maskedSize: Vector3 = headSize * plane
	local maxDim: number = math.max(maskedSize.X, maskedSize.Y, maskedSize.Z)
	local cameraFov: number = CAMERA_FOV
	local dist: number = maxDim / math.tan(math.rad(CAMERA_FOV / 2))

	camera.CFrame = CFrame.lookAt(headPos + direction * dist + direction * headSize / 2, headPos)
	camera.FieldOfView = cameraFov

	return camera
end

local CAPTURE_ERROR_STRING = "Unable to capture snapshot of DynamicHead (%s)"
local READ_FAILED_ERROR_STRING = "Failed to read data from snapshot of DynamicHead (%s)"
local VALIDATION_FAILED_ERROR_STRING = "DynamicHead (%s) when emoting surpasses the expected bounding box"

-- returns: success/failure, errors, failure reasons
-- if success then there won't be errors or failure reasons
-- if not success then there will be errors or failure reasons, but not both
local function validateOnServer(headId): (boolean, string?, { string }?)
	-- selene: allow(incorrect_standard_library_use)
	local ThumbnailGenerator = game:GetService("ThumbnailGenerator" :: any) :: any
	local img, _ = ThumbnailGenerator:Click("Png", IMAGE_SIZE, IMAGE_SIZE, --[[hideSky = ]] true)

	if not img then
		return false, string.format(CAPTURE_ERROR_STRING, headId)
	end

	local success, passesValidation = pcall(function()
		return UGCValidationService:ValidateTextureAlphaByteString(img, BORDER)
	end)

	if not success then
		return false, string.format(READ_FAILED_ERROR_STRING, headId)
	end

	if not passesValidation then
		return false, nil, { string.format(VALIDATION_FAILED_ERROR_STRING, headId) }
	end
	return true
end

local function validateOnClient(headId, vpf): (boolean, { string }?)
	local captureSuccess, rbxTempId = pcall(function()
		task.wait(1)
		return (vpf :: any):CaptureSnapshotAsync()
	end)
	if not captureSuccess then
		return false, { string.format(CAPTURE_ERROR_STRING, headId) }
	end
	local success, passesValidation = pcall(function()
		return UGCValidationService:ValidateTextureAlpha(rbxTempId, BORDER)
	end)
	if not success then
		return false, { READ_FAILED_ERROR_STRING }
	end
	if not passesValidation then
		return false, {
			string.format(VALIDATION_FAILED_ERROR_STRING, headId),
		}
	end
	return true
end

return function(head: MeshPart, isServer: boolean): (boolean, { string }?)
	if
		not getEngineFeatureEngineUGCValidateBodyParts()
		or not getEngineFeatureEngineUGCValidateTextureBorder()
		or (not isServer and not getEngineFeatureViewportFrameSnapshotEngineFeature())
	then
		return true
	end

	local screenGui, worldModel, vpf
	if not isServer then
		screenGui, worldModel, vpf = setupViewportFrame()
		assert(screenGui, "screenGui is always created")
	end

	local bodyNullable: Model? = getDefaultCharacter()
	if not bodyNullable then
		if screenGui then
			screenGui:Destroy()
		end
		error("couldn't create character")
	end
	local body: Model = bodyNullable :: Model

	if not isServer then
		body.Parent = worldModel
	else
		body.Parent = workspace
	end
	swapHead(body, head:Clone())
	hideNotHead(body)

	local succ = applyMaxMood(body)
	if not succ then
		if screenGui then
			screenGui:Destroy()
		end
		error("could not apply mood")
	end

	for _, dir in CAMERA_POSITIONS do
		local cameraNullable: Camera? = setupCamera(body, dir)
		if not cameraNullable then
			if body then
				body:Destroy()
			end
			if screenGui then
				screenGui:Destroy()
			end
			return false, { string.format("Unable to setup camera for DynamicHead (%s)", head.MeshId) }
		end
		local camera: Camera = cameraNullable :: Camera

		if isServer then
			camera.Name = "ThumbnailCamera"
			camera.Parent = workspace:GetChildren()[1]
		else
			camera.Parent = vpf
			vpf.CurrentCamera = camera
		end

		if isServer then
			local success, errorString, failureReasons = validateOnServer(head.MeshId)
			if not success then
				camera:Destroy()
				body:Destroy()
				if errorString then
					error(errorString)
				else
					assert(failureReasons, "should be failure reasons if validation failed without errors")
					return false, failureReasons
				end
			end
		else
			local passesValidation, errorMsg = validateOnClient(head.MeshId, vpf)
			if not passesValidation then
				screenGui:Destroy()
				return false, errorMsg
			end
		end

		camera:Destroy()
	end

	if not isServer then
		screenGui:Destroy()
	else
		body:Destroy()
	end

	return true
end
