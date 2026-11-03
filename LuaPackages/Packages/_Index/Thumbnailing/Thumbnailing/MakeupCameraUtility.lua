local MakeupCameraUtility = {}

local FIELD_OF_VIEW_DEG = 5
local FRONT_LOOK_VECTOR = Vector3.zAxis
local ANGLED_LOOK_VECTOR = Vector3.new(-0.546780169, -0.0196516365, 0.83704555)

local function makeCameraCFrame(position: Vector3, lookVector: Vector3): CFrame
	return CFrame.lookAt(position, position + lookVector)
end

-- Authored in MakeupEnvironment.rbxl, relative to the standard makeup head at the origin.
local FACE_CAMERA_CFRAME = makeCameraCFrame(Vector3.new(0, 0.0936212987, -15.7558994), FRONT_LOOK_VECTOR)
local CAMERA_CFRAMES_BY_ASSET_TYPE_ID = {
	[76] = makeCameraCFrame(Vector3.new(4.59289265, 0.379174173, -7.37427282), ANGLED_LOOK_VECTOR), -- EyebrowAccessory
	[77] = makeCameraCFrame(Vector3.new(4.59396601, 0.279193401, -7.37591791), ANGLED_LOOK_VECTOR), -- EyelashAccessory
	[88] = FACE_CAMERA_CFRAME, -- FaceMakeup
	[89] = makeCameraCFrame(Vector3.new(0, -0.299141586, -6.41348028), FRONT_LOOK_VECTOR), -- LipMakeup
	[90] = makeCameraCFrame(Vector3.new(0, 0.108529612, -9.3574276), FRONT_LOOK_VECTOR), -- EyeMakeup
}

-- Sets framing relative to the standard makeup head's world CFrame. assetTypeId uses
-- Enum.AvatarAssetType.Value; nil or unsupported IDs use the full-face preset for makeup looks.
-- Presets assume the custom head size used by MakeupEnvironment.rbxl; they do not adapt to head size.
-- Callers using other head sizes are responsible for adjusting the framing after setup.
-- The caller owns the camera, including its parenting and CameraType.
function MakeupCameraUtility.SetupCamera(camera: Camera, headCFrame: CFrame, assetTypeId: number?)
	local cameraCFrame = if assetTypeId then CAMERA_CFRAMES_BY_ASSET_TYPE_ID[assetTypeId] else nil
	camera.CFrame = headCFrame * (cameraCFrame or FACE_CAMERA_CFRAME)
	camera.Focus = headCFrame
	camera.FieldOfView = FIELD_OF_VIEW_DEG
end

return MakeupCameraUtility
