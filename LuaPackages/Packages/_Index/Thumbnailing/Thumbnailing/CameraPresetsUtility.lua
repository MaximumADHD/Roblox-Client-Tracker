--[[
	Preset configurations for camera positions and orientations in thumbnail generation.
]]

local CameraUtility = require(script.Parent.CameraUtility)
local CFrameUtility = require(script.Parent.CFrameUtility)
local CharacterUtility = require(script.Parent.CharacterUtility)
local MannequinUtility = require(script.Parent.MannequinUtility)

local FIntCameraPresetHeadshotExtentScaleHundredths =
	game:DefineFastInt("CameraPresetHeadshotExtentScaleHundredths", 130)

local CameraPresetsUtility = {}
CameraPresetsUtility.GOLDEN_RATIO = game:DefineFastInt("AvatarGoldenRatio", 618) / 1000 -- = 0.618
CameraPresetsUtility.UPVECTOR_ORENTATION_TRESHOLD = game:DefineFastInt("UpVectorOrentationThreshold1", -60) / 100 -- = -0.6
CameraPresetsUtility.AVATAR_ROTATION_DEGREE = game:DefineFastInt("LookAvatarRotationDegree1", 23)

local function getTorsoOrUpperTorso(character): BasePart
	return character:FindFirstChild("Torso") :: BasePart or character:FindFirstChild("UpperTorso") :: BasePart
end

local function getMannequinBodyParts(character: Model, humanoid: Humanoid): { BasePart }
	local bodyParts = {}
	if humanoid.RigType == Enum.HumanoidRigType.R6 then
		for partName, _ in MannequinUtility.CharacterPartNames.R6 do
			-- CharacterMesh doesn't have size
			-- HumanoidRootPart might be off the center of the body parts, it might be invisible but occupy invisible space
			if partName ~= "CharacterMesh" and partName ~= "HumanoidRootPart" then
				table.insert(bodyParts, character:FindFirstChild(partName) :: BasePart)
			end
		end
	elseif humanoid.RigType == Enum.HumanoidRigType.R15 then
		for partName, _ in MannequinUtility.CharacterPartNames.R15 do
			-- HumanoidRootPart might be off the center of the body parts, it might be invisible but occupy invisible space
			if partName ~= "HumanoidRootPart" then
				table.insert(bodyParts, character:FindFirstChild(partName) :: BasePart)
			end
		end
	end
	return bodyParts
end

CameraPresetsUtility.GetCharacterTorsoCFrame = function(character: Model): CFrame
	return getTorsoOrUpperTorso(character).CFrame
end

