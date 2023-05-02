local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Constants = require(TenFootUiShell.Constants)
local RnConstants = require(TenFootUiShell.ReactNavigationExtend.Views.Constants)
local Packages = TenFootUiShell.Parent
local SceneManagement = require(Packages.SceneManagement)
local Lighting = SceneManagement.Lighting
local BackgroundScene = SceneManagement.BackgroundScene

local backgroundModelName = Constants.BACKGROUND_MODEL_NAME
local backgroundSceneConfigs = {
	BackgroundConfigs = {
		BackgroundModelName = backgroundModelName,
		PositionOffset = Vector3.new(0, 0, 0),
		RotationOffset = Vector3.new(0, 90, 0),
		DistanceToCamera = RnConstants.DEFAULT_BACKGROUND_DISTANCE_TO_CAMERA,
	},
}

local function initialize()
	Lighting.configure()
	return BackgroundScene.initialize(backgroundSceneConfigs)
end

local function getBackgroundInstance(): Instance?
	return BackgroundScene.getBackgroundInstance(backgroundModelName)
end

local function updateXPosition(positionX: number)
	BackgroundScene.updateXPosition(backgroundModelName, positionX)
end

local function updateZPosition(positionZ: number)
	BackgroundScene.updateZPosition(backgroundModelName, positionZ)
end

return {
	initialize = initialize,
	updateXPosition = updateXPosition,
	updateZPosition = updateZPosition,
	getBackgroundInstance = getBackgroundInstance,
}
