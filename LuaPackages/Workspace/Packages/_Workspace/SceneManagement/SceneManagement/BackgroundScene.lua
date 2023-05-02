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

local function getBackgroundInstance(backgroundModelName: string): Instance?
	local backgroundInstance = workspace:FindFirstChild(backgroundModelName) :: Instance?
	return backgroundInstance
end

local function configureBackground(backgroundInstance: Instance, camera: Camera, backgroundConfigs: BackgroundConfigs)
	local configs = Object.assign({}, defaultBackgroundConfigs, backgroundConfigs)
	local positionOffset = configs.PositionOffset
	local rotationOffset = configs.RotationOffset
	local distanceToCamera = configs.DistanceToCamera

	local cameraPos = camera.CFrame.Position
	local posOffsetToCamera = distanceToCamera * camera.CFrame.LookVector
	local targetPos = cameraPos + posOffsetToCamera + positionOffset

	local targetCFrame = CFrame.new(targetPos)
		* CFrame.Angles(math.rad(rotationOffset.X), math.rad(rotationOffset.Y), math.rad(rotationOffset.Z))

	local instance = backgroundInstance :: PVInstance
	instance:PivotTo(targetCFrame)
end

local function initBackgroundScene(configs: Configs): (Instance, Camera)
	local camera = getOrCreateCamera()
	configureCamera(camera, configs.CameraConfigs)

	local backgroundConfigs = configs.BackgroundConfigs
	local backgroundModelName = backgroundConfigs.BackgroundModelName
	assert(
		ReplicatedStorage:FindFirstChild(backgroundModelName) ~= nil,
		string.format("Background Model %s is missing in ReplicatedStorage.", backgroundModelName)
	)
	local backgroundInstance = ReplicatedStorage:WaitForChild(backgroundModelName) :: Instance
	if backgroundInstance then
		backgroundInstance.Parent = workspace
	end

	configureBackground(backgroundInstance, camera, backgroundConfigs)
	return backgroundInstance, camera
end

local function updateXPosition(backgroundModelName: string, positionX: number)
	local backgroundInstance = getBackgroundInstance(backgroundModelName) :: PVInstance
	if backgroundInstance then
		local pivot = backgroundInstance:GetPivot()
		local position = pivot.Position
		local rotation = pivot - position
		local newPosition = Vector3.new(positionX, position.Y, position.Z)
		local newCframe = CFrame.new(newPosition) * rotation
		backgroundInstance:PivotTo(newCframe)
	else
		warn("Background not initialized.")
	end
end

local function updateZPosition(backgroundModelName: string, positionZ: number)
	local backgroundInstance = getBackgroundInstance(backgroundModelName) :: PVInstance
	if backgroundInstance then
		local pivot = backgroundInstance:GetPivot()
		local position = pivot.Position
		local rotation = pivot - position
		local newPosition = Vector3.new(position.X, position.Y, positionZ)
		local newCframe = CFrame.new(newPosition) * rotation
		backgroundInstance:PivotTo(newCframe)
	else
		warn("Background not initialized.")
	end
end

return {
	initialize = initBackgroundScene,
	getBackgroundInstance = getBackgroundInstance,
	updateXPosition = updateXPosition,
	updateZPosition = updateZPosition,
}
