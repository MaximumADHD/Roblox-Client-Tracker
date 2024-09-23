--!strict

--[[
	validateDynamicHeadMood.lua checks that when all max values (1) is applied to FACS for DynamicHeads, the animated head is within a certain bounding box expected -i.e. the mesh does not explode. On Studio, this utilizes taking a screen capture of the viewport, while in RCC servers it utilizes the thumbnail generator.
]]

local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent
local getEngineFeatureEngineUGCValidateBodyParts = require(root.flags.getEngineFeatureEngineUGCValidateBodyParts)
local getEngineFeatureEngineUGCValidateTextureBorder =
	require(root.flags.getEngineFeatureEngineUGCValidateTextureBorder)
local getEngineFeatureViewportFrameSnapshotEngineFeature =
	require(root.flags.getEngineFeatureViewportFrameSnapshotEngineFeature)
local getFIntDynamicHeadBorderSize = require(root.flags.getFIntDynamicHeadBorderSize)

local setupDynamicHead = require(root.util.setupDynamicHead)
local Thumbnailer = require(root.util.Thumbnailer)

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

local CAMERA_FOV: number = 70
local IMAGE_SIZE: number = 100
assert(IMAGE_SIZE % 4 == 0)
local BORDER: number = getFIntDynamicHeadBorderSize() -- (IMAGE_SIZE / 4) - 1
local FILL = 0.5

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

local CAPTURE_ERROR_STRING = "Unable to capture snapshot of DynamicHead (%s)"
local READ_FAILED_ERROR_STRING = "Failed to read data from snapshot of DynamicHead (%s)"
local VALIDATION_FAILED_ERROR_STRING = "DynamicHead (%s) when emoting surpasses the expected bounding box"

return function(head: MeshPart, isServer: boolean): (boolean, { string }?)
	if
		not getEngineFeatureEngineUGCValidateBodyParts()
		or not getEngineFeatureEngineUGCValidateTextureBorder()
		or (not isServer and not getEngineFeatureViewportFrameSnapshotEngineFeature())
	then
		return true
	end

	local headClone = head:Clone()
	local bodyNullable: Model? = setupDynamicHead(headClone)
	if not bodyNullable then
		error("couldn't create character")
	end
	local body: Model = bodyNullable :: Model

	local succ = applyMaxMood(body)
	if not succ then
		error("could not apply mood")
	end

	local thumbnailer = Thumbnailer.new(isServer, CAMERA_FOV, Vector2.new(IMAGE_SIZE, IMAGE_SIZE))
	thumbnailer:init(headClone)

	for _, dir in CAMERA_POSITIONS do
		local plane: Vector3 = Vector3.new(1, 1, 1) - Vector3.new(math.abs(dir.X), math.abs(dir.Y), math.abs(dir.Z))

		local maskedSize: Vector3 = headClone.Size * plane
		local maxDim: number = math.max(maskedSize.X, maskedSize.Y, maskedSize.Z)

		thumbnailer:setCamera(FILL, maxDim, dir)

		local captureSuccess, img = thumbnailer:takeSnapshot()

		if not captureSuccess then
			thumbnailer:cleanup()
			local errorMsg = string.format(CAPTURE_ERROR_STRING, head.MeshId)
			if isServer then
				error(errorMsg)
			else
				return false, { errorMsg }
			end
		end

		local success, passesValidation
		if isServer then
			success, passesValidation = pcall(function()
				return UGCValidationService:ValidateTextureAlphaByteString(img :: string, BORDER)
			end)
		else
			success, passesValidation = pcall(function()
				return UGCValidationService:ValidateTextureAlpha(img :: string, BORDER)
			end)
		end

		if not success then
			thumbnailer:cleanup()
			local errorMsg = string.format(READ_FAILED_ERROR_STRING, head.MeshId)
			if isServer then
				error(errorMsg)
			else
				return false, { errorMsg }
			end
		end

		if not passesValidation then
			thumbnailer:cleanup()
			return false, { string.format(VALIDATION_FAILED_ERROR_STRING, head.MeshId) }
		end
	end

	thumbnailer:cleanup()

	return true
end
