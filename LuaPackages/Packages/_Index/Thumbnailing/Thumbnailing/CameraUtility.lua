--[[
	Utilities for camera stuff in thumbnailing.
]]
local module = {}

local CFrameUtility = require(script.Parent.CFrameUtility)
local VectorUtility = require(script.Parent.VectorUtility)
local CharacterUtility = require(script.Parent.CharacterUtility)

-- When generating a head thumbnail, how much 'margin' around extent of head + accoutrements?
module.DefaultHeadMarginScale = 1.1
-- When generating a full body thumbnail, how much 'margin' around whole body?
module.DefaultBodyMarginScale = 1.1
-- Amount of margin around a body part in a generated thumbnail
module.DefaultBodyPartMarginScale = 1.2

module.XRotForFullBody = 15.0
module.XRotForCloseup = 0.0
module.DistanceScaleForFullBody = 1.0

-- TODO: AVBURST-13133 Remove module.DefaultHeadMarginScale = 1.1 as camera code concentrates here
local HEAD_MARGIN_SCALE = 1.1
local HEAD_X_ROTATION_RAD = math.rad(15.0)
local HEAD_Y_ROTATION_RAD = math.rad(30.0)

-- The camera cframe to use if the Body Part mannequin should face left/right.
-- First angle is X rotation, second is Y rotation
local FACE_LEFT_CFRAME = CFrame.fromEulerAnglesYXZ(math.rad(-20), math.rad(20), 0)
local FACE_RIGHT_CFRAME = CFrame.fromEulerAnglesYXZ(math.rad(-20), math.rad(-20), 0)

-- FOV for Body Part and Head thumbnails
local HEAD_BODYPART_FIELD_OF_VIEW_DEG = 30

-- Accessory constants
local ACCESSORY_DEFAULT_CFRAME = CFrame.Angles(math.rad(25), math.rad(25), math.rad(0))
local ACCESSORY_FIELD_OF_VIEW_DEG = 20
local ACCESSORY_EXTENT_SCALE = 1.1
-- used if LC item is a left shoe
local LEFT_SHOE_CFRAME = CFrame.Angles(math.rad(0), math.rad(90), math.rad(0))
-- used if LC item is a right shoe
local RIGHT_SHOE_CFRAME = CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0))

export type CameraOptions = {
	optFieldOfView: number?,
	optFieldOfViewForDistanceScale: number?,
	minExtent: Vector3,
	maxExtent: Vector3,
	extentScale: number,
	optCameraDistanceScale: number?,
	targetCFrame: CFrame,
	optCameraXRot: number?,
	optCameraYRot: number?,
}

--[[
	Determine a position by applying targetCFrame to relativePos.
	Return CFrame looking from that pos back towards target.
]]
module.GetCameraCFrame = function(targetCFrame: CFrame, relativePos: Vector3): CFrame
	local cameraPos = targetCFrame * relativePos
	return CFrame.lookAt(cameraPos, targetCFrame.Position)
end

--[[
	Thumbnailer.Click does the following to decide which camera to use:
	1. if the first child of workspace has a child named "ThumbnailCamera", use that, without changes.
	2. otherwise use default system camera, and move that camera to try to contain all
	  the interesting stuff in the scene.
	Call this to get into scenario 1, a camera we control/can edit from lua.
]]
module.CreateThumbnailCamera = function(): Camera
	-- The thumbnailer will look for a child of first child of
	-- workspace called "Thumbnail Camera".  If it finds that, will
	-- use it.
	local camera = Instance.new("Camera")
	camera.Name = "ThumbnailCamera"
	camera.CameraType = Enum.CameraType.Scriptable
	camera.Parent = workspace:GetChildren()[1]
	return camera
end

--[[
	We are given field of view and the extent size of the thing we want to have
	on screen, plus a margin expressed as scale.
	How far back should we position the camera to capture everything?
]]
module.CalculateBaseDistanceToCamera = function(
	fieldOfViewRad: number,
	minExtent: Vector3,
	maxExtent: Vector3,
	marginScale: number
): number
	local offsetFromCenter = math.max((maxExtent.X - minExtent.X) / 2, (maxExtent.Y - minExtent.Y) / 2)
	local t = math.tan(fieldOfViewRad / 2)
	return (offsetFromCenter * marginScale) / t
