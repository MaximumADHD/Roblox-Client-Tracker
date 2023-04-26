local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Constants = require(TenFootUiShell.Constants)
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
	},
}

local function initialize()
	Lighting.configure()
	return BackgroundScene.initialize(backgroundSceneConfigs)
end

local function updateBackgroundScenePosition(worldPositionOffset: Vector3)
	BackgroundScene.updateBackgroundScenePosition(backgroundModelName, worldPositionOffset)
end

return {
	initialize = initialize,
	updateBackgroundScenePosition = updateBackgroundScenePosition,
}
