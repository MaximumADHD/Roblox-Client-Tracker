local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Packages = script:FindFirstAncestor("SceneManagement").Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object

export type CameraConfigs = {
	FieldOfView: number,
	Position: Vector3,
}

export type BackgroundConfigs = {
	BackgroundModelName: string,
	PositionOffset: Vector3?,
	RotationOffset: Vector3?,
	DistanceToCamera: number?,
}

export type Configs = {
	CameraConfigs: CameraConfigs?,
	BackgroundConfigs: BackgroundConfigs,
}

local defaultCameraConfigs = {
	FieldOfView = 50,
	Position = Vector3.new(0, 20, 0),
}

local defaultBackgroundConfigs = {
	PositionOffset = Vector3.zero,
	RotationOffset = Vector3.zero,
	DistanceToCamera = 60,
}

local function getOrCreateCamera(): Camera
	local camera = workspace.CurrentCamera :: Camera
	if camera == nil then
		camera = Instance.new("Camera")
		camera.Parent = workspace
	end
	return camera
end

local function configureCamera(camera: Camera, cameraConfigs: CameraConfigs?)
	local configs = Object.assign({}, defaultCameraConfigs, cameraConfigs or {})
	camera.FieldOfView = configs.FieldOfView
	camera.CFrame = CFrame.new(configs.Position)
	camera.CameraType = Enum.CameraType.Fixed
end

local function getOrCreateBackgroundInstance(backgroundModelName: string): Model
	local backgroundInstance = workspace:FindFirstChild(backgroundModelName) :: Model
	if backgroundInstance == nil then
		assert(
			ReplicatedStorage:FindFirstChild(backgroundModelName) ~= nil,
			string.format("Background Model %s is missing in ReplicatedStorage.", backgroundModelName)
		)
		backgroundInstance = ReplicatedStorage:WaitForChild(backgroundModelName) :: Model
	end
	return backgroundInstance
end

local function configureBackground(backgroundInstance: Model, camera: Camera, backgroundConfigs: BackgroundConfigs)
	local configs = Object.assign({}, defaultBackgroundConfigs, backgroundConfigs)
	local positionOffset = configs.PositionOffset
	local rotationOffset = configs.RotationOffset
	local distanceToCamera = configs.DistanceToCamera

	local cameraPos = camera.CFrame.Position
	local posOffsetToCamera = distanceToCamera * camera.CFrame.LookVector
	local targetPos = cameraPos + posOffsetToCamera + positionOffset

	local targetCFrame = CFrame.new(targetPos)
		* CFrame.Angles(math.rad(rotationOffset.X), math.rad(rotationOffset.Y), math.rad(rotationOffset.Z))
	backgroundInstance:PivotTo(targetCFrame)
	backgroundInstance.Parent = workspace
	return backgroundInstance
end

local function initBackgroundScene(configs: Configs): (Instance, Camera)
	local camera = getOrCreateCamera()
	configureCamera(camera, configs.CameraConfigs)

	local backgroundConfigs = configs.BackgroundConfigs
	local backgroundInstance = getOrCreateBackgroundInstance(backgroundConfigs.BackgroundModelName)
	configureBackground(backgroundInstance, camera, backgroundConfigs)
	return backgroundInstance, camera
end

local function updateBackgroundScenePosition(backgroundModelName: string, worldPositionOffset: Vector3)
	local backgroundInstance = getOrCreateBackgroundInstance(backgroundModelName)
	if backgroundInstance then
		local currentPivot = backgroundInstance:GetPivot()
		backgroundInstance:PivotTo(currentPivot + worldPositionOffset)
	end
end

return {
	initialize = initBackgroundScene,
	updateBackgroundScenePosition = updateBackgroundScenePosition,
}