end

--[[
	Helper function we can use both on RCC and in lua-app, so camera setup is as similar as possible
	between the two.
	Sets camera position, orientation, and field of view.

	Options include:
		Optional:
			optFieldOfView - field of view for the camera.  Defaults to existing camera field of view.
			optFieldOfViewForDistanceScale - field of view to use for distance scale calculation. Separate
				from optFieldOfView because in universal app we are dealing with the "peekaboo" view, where
				the picture we care about is some subrange of complete camera extent.  Defaults to
				camera field of view after applying optFieldOfView.
			optCameraXRot - camera rotation around X axis, defaults to 0.
			optCameraYRot - camera rotation around Y axis, defaults to 0.
			optCameraDistanceScale - scale applied to default camera distance from target, defaults to 1.
		Required:
			targetCFrame - Cframe describing position of the thing we want to view.
			minExtent, maxExtent - extents of thing we want to view.  Relative to targetCFrame.
			extentScale - scale to apply to extents to provide some margin around thing we're looking at.
]]
module.SetupCamera = function(camera: Camera, cameraOptions: CameraOptions)
	if cameraOptions.optFieldOfView then
		camera.FieldOfView = cameraOptions.optFieldOfView
	end

	-- get distance to camera based on extents
	local fieldOfViewForDistanceScale = cameraOptions.optFieldOfViewForDistanceScale or camera.FieldOfView
	local distanceToCamera = module.CalculateBaseDistanceToCamera(
		math.rad(fieldOfViewForDistanceScale),
		cameraOptions.minExtent,
		cameraOptions.maxExtent,
		cameraOptions.extentScale
	)

	if cameraOptions.optCameraDistanceScale then
		distanceToCamera = distanceToCamera * cameraOptions.optCameraDistanceScale
	end

	-- Adjust to account for extent size.
	local finalTargetCFrame = CFrameUtility.AdjustTargetCFrameWithExtents(
		cameraOptions.targetCFrame,
		cameraOptions.minExtent,
		cameraOptions.maxExtent
	)

	local cameraXRotDeg = cameraOptions.optCameraXRot or 0
	local cameraYRotDeg = cameraOptions.optCameraYRot or 0

	local cPos = VectorUtility.Vector3FromXYRotPlusDistance(cameraXRotDeg, cameraYRotDeg, distanceToCamera)
	camera.CFrame = module.GetCameraCFrame(finalTargetCFrame, cPos)
end

--[[
	Sets up a camera meant for BodyPart Thumbnails given
	mannequin: the mannequin Model
	faceRight: whether the mannequin should face right
	focusPartNames: the names of the parts to focus on in the thumbnail
	camera: the Camera to set up
]]
module.SetupBodyPartCamera = function(
	mannequin: Model,
	faceRight: boolean,
	focusPartNames: { [number]: string },
	camera: Camera
)
	local mannequinFocusParts = {}
	if #focusPartNames > 0 then
		for _, focusPartName in pairs(focusPartNames) do
			local focusPart = mannequin:FindFirstChild(focusPartName, --[[recursive = ]] true) :: BasePart
			if focusPart then
				table.insert(mannequinFocusParts, focusPart)
			end
		end
	end
	local humanoidRootPart = mannequin:FindFirstChild("HumanoidRootPart") :: BasePart
	local mannequinTargetCFrame = humanoidRootPart.CFrame
	local adjustment = if faceRight then FACE_RIGHT_CFRAME else FACE_LEFT_CFRAME
	mannequinTargetCFrame = adjustment * mannequinTargetCFrame
	local minPartsExtent, maxPartsExtent =
		CharacterUtility.CalculateBodyPartsExtents(mannequinTargetCFrame, mannequinFocusParts)
	-- Setup Camera with these options
	local cameraOptions = {
		optFieldOfView = HEAD_BODYPART_FIELD_OF_VIEW_DEG,
		targetCFrame = mannequinTargetCFrame,
		minExtent = minPartsExtent,
		maxExtent = maxPartsExtent,
		extentScale = module.DefaultBodyPartMarginScale,
	}
	module.SetupCamera(camera, cameraOptions)