--[[
  Get the camera cframe for the avatar front facing and camera look at the golden ratio of the avatar body (accessories crop allowed)
  @param character: Model
  @param applyEmote: function
    Due to different usage (Client vs RCC vs viewport) have different way to apply emote, we need to pass in the function to apply the emote
  @param isFallbackEmoteApplied: boolean
  @param fieldOfViewDeg: number? in degrees, by default 56
  @param characterInitialCFrame: CFrame?
    By accepting the character initial CFrame, we give caller the ability to call this method multiple times with the same character but different emotes without breaking the initial pivot
  @return CFrame?
    if returns nil, it means the character does not have a humanoid or error out
  - Design Spec: https://roblox.atlassian.net/wiki/spaces/ECO/pages/2738783097/Design+Spec+Look+-+Avatar+Thumbnailing
  - Tech Spec: https://roblox.atlassian.net/wiki/spaces/ECO/pages/2747236505/Tech+Spec+New+Look+-+Avatar+Thumbnail+tech+spec
--]]
CameraPresetsUtility.GetFullBodyCameraCFrame = function(
	character: Model,
	applyEmote: (() -> ())?,
	isFallbackEmoteApplied: boolean?,
	fieldOfViewDeg: number?,
	characterInitialCFrame: CFrame?
)
	local fovAngle = fieldOfViewDeg or 56
	local characterInitialPivotTo = characterInitialCFrame or CameraPresetsUtility.GetCharacterTorsoCFrame(character)
	local characterInitialLookVector = characterInitialPivotTo.LookVector
	if type(applyEmote) == "function" then
		applyEmote()
	end

	local humanoid = character:FindFirstChildOfClass("Humanoid")
	if not humanoid then
		return
	end
	local bodyParts = getMannequinBodyParts(character, humanoid :: Humanoid)

	--[[
		Pick a auxiliary cframe inside the character to calculate the character's max/min extents of the character.
		Also, the final cframe pivot to, characterGoldenRatioPivotTo, share the same rotation with this auxiliary cframe
		Thus, we pick the cframe of the torso/uppertorso as the auxiliary cframe
	--]]
	local characterPivotToAuxiliaryCFrame = getTorsoOrUpperTorso(character).CFrame :: CFrame
	local characterAuxiliaryUpVector = characterPivotToAuxiliaryCFrame.UpVector

	local characterHeadRotationX, characterHeadRotationY, characterHeadRotationZ
	characterHeadRotationX, characterHeadRotationY, characterHeadRotationZ = (
		character:FindFirstChild("Head") :: BasePart
	).CFrame:ToEulerAnglesXYZ()

	if isFallbackEmoteApplied then
		-- Rotate the character to the right by degrees to meet the default emote head facing
		character:PivotTo(
			characterInitialPivotTo * CFrame.Angles(0, math.rad(CameraPresetsUtility.AVATAR_ROTATION_DEGREE * -1), 0)
		)
	end

	-- Reminder: extents are in the object coordinates, not world coordinates
	local minPartsExtent, maxPartsExtent =
		CharacterUtility.CalculateBodyPartsExtents(characterPivotToAuxiliaryCFrame, bodyParts)

	-- Fov Angle is hard coded to 56 and keep the similiar as the UA avatar scene workspace also considering the camera distance
	local tanAlpha = math.tan(math.rad(fovAngle / 2))

	--[[
		Start: Golden Ratio 0.618
	  		This will change the cframe inside the extents
		  	Use the extent to calculate the golden focus position and adjust the cframe position
  	--]]
	local goldPositionOfExtent = minPartsExtent:Lerp(maxPartsExtent, CameraPresetsUtility.GOLDEN_RATIO)
	local centerPositionOfExtent = minPartsExtent:Lerp(maxPartsExtent, 0.5)
	local goldPosition = Vector3.new(centerPositionOfExtent.X, goldPositionOfExtent.Y, centerPositionOfExtent.Z)

	local goldPositionWorldSpace = characterPivotToAuxiliaryCFrame:PointToWorldSpace(goldPosition)
	local characterGoldenRatioPivotTo = characterPivotToAuxiliaryCFrame
		- characterPivotToAuxiliaryCFrame.Position
		+ goldPositionWorldSpace

	if not isFallbackEmoteApplied then
		local headPivotTo =
			CFrame.fromEulerAnglesXYZ(characterHeadRotationX, characterHeadRotationY, characterHeadRotationZ)
		characterGoldenRatioPivotTo = headPivotTo - headPivotTo.Position + goldPositionWorldSpace
	end

	local distanceToLowerExtents = math.max(goldPosition.X - minPartsExtent.X, goldPosition.Y - minPartsExtent.Y)
	local distanceToUpperExtents = math.max(maxPartsExtent.X - goldPosition.X, maxPartsExtent.Y - goldPosition.Y)

	-- project to x-y plane and calculate the distanceToCamera
	local dc1 = distanceToLowerExtents * CameraUtility.DefaultBodyMarginScale / tanAlpha
	local dc1Option = distanceToUpperExtents * CameraUtility.DefaultBodyMarginScale / tanAlpha
	-- [[End: Golden Ratio 0.618]]

	local distanceToCameraOption = dc1

	-- Because we are using the golden ratio, upside down and upside right will have edge cases that we will crop the top
	local isUpsideDown = characterAuxiliaryUpVector.Y < CameraPresetsUtility.UPVECTOR_ORENTATION_TRESHOLD
	local isUpsideRight = characterAuxiliaryUpVector.X < CameraPresetsUtility.UPVECTOR_ORENTATION_TRESHOLD

	if isUpsideDown or isUpsideRight then
		distanceToCameraOption = math.max(dc1, dc1Option)
	end
	--[[
		-- This comment line give the power to apply range limit auto zoom
		-- dc2 is the camera distance include all accessories
		local minExtentWithAccessories, maxExtentWithAccessories = CharacterUtility.CalculateModelExtents(character, characterPivotToAuxiliaryCFrame)
		local dc2 = math.max(maxExtentWithAccessories.X - minExtentWithAccessories.X, maxExtentWithAccessories.Y - minExtentWithAccessories.Y) * CameraUtility.DefaultBodyMarginScale / 2 / tanAlpha
		local distanceToCamera = math.max(dc1, dc1Option) * math.max(math.min(dc2/math.max(dc1, dc1Option), 1.5), 1.1)
	--]]

	local distanceToCamera = distanceToCameraOption * CameraUtility.DistanceScaleForFullBody

	local relativePositionToCamera = distanceToCamera * characterInitialLookVector
	return CameraUtility.GetCameraCFrame(characterGoldenRatioPivotTo, relativePositionToCamera)