end

--[[
	Sets up a camera to be used in Head Thumbnails given:

	headModel: The head to make a thumbnail of
	camera: the Camera to set up for the thumbnail
]]
module.SetupHeadCamera = function(headModel: Model, camera: Camera)
	local head = headModel:FindFirstChild("Head") :: MeshPart
	-- Figure out the target CFrame: a cframe describing the centroid of the thing we
	-- are looking at.
	-- It's roughly the head CFrame, but the head may be tilted somehow: we
	-- want target CFrame's Up vector to point straight up.  We want a
	-- a CFrame with head CFrame position, and head CFrame "Look" vector
	-- flattened into the X-Z plane.
	local headTargetCFrame = CFrameUtility.CalculateTargetCFrame(head.CFrame)

	-- Turn the head before we calculate extents so we're calculating extents on what the camera is
	-- actually seeing.
	local adjustment = CFrame.fromEulerAnglesYXZ(HEAD_X_ROTATION_RAD, HEAD_Y_ROTATION_RAD, 0)
	headTargetCFrame = adjustment * headTargetCFrame

	-- Get extents of head, hair, and hats, relative to target cframe.
	local minHeadExtent, maxHeadExtent = CharacterUtility.CalculateHeadExtents(headModel, headTargetCFrame)

	-- Setup Camera
	local cameraOptions = {
		optFieldOfView = HEAD_BODYPART_FIELD_OF_VIEW_DEG,
		targetCFrame = headTargetCFrame,
		minExtent = minHeadExtent,
		maxExtent = maxHeadExtent,
		extentScale = HEAD_MARGIN_SCALE,
	}
	module.SetupCamera(camera, cameraOptions)
end

local function isLeftShoe(acc: Instance)
	local handle = acc:FindFirstChildWhichIsA("MeshPart")
	if not handle then
		return false
	end
	assert(handle, "Assert handle is not nil to silence type checker")
	return nil ~= handle:FindFirstChild("LeftFootAttachment")
end

local function isRightShoe(acc: Instance)
	local handle = acc:FindFirstChildWhichIsA("MeshPart")
	if not handle then
		return false
	end
	assert(handle, "Assert handle is not nil to silence type checker")
	return nil ~= handle:FindFirstChild("RightFootAttachment")
end

local function getAccessoryAngle(acc: Instance)
	if isLeftShoe(acc) then
		return LEFT_SHOE_CFRAME
	elseif isRightShoe(acc) then
		return RIGHT_SHOE_CFRAME
	end
	return ACCESSORY_DEFAULT_CFRAME
end

module.SetupAccessoryCamera = function(accessoryModel: Model, camera: Camera)
	local modelChildren = accessoryModel:GetChildren()
	assert(#modelChildren == 1, "Assert SetupMeshPartAccessoryCamera accessoryModel only has accessory as a child.")
	local accoutrement = modelChildren[1] :: Instance
	local handle = accoutrement:FindFirstChild("Handle") :: MeshPart
	assert(handle, "Assert Accessory has handle for camera setup.")
	handle.CFrame = CFrame.new()
	local targetCFrame = handle.CFrame * getAccessoryAngle(accoutrement)

	local minPartsExtent, maxPartsExtent = CharacterUtility.CalculateModelExtents(accessoryModel, targetCFrame)
	-- Setup Camera
	local cameraOptions = {
		optFieldOfView = ACCESSORY_FIELD_OF_VIEW_DEG,
		targetCFrame = targetCFrame,
		minExtent = minPartsExtent,
		maxExtent = maxPartsExtent,
		extentScale = ACCESSORY_EXTENT_SCALE,
	}
	module.SetupCamera(camera, cameraOptions)
end

return module