end

-- Legacy function name alias, will be removed in the future. Please use GetFullBodyCameraCFrame instead
CameraPresetsUtility.GetCameraCFrame_ForAvatarR15Action_LookAtGoldenRatioOfTheHumanoid =
	CameraPresetsUtility.GetFullBodyCameraCFrame

function CameraPresetsUtility.GetHeadshotCameraCFrame(
	character: Model,
	applyEmote: (() -> ())?,
	isFallbackEmoteApplied: boolean?,
	fieldOfViewDeg: number?
)
	local fovAngle = fieldOfViewDeg or 30
	if type(applyEmote) == "function" then
		applyEmote()
	end

	if isFallbackEmoteApplied then
		-- Rotate the character to the right by degrees to meet the default emote head facing
		local characterInitialPivotTo = CameraPresetsUtility.GetCharacterTorsoCFrame(character)
		character:PivotTo(
			characterInitialPivotTo * CFrame.Angles(0, math.rad(CameraPresetsUtility.AVATAR_ROTATION_DEGREE * -1), 0)
		)
	end

	local characterHead = character:FindFirstChild("Head") :: BasePart
	if not characterHead then
		error("Character is missing a Head, cannot apply upper body camera preset.")
	end

	-- Focus point is the FaceFrontAttachment if it exists, otherwise the Head's CFrame.
	local targetCFrame = characterHead.CFrame
	local faceFrontAttachment = characterHead:FindFirstChild("FaceFrontAttachment") :: Attachment
	if faceFrontAttachment then
		targetCFrame = faceFrontAttachment.WorldCFrame
	end

	local headTargetCFrame = CFrameUtility.CalculateTargetCFrame(targetCFrame)

	-- Get extents of head, hair, and hats, relative to target cframe.
	local minHeadExtent, maxHeadExtent = CharacterUtility.CalculateHeadExtents(character, headTargetCFrame)

	local camera = CameraUtility.CreateThumbnailCamera()
	local cameraOptions = {
		extentScale = FIntCameraPresetHeadshotExtentScaleHundredths / 100,
		maxExtent = maxHeadExtent,
		minExtent = minHeadExtent,
		optCameraXRot = CameraUtility.XRotForCloseup,
		optFieldOfView = fovAngle,
		targetCFrame = headTargetCFrame,
	}
	CameraUtility.SetupCamera(camera, cameraOptions)
end

return CameraPresetsUtility
